#include <api68/api68.h>
#include <portaudio.h>
#include <stdlib.h>
#include <string.h>
#include "sc68_player.h"

#define SAMPLE_RATE 44100
#define CHANNELS 2
#define FRAMES 256

static api68_init_t init68;
static api68_t *sc68;
static PaStream *stream;
static int lastVolume = 100;
static int played = 0;
static int interpolation = 0;
static int stereo_join = 0;
static int start = 0;

static int callback(const void *input,
                    void *output,
                    unsigned long frameCount,
                    const PaStreamCallbackTimeInfo* timeInfo,
                    PaStreamCallbackFlags statusFlags,
                    void *userData)
{
    api68_process(sc68, output, frameCount, interpolation, stereo_join);

    if (lastVolume < 100)
    {
        float vol = lastVolume / 100.0f;
        unsigned int i;
        short * out_ch1_ptr = (short*) output;
        for (i = 0; i < frameCount * CHANNELS; ++i)
        {
            out_ch1_ptr[i] = (short) (out_ch1_ptr[i] * vol);
        }
    }
    return 0;
}

void sc68Play(const char *file)
{
    sc68Stop();

    memset(&init68, 0, sizeof(init68));
    init68.alloc = ((void*) malloc);
    init68.free = free;
    sc68 = api68_init(&init68);

    if (sc68 != 0 && api68_load_file(sc68, file) != -1)
    {
        if (start > 0)
        {
            api68_seek(sc68, start);
        }
        if (Pa_Initialize() == paNoError
            && Pa_OpenDefaultStream(&stream, 0, CHANNELS, paInt16, SAMPLE_RATE, FRAMES, callback, 0) == paNoError
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

void sc68SetVolume(int volume)
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

void sc68Config(int interp, int join)
{
    interpolation = interp;
    stereo_join = join;
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
    if (sc68)
    {
        Pa_AbortStream(stream);
        Pa_Terminate();

        api68_close(sc68);
        api68_shutdown(sc68);
        sc68 = NULL;
    }
    played = 0;
}

void sc68SetStart(int time_ms)
{
    start = time_ms;
}

int sc68Seek()
{
    if (played != 0)
    {
        return api68_seek(sc68, -1);
    }
    return -1;
}
