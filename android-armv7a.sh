#!/bin/bash

DIST=armv7a-linux-androideabi22
DST_NAME=sc68
DST_GCC=armv7a-linux-androideabi22-clang
DST_LIBS_DIR=$(pwd)/libs
DST_INCLUDES="-I$DST_LIBS_DIR/portaudio_opensles/portaudio_opensles/include -I$DST_LIBS_DIR/sc68-svn/sc68/file68 -I$DST_LIBS_DIR/sc68-svn/sc68/libsc68"

export TOOLCHAIN=$DST_LIBS_DIR/android-ndk/toolchains/llvm/prebuilt/linux-x86_64/bin
export PATH=$PATH:$TOOLCHAIN
touch $DST_LIBS_DIR/android-ndk/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/arm-linux-androideabi/22/libpthread.a

rm -rf libs/_compiled/$DIST
mkdir -p libs/_compiled/$DIST

cd libs/zlib/_build
rm -rf $DIST
mkdir -p $DIST
cd $DIST
CFLAGS="-O2 -fPIC" CC=$DIST-clang ../../zlib/configure --prefix=$DIST --static
make
cp libz.a ../../../_compiled/$DIST/

cd ../../../sc68-svn/_build
rm -rf $DIST
mkdir -p $DIST
cd $DIST

rm -rf as68
mkdir -p as68
cd as68
../../../sc68/as68/configure --host=$DIST --enable-static --disable-shared CC=$DIST-clang
make
sudo make install
cd ..

../../sc68/configure --host=$DIST --without-ao --without-curl --enable-static --disable-shared CC=$DIST-clang CFLAGS="-O2 -fPIC" LDFLAGS="-L/home/djthunder/sc68/libs/zlib/_build/$DIST/"
make
cp libsc68/.libs/libsc68.a ../../../_compiled/$DIST/
cp file68/.libs/libfile68.a ../../../_compiled/$DIST/
cp unice68/.libs/libunice68.a ../../../_compiled/$DIST/
cd ../../..

rm -rf portaudio_opensles/_build/$DIST
mkdir -p portaudio_opensles/_build/$DIST
cd portaudio_opensles/_build/$DIST
../../portaudio_opensles/configure --host=$DIST --enable-static --disable-shared CC=$DIST-clang CFLAGS="-O2 -fPIC" LDFLAGS='-pthread'
make
cp lib/.libs/libportaudio.a ../../../_compiled/$DIST/

cd ../../../../bin
rm -rf $DIST
mkdir -p $DIST
cd $DIST
$DST_GCC -std=c99 -I$DST_LIBS_DIR/android-ndk/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include $DST_INCLUDES -O2 -fPIC -c ../../$DST_NAME"_player.c"
$DST_GCC -s -L$DST_LIBS_DIR/_compiled/$DIST -shared -o lib$DST_NAME.so $DST_NAME"_player.o" -Wl,-Bstatic -lz -lsc68 -lfile68 -lunice68 -lportaudio -Wl,-Bdynamic -lm -lOpenSLES

cd ../..
mkdir -p output/armeabi-v7a
cp bin/$DIST/libsc68.so output/armeabi-v7a/
