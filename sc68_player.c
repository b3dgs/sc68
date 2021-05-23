/*
 * Copyright (C) 2013-2021 Byron 3D Games Studio (www.b3dgs.com) Pierre-Alexandre (contact@b3dgs.com)
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <https://www.gnu.org/licenses/>.
 */

#include <sc68/sc68.h>
#include <stdlib.h>
#include <string.h>
#include <portaudio.h>

#include "sc68_player.h"

#define SAMPLE_RATE 48000
#define CHANNELS 2
#define FRAMES 256

static sc68_t *sc68 = NULL;
static PaStream *stream = NULL;
static int played = 0;
static int lastVolume = 100;
static int code = 0;
static int trk_pos = -1;

static int callback(const void *input, void *output, unsigned long frameCount,
		const PaStreamCallbackTimeInfo *timeInfo,
		PaStreamCallbackFlags statusFlags, void *userData)
{
	int n = (int) frameCount;
	if (code & SC68_END)
	{
		return -1;
	}

	code = sc68_process(sc68, output, &n);

	trk_pos = sc68_cntl(sc68, SC68_GET_POS);

	if (lastVolume < 100)
	{
		float vol = lastVolume / 100.0f;
		unsigned int i;
		short *out_ch1_ptr = (short*) output;
		for (i = 0; i < frameCount * CHANNELS; ++i)
		{
			out_ch1_ptr[i] = (short) (out_ch1_ptr[i] * vol);
		}
	}

	return -(code == SC68_ERROR);
}

void sc68Play(const char *file)
{
	sc68Stop();

	if (sc68_init(NULL))
	{
		sc68Stop();
		return;
	}

	sc68 = sc68_create(NULL);
	if (!sc68)
	{
		sc68Stop();
		return;
	}

	if (sc68_load_uri(sc68, file))
	{
		sc68Stop();
		return;
	}

	if (sc68_play(sc68, SC68_DEF_TRACK, SC68_INF_LOOP) != SC68_ERROR)
	{
		/* Update return code (load the track) */
		sc68_process(sc68, 0, 0);

		if (Pa_Initialize() == paNoError)
		{
			if (Pa_OpenDefaultStream(&stream, 0, CHANNELS, paInt16, SAMPLE_RATE,
			FRAMES, callback, 0) == paNoError
					&& Pa_StartStream(stream) == paNoError)
			{
				played = 1;
			}
			else
			{
				sc68Stop();
			}
		}
	}
}

void sc68SetVolume(const int volume)
{
	lastVolume = volume;
	if (lastVolume < 0)
	{
		lastVolume = 0;
	}
	if (lastVolume > 100)
	{
		lastVolume = 100;
	}
}

void sc68Pause()
{
	if (played != 0)
	{
		Pa_StopStream(stream);
	}
}

void sc68Resume()
{
	if (played != 0)
	{
		Pa_StartStream(stream);
	}
}

void sc68Stop()
{
	if (stream != NULL)
	{
		Pa_StopStream(stream);
		Pa_CloseStream(stream);
		Pa_Terminate();
		stream = NULL;
	}
	if (sc68 != NULL)
	{
		sc68_close(sc68);
		sc68_destroy(sc68);
		sc68_shutdown();
		sc68 = NULL;
	}
	played = 0;
}

int sc68Seek()
{
	if (played > 0)
	{
		return trk_pos;
	}
	return -1;
}
