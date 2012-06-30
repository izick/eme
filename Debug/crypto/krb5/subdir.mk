################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/krb5/krb5_asn.o 

C_SRCS += \
../crypto/krb5/krb5_asn.c 

OBJS += \
./crypto/krb5/krb5_asn.o 

C_DEPS += \
./crypto/krb5/krb5_asn.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/krb5/%.o: ../crypto/krb5/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


