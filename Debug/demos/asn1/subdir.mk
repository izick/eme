################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demos/asn1/ocsp.c 

OBJS += \
./demos/asn1/ocsp.o 

C_DEPS += \
./demos/asn1/ocsp.d 


# Each subdirectory must supply rules for building sources it contributes
demos/asn1/%.o: ../demos/asn1/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


