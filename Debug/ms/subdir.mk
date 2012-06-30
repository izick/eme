################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ms/applink.c \
../ms/uplink.c 

OBJS += \
./ms/applink.o \
./ms/uplink.o 

C_DEPS += \
./ms/applink.d \
./ms/uplink.d 


# Each subdirectory must supply rules for building sources it contributes
ms/%.o: ../ms/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


