################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include zlib/subdir.mk
-include unice68/subdir.mk
-include portaudio/src/os/win/subdir.mk
-include portaudio/src/hostapi/wmme/subdir.mk
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
all: sc68.dll

# Tool invocations
sc68.dll: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MinGW C Linker'
	gcc -m64 -s -static -shared -o "sc68.dll" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(LIBRARIES)$(OBJS)$(C_DEPS) sc68.dll
	-@echo ' '

.PHONY: all clean dependents

-include ../makefile.targets
