################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../unice68/unice68.c \
../unice68/unice68_native.c 

OBJS += \
./unice68/unice68.o \
./unice68/unice68_native.o 

C_DEPS += \
./unice68/unice68.d \
./unice68/unice68_native.d 


# Each subdirectory must supply rules for building sources it contributes
unice68/%.o: ../unice68/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DHAVE_CONFIG_H -D_GLIBCXX_USE_CXX11_ABI=0 -DPA_USE_ALSA=1 -I"/home/djthunder/eclipse-workspace/sc68/zlib" -I"/home/djthunder/eclipse-workspace/sc68" -I"/home/djthunder/eclipse-workspace/sc68/api68" -I"/home/djthunder/eclipse-workspace/sc68/emu68" -I"/home/djthunder/eclipse-workspace/sc68/file68" -I"/home/djthunder/eclipse-workspace/sc68/io68" -I"/home/djthunder/eclipse-workspace/sc68/unice68" -I"/home/djthunder/eclipse-workspace/sc68/portaudio/src/os/unix" -I"/home/djthunder/eclipse-workspace/sc68/portaudio/include" -I"/home/djthunder/eclipse-workspace/sc68/portaudio/src/common" -O3 -c -fmessage-length=0 -Wno-multichar -Wno-implicit-function-declaration -Wno-aggressive-loop-optimizations -Wno-deprecated-declarations -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


