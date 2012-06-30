################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demos/sign/sign.c 

OBJS += \
./demos/sign/sign.o 

C_DEPS += \
./demos/sign/sign.d 


# Each subdirectory must supply rules for building sources it contributes
demos/sign/%.o: ../demos/sign/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


