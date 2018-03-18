################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include zlib/subdir.mk
-include unice68/subdir.mk
-include portaudio/src/os/unix/subdir.mk
-include portaudio/src/hostapi/alsa/subdir.mk
-include portaudio/src/common/subdir.mk
-include io68/subdir.mk
-include file68/subdir.mk
-include emu68/subdir.mk
-include api68/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: libsc68.so

# Tool invocations
libsc68.so: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GCC C Linker'
	gcc -s -shared -o "libsc68.so" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(LIBRARIES)$(OBJS)$(C_DEPS) libsc68.so
	-@echo ' '

.PHONY: all clean dependents

-include ../makefile.targets
