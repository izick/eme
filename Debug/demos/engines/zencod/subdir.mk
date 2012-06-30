################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demos/engines/zencod/hw_zencod.c \
../demos/engines/zencod/hw_zencod_err.c 

OBJS += \
./demos/engines/zencod/hw_zencod.o \
./demos/engines/zencod/hw_zencod_err.o 

C_DEPS += \
./demos/engines/zencod/hw_zencod.d \
./demos/engines/zencod/hw_zencod_err.d 


# Each subdirectory must supply rules for building sources it contributes
demos/engines/zencod/%.o: ../demos/engines/zencod/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


