################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/stack/stack.o 

C_SRCS += \
../crypto/stack/stack.c 

OBJS += \
./crypto/stack/stack.o 

C_DEPS += \
./crypto/stack/stack.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/stack/%.o: ../crypto/stack/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


