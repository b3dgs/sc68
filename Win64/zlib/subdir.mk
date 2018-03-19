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
	gcc -m64 -DHAVE_CONFIG_H -DUNDER_CE -DPA_USE_WMME=1 -D_WIN64 -I"$(abspath $(CURDIR)\..\portaudio\include") -I"$(abspath $(CURDIR)\..\api68") -I"$(abspath $(CURDIR)\..\emu68") -I"$(abspath $(CURDIR)\..\file68") -I"$(abspath $(CURDIR)\..\io68") -I"$(abspath $(CURDIR)\..\unice68") -I"$(abspath $(CURDIR)\..\portaudio\src\common") -I"$(abspath $(CURDIR)\..\portaudio\src\hostapi\wasapi\mingw-include") -I"$(abspath $(CURDIR)\..\zlib") -I"$(abspath $(CURDIR)\..") -O3 -c -Wno-multichar -Wno-aggressive-loop-optimizations -Wno-int-to-pointer-cast -Wno-implicit-function-declaration -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


