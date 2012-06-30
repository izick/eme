################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demos/easy_tls/easy-tls.c \
../demos/easy_tls/test.c 

OBJS += \
./demos/easy_tls/easy-tls.o \
./demos/easy_tls/test.o 

C_DEPS += \
./demos/easy_tls/easy-tls.d \
./demos/easy_tls/test.d 


# Each subdirectory must supply rules for building sources it contributes
demos/easy_tls/%.o: ../demos/easy_tls/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


