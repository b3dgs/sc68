# sc68
[![Build](https://github.com/b3dgs/sc68/actions/workflows/build.yml/badge.svg?branch=master)](https://github.com/b3dgs/sc68/actions/workflows/build.yml) ![Platform](https://img.shields.io/badge/platform-win32%20%7C%20linux%20%7C%20arm%20%7C%20macos-lightgrey) [![Version](https://img.shields.io/badge/version-1.0.0-blue)](https://github.com/b3dgs/sc68/releases/tag/v1.0.0) [![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

## SC68 used for emulation routine : https://sourceforge.net/projects/sc68/
### armv7a-linux-androideabi22
> ../../../sc68-svn/sc68/configure --host=armv7a-linux-androideabi22 --without-ao --enable-static --disable-shared PATH=$PATH:/home/XXX/android-ndk-r21e/toolchains/llvm/prebuilt/linux-x86_64/bin CC=armv7a-linux-androideabi22-clang CFLAGS=-fPIC
### x86_64-pc-linux-gnu
> ../../../sc68-svn/sc68/configure --without-ao --enable-static --disable-shared CFLAGS=-fPIC
### x86_64-w64-mingw32
> ../../../sc68-svn/sc68/configure --host=x86_64-w64-mingw32 --without-ao --enable-static --disable-shared CFLAGS=-fPIC

## PortAudio used for PCM output (WINMM for Windows, ALSA for Linux, OpenSLES for Android) : https://github.com/Gundersanne/portaudio_opensles
### armv7a-linux-androideabi22
> ../../svn/configure --host=armv7a-linux-androideabi22 --disable-shared --enable-static CFLAGS=-fPIC LDFLAGS='-pthread' CC=armv7a-linux-androideabi22-clang
### x86_64-pc-linux-gnu
> ../../svn/configure --enable-static --disable-shared CFLAGS=-fPIC
### x86_64-w64-mingw32
> ../../svn/configure --host=x86_64-w64-mingw32 --enable-static --disable-shared CFLAGS=-fPIC
