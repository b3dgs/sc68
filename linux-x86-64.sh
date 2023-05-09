#!/bin/bash

DIST=x86_64-pc-linux-gnu
DST_NAME=sc68
DST_GCC=gcc
DST_LIBS_DIR=$(pwd)/libs
DST_INCLUDES="-I$DST_LIBS_DIR/portaudio/portaudio/include -I$DST_LIBS_DIR/sc68-svn/sc68/file68 -I$DST_LIBS_DIR/sc68-svn/sc68/libsc68"

rm -rf libs/_compiled/$DIST
mkdir -p libs/_compiled/$DIST

cd libs/zlib/_build
rm -rf $DIST
mkdir -p $DIST
cd $DIST
CFLAGS="-O2 -fPIC" ../../zlib/configure --prefix=$DIST --static
make
cp libz.a ../../../_compiled/$DIST/

cd ../../../sc68-svn/_build
rm -rf $DIST
mkdir -p $DIST
cd $DIST

rm -rf as68
mkdir -p as68
cd as68
../../../sc68/as68/configure --host=$DIST --enable-static --disable-shared
make
sudo make install
cd ..

../../sc68/configure --host=$DIST --without-ao --without-curl --enable-static --disable-shared CFLAGS="-O2 -fPIC" LDFLAGS="-L/home/djthunder/sc68/libs/zlib/_build/$DIST/"
make
cp libsc68/.libs/libsc68.a ../../../_compiled/$DIST/
cp file68/.libs/libfile68.a ../../../_compiled/$DIST/
cp unice68/.libs/libunice68.a ../../../_compiled/$DIST/
cd ../../..

rm -rf portaudio/_build/$DIST
mkdir -p portaudio/_build/$DIST
cd portaudio/_build/$DIST
../../portaudio/configure --host=$DIST --enable-static --disable-shared --with-alsa --without-jack --without-oss CFLAGS="-O2 -fPIC"
make
cp lib/.libs/libportaudio.a ../../../_compiled/$DIST/

cd ../../../../bin
rm -rf $DIST
mkdir -p $DIST
cd $DIST
$DST_GCC -std=c99 $DST_INCLUDES -O2 -fPIC -c ../../$DST_NAME"_player.c"
$DST_GCC -s -L$DST_LIBS_DIR/_compiled/$DIST -shared -o lib$DST_NAME.so $DST_NAME"_player.o" -Wl,-Bstatic -lz -lsc68 -lfile68 -lunice68 -lportaudio -Wl,-Bdynamic -pthread -lm -lasound -lrt

cd ../..
mkdir -p output/linux-x86-64
cp bin/$DIST/libsc68.so output/linux-x86-64/
