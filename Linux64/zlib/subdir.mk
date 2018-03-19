################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../zlib/adler32.c \
../zlib/compress.c \
../zlib/crc32.c \
../zlib/deflate.c \
../zlib/gzclose.c \
../zlib/gzlib.c \
../zlib/gzread.c \
../zlib/gzwrite.c \
../zlib/infback.c \
../zlib/inffast.c \
../zlib/inflate.c \
../zlib/inftrees.c \
../zlib/trees.c \
../zlib/uncompr.c \
../zlib/zutil.c 

OBJS += \
./zlib/adler32.o \
./zlib/compress.o \
./zlib/crc32.o \
./zlib/deflate.o \
./zlib/gzclose.o \
./zlib/gzlib.o \
./zlib/gzread.o \
./zlib/gzwrite.o \
./zlib/infback.o \
./zlib/inffast.o \
./zlib/inflate.o \
./zlib/inftrees.o \
./zlib/trees.o \
./zlib/uncompr.o \
./zlib/zutil.o 

C_DEPS += \
./zlib/adler32.d \
./zlib/compress.d \
./zlib/crc32.d \
./zlib/deflate.d \
./zlib/gzclose.d \
./zlib/gzlib.d \
./zlib/gzread.d \
./zlib/gzwrite.d \
./zlib/infback.d \
./zlib/inffast.d \
./zlib/inflate.d \
./zlib/inftrees.d \
./zlib/trees.d \
./zlib/uncompr.d \
./zlib/zutil.d 


# Each subdirectory must supply rules for building sources it contributes
zlib/%.o: ../zlib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DHAVE_CONFIG_H -D_GLIBCXX_USE_CXX11_ABI=0 -DPA_USE_ALSA=1 -I"$(abspath $(CURDIR)/../zlib") -I"$(abspath $(CURDIR)/..") -I"$(abspath $(CURDIR)/../api68") -I"$(abspath $(CURDIR)/../emu68") -I"$(abspath $(CURDIR)/../file68") -I"$(abspath $(CURDIR)/../io68") -I"$(abspath $(CURDIR)/../unice68") -I"$(abspath $(CURDIR)/../portaudio/src/os/unix") -I"$(abspath $(CURDIR)/../portaudio/include") -I"$(abspath $(CURDIR)/../portaudio/src/common") -O3 -c -fmessage-length=0 -Wno-multichar -Wno-implicit-function-declaration -Wno-aggressive-loop-optimizations -Wno-deprecated-declarations -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


