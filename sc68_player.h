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
