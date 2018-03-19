################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../file68/alloc68.c \
../file68/debugmsg68.c \
../file68/endian68.c \
../file68/error68.c \
../file68/file68.c \
../file68/gzip68.c \
../file68/ice68.c \
../file68/istream68.c \
../file68/istream68_fd.c \
../file68/istream68_file.c \
../file68/istream68_mem.c \
../file68/rsc68.c \
../file68/string68.c 

OBJS += \
./file68/alloc68.o \
./file68/debugmsg68.o \
./file68/endian68.o \
./file68/error68.o \
./file68/file68.o \
./file68/gzip68.o \
./file68/ice68.o \
./file68/istream68.o \
./file68/istream68_fd.o \
./file68/istream68_file.o \
./file68/istream68_mem.o \
./file68/rsc68.o \
./file68/string68.o 

C_DEPS += \
./file68/alloc68.d \
./file68/debugmsg68.d \
./file68/endian68.d \
./file68/error68.d \
./file68/file68.d \
./file68/gzip68.d \
./file68/ice68.d \
./file68/istream68.d \
./file68/istream68_fd.d \
./file68/istream68_file.d \
./file68/istream68_mem.d \
./file68/rsc68.d \
./file68/string68.d 


# Each subdirectory must supply rules for building sources it contributes
file68/%.o: ../file68/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DHAVE_CONFIG_H -D_GLIBCXX_USE_CXX11_ABI=0 -DPA_USE_ALSA=1 -I"$(abspath $(CURDIR)/../zlib") -I"$(abspath $(CURDIR)/..") -I"$(abspath $(CURDIR)/../api68") -I"$(abspath $(CURDIR)/../emu68") -I"$(abspath $(CURDIR)/../file68") -I"$(abspath $(CURDIR)/../io68") -I"$(abspath $(CURDIR)/../unice68") -I"$(abspath $(CURDIR)/../portaudio/src/os/unix") -I"$(abspath $(CURDIR)/../portaudio/include") -I"$(abspath $(CURDIR)/../portaudio/src/common") -O3 -c -fmessage-length=0 -Wno-multichar -Wno-implicit-function-declaration -Wno-aggressive-loop-optimizations -Wno-deprecated-declarations -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


