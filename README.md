# sc68
[![Build Status](https://travis-ci.org/b3dgs/sc68.svg)](https://travis-ci.org/b3dgs/sc68) [![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

SC68 used for emulation routine : https://sourceforge.net/projects/sc68/
* armv7a-linux-androideabi22 : ../../../sc68-svn/sc68/configure --host=armv7a-linux-androideabi22 --without-ao --enable-static --disable-shared PATH=$PATH:/home/XXX/android-ndk-r21e/toolchains/llvm/prebuilt/linux-x86_64/bin CC=armv7a-linux-androideabi22-clang CFLAGS=-fPIC
* x86_64-pc-linux-gnu : ../../../sc68-svn/sc68/configure --without-ao --enable-static --disable-shared CFLAGS=-fPIC
* x86_64-w64-mingw32 : ../../../sc68-svn/sc68/configure --host=x86_64-w64-mingw32 --without-ao --enable-static --disable-shared CFLAGS=-fPIC

PortAudio used for PCM output (WINMM for Windows, ALSA for Linux, OpenSLES for Android) : https://github.com/Gundersanne/portaudio_opensles
* armv7a-linux-androideabi22 : ../../svn/configure --host=armv7a-linux-androideabi22 --disable-shared --enable-static CFLAGS=-fPIC LDFLAGS='-pthread' CC=armv7a-linux-androideabi22-clang
* x86_64-pc-linux-gnu : ../../svn/configure --enable-static --disable-shared CFLAGS=-fPIC
* x86_64-w64-mingw32 : ../../svn/configure --host=x86_64-w64-mingw32 --enable-static --disable-shared CFLAGS=-fPIC