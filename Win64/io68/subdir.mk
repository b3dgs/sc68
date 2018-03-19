################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../io68/mfp_io.c \
../io68/mfpemul.c \
../io68/mw_io.c \
../io68/mwemul.c \
../io68/paula_io.c \
../io68/paulaemul.c \
../io68/shifter_io.c \
../io68/ym_io.c \
../io68/ymemul.c 

OBJS += \
./io68/mfp_io.o \
./io68/mfpemul.o \
./io68/mw_io.o \
./io68/mwemul.o \
./io68/paula_io.o \
./io68/paulaemul.o \
./io68/shifter_io.o \
./io68/ym_io.o \
./io68/ymemul.o 

C_DEPS += \
./io68/mfp_io.d \
./io68/mfpemul.d \
./io68/mw_io.d \
./io68/mwemul.d \
./io68/paula_io.d \
./io68/paulaemul.d \
./io68/shifter_io.d \
./io68/ym_io.d \
./io68/ymemul.d 


# Each subdirectory must supply rules for building sources it contributes
io68/%.o: ../io68/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -m64 -DHAVE_CONFIG_H -DUNDER_CE -DPA_USE_WMME=1 -D_WIN64 -I"$(abspath $(CURDIR)\..\portaudio\include") -I"$(abspath $(CURDIR)\..\api68") -I"$(abspath $(CURDIR)\..\emu68") -I"$(abspath $(CURDIR)\..\file68") -I"$(abspath $(CURDIR)\..\io68") -I"$(abspath $(CURDIR)\..\unice68") -I"$(abspath $(CURDIR)\..\portaudio\src\common") -I"$(abspath $(CURDIR)\..\portaudio\src\hostapi\wasapi\mingw-include") -I"$(abspath $(CURDIR)\..\zlib") -I"$(abspath $(CURDIR)\..") -O3 -c -Wno-multichar -Wno-aggressive-loop-optimizations -Wno-int-to-pointer-cast -Wno-implicit-function-declaration -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


