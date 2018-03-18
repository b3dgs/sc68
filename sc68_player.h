#ifndef SC68_PLAYER_H_
#define SC68_PLAYER_H_

void sc68Play(const char *filename);
void sc68SetVolume(int volume);
void sc68Config(int interpolation, int stereo_join);
void sc68Pause();
void sc68Resume();
void sc68Stop();
void sc68SetStart(int time_ms);
int sc68Seek();

#endif /* SC68_PLAYER_H_ */
