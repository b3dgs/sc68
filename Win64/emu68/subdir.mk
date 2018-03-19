################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../emu68/cc68.c \
../emu68/emu68.c \
../emu68/error68.c \
../emu68/getea68.c \
../emu68/inst68.c \
../emu68/ioplug68.c \
../emu68/line0_68.c \
../emu68/line1_68.c \
../emu68/line2_68.c \
../emu68/line3_68.c \
../emu68/line4_68.c \
../emu68/line5_68.c \
../emu68/line6_68.c \
../emu68/line7_68.c \
../emu68/line8_68.c \
../emu68/line9_68.c \
../emu68/lineA_68.c \
../emu68/lineB_68.c \
../emu68/lineC_68.c \
../emu68/lineD_68.c \
../emu68/lineE_68.c \
../emu68/lineF_68.c \
../emu68/mem68.c \
../emu68/table68.c 

OBJS += \
./emu68/cc68.o \
./emu68/emu68.o \
./emu68/error68.o \
./emu68/getea68.o \
./emu68/inst68.o \
./emu68/ioplug68.o \
./emu68/line0_68.o \
./emu68/line1_68.o \
./emu68/line2_68.o \
./emu68/line3_68.o \
./emu68/line4_68.o \
./emu68/line5_68.o \
./emu68/line6_68.o \
./emu68/line7_68.o \
./emu68/line8_68.o \
./emu68/line9_68.o \
./emu68/lineA_68.o \
./emu68/lineB_68.o \
./emu68/lineC_68.o \
./emu68/lineD_68.o \
./emu68/lineE_68.o \
./emu68/lineF_68.o \
./emu68/mem68.o \
./emu68/table68.o 

C_DEPS += \
./emu68/cc68.d \
./emu68/emu68.d \
./emu68/error68.d \
./emu68/getea68.d \
./emu68/inst68.d \
./emu68/ioplug68.d \
./emu68/line0_68.d \
./emu68/line1_68.d \
./emu68/line2_68.d \
./emu68/line3_68.d \
./emu68/line4_68.d \
./emu68/line5_68.d \
./emu68/line6_68.d \
./emu68/line7_68.d \
./emu68/line8_68.d \
./emu68/line9_68.d \
./emu68/lineA_68.d \
./emu68/lineB_68.d \
./emu68/lineC_68.d \
./emu68/lineD_68.d \
./emu68/lineE_68.d \
./emu68/lineF_68.d \
./emu68/mem68.d \
./emu68/table68.d 


# Each subdirectory must supply rules for building sources it contributes
emu68/%.o: ../emu68/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -m64 -DHAVE_CONFIG_H -DUNDER_CE -DPA_USE_WMME=1 -D_WIN64 -I"$(abspath $(CURDIR)\..\portaudio\include") -I"$(abspath $(CURDIR)\..\api68") -I"$(abspath $(CURDIR)\..\emu68") -I"$(abspath $(CURDIR)\..\file68") -I"$(abspath $(CURDIR)\..\io68") -I"$(abspath $(CURDIR)\..\unice68") -I"$(abspath $(CURDIR)\..\portaudio\src\common") -I"$(abspath $(CURDIR)\..\portaudio\src\hostapi\wasapi\mingw-include") -I"$(abspath $(CURDIR)\..\zlib") -I"$(abspath $(CURDIR)\..") -O3 -c -Wno-multichar -Wno-aggressive-loop-optimizations -Wno-int-to-pointer-cast -Wno-implicit-function-declaration -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


