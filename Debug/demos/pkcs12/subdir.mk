################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demos/pkcs12/pkread.c \
../demos/pkcs12/pkwrite.c 

OBJS += \
./demos/pkcs12/pkread.o \
./demos/pkcs12/pkwrite.o 

C_DEPS += \
./demos/pkcs12/pkread.d \
./demos/pkcs12/pkwrite.d 


# Each subdirectory must supply rules for building sources it contributes
demos/pkcs12/%.o: ../demos/pkcs12/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


