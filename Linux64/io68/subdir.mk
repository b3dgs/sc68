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
	gcc -DHAVE_CONFIG_H -D_GLIBCXX_USE_CXX11_ABI=0 -DPA_USE_ALSA=1 -I"/home/djthunder/eclipse-workspace/sc68/zlib" -I"/home/djthunder/eclipse-workspace/sc68" -I"/home/djthunder/eclipse-workspace/sc68/api68" -I"/home/djthunder/eclipse-workspace/sc68/emu68" -I"/home/djthunder/eclipse-workspace/sc68/file68" -I"/home/djthunder/eclipse-workspace/sc68/io68" -I"/home/djthunder/eclipse-workspace/sc68/unice68" -I"/home/djthunder/eclipse-workspace/sc68/portaudio/src/os/unix" -I"/home/djthunder/eclipse-workspace/sc68/portaudio/include" -I"/home/djthunder/eclipse-workspace/sc68/portaudio/src/common" -O3 -c -fmessage-length=0 -Wno-multichar -Wno-implicit-function-declaration -Wno-aggressive-loop-optimizations -Wno-deprecated-declarations -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


