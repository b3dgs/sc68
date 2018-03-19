################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sc68_player.c 

OBJS += \
./sc68_player.o 

C_DEPS += \
./sc68_player.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DHAVE_CONFIG_H -D_GLIBCXX_USE_CXX11_ABI=0 -DPA_USE_ALSA=1 -I"$(abspath $(CURDIR)/../zlib)" -I"$(abspath $(CURDIR)/..)" -I"$(abspath $(CURDIR)/../api68)" -I"$(abspath $(CURDIR)/../emu68)" -I"$(abspath $(CURDIR)/../file68)" -I"$(abspath $(CURDIR)/../io68)" -I"$(abspath $(CURDIR)/../unice68)" -I"$(abspath $(CURDIR)/../portaudio/src/os/unix)" -I"$(abspath $(CURDIR)/../portaudio/include)" -I"$(abspath $(CURDIR)/../portaudio/src/common)" -O3 -c -fmessage-length=0 -Wno-multichar -Wno-implicit-function-declaration -Wno-aggressive-loop-optimizations -Wno-deprecated-declarations -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


