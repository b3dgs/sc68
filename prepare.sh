#!/bin/bash

rm -rf output
rm -rf libs
rm -rf bin

mkdir -p output
mkdir -p libs/_compiled
mkdir -p bin

cd libs

git clone https://github.com/wheybags/glibc_version_header.git

mkdir -p zlib/_build
cd zlib
git clone https://github.com/madler/zlib.git
cd ..

mkdir -p portaudio/_build
cd portaudio
git clone https://github.com/portaudio/portaudio.git
cd ..

mkdir -p portaudio_opensles/_build
cd portaudio_opensles
git clone https://github.com/croissanne/portaudio_opensles.git
cd ..

mkdir -p sc68-svn/_build
cd sc68-svn
svn export http://svn.code.sf.net/p/sc68/code/ sc68
cd sc68
./tools/svn-bootstrap.sh
