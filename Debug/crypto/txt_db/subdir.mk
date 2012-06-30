################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/txt_db/txt_db.o 

C_SRCS += \
../crypto/txt_db/txt_db.c 

OBJS += \
./crypto/txt_db/txt_db.o 

C_DEPS += \
./crypto/txt_db/txt_db.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/txt_db/%.o: ../crypto/txt_db/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


