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
	gcc -DHAVE_CONFIG_H -D_GLIBCXX_USE_CXX11_ABI=0 -DPA_USE_ALSA=1 -I"$(abspath $(CURDIR)/../zlib") -I"$(abspath $(CURDIR)/..") -I"$(abspath $(CURDIR)/../api68") -I"$(abspath $(CURDIR)/../emu68") -I"$(abspath $(CURDIR)/../file68") -I"$(abspath $(CURDIR)/../io68") -I"$(abspath $(CURDIR)/../unice68") -I"$(abspath $(CURDIR)/../portaudio/src/os/unix") -I"$(abspath $(CURDIR)/../portaudio/include") -I"$(abspath $(CURDIR)/../portaudio/src/common") -O3 -c -fmessage-length=0 -Wno-multichar -Wno-implicit-function-declaration -Wno-aggressive-loop-optimizations -Wno-deprecated-declarations -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


