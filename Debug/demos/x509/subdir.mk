################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demos/x509/mkcert.c \
../demos/x509/mkreq.c 

OBJS += \
./demos/x509/mkcert.o \
./demos/x509/mkreq.o 

C_DEPS += \
./demos/x509/mkcert.d \
./demos/x509/mkreq.d 


# Each subdirectory must supply rules for building sources it contributes
demos/x509/%.o: ../demos/x509/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


