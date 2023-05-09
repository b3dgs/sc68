/*
 * Copyright (C) 2013-2023 Byron 3D Games Studio (www.b3dgs.com) Pierre-Alexandre (contact@b3dgs.com)
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

#ifndef SC68_PLAYER_H_
#define SC68_PLAYER_H_

#ifdef _WIN64
#define ADDAPI __declspec(dllexport)
#define ADDCALL __cdecl
#else
#define ADDAPI
#define ADDCALL
#endif

ADDAPI void ADDCALL sc68Play(const char *file);
ADDAPI void ADDCALL sc68SetVolume(const int volume);
ADDAPI void ADDCALL sc68Pause();
ADDAPI void ADDCALL sc68Resume();
ADDAPI void ADDCALL sc68Stop();
ADDAPI int ADDCALL sc68Seek();

#endif /* SC68_PLAYER_H_ */
