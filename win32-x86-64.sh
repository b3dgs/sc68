#!/bin/bash

DIST=x86_64-w64-mingw32
DST_NAME=sc68
DST_GCC=x86_64-w64-mingw32-gcc
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
../../portaudio/configure --host=$DIST --enable-static --disable-shared --disable-external-libs CFLAGS="-O2 -fPIC"
make
cp lib/.libs/libportaudio.a ../../../_compiled/$DIST/

cd ../../../../bin
rm -rf $DIST
mkdir -p $DIST
cd $DIST
$DST_GCC -std=c99 -D_WIN64 $DST_INCLUDES -O2 -fPIC -c ../../$DST_NAME"_player.c"
$DST_GCC -s -L$DST_LIBS_DIR/_compiled/$DIST -shared -static-libgcc -o $DST_NAME.dll $DST_NAME"_player.o" -Wl,-Bstatic -lz -lsc68 -lfile68 -lunice68 -lportaudio -Wl,-Bdynamic -lwinmm

cd ../..
mkdir -p output/win32-x86-64
cp bin/$DIST/sc68.dll output/win32-x86-64/
