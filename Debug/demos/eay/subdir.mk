################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demos/eay/base64.c \
../demos/eay/conn.c \
../demos/eay/loadrsa.c 

OBJS += \
./demos/eay/base64.o \
./demos/eay/conn.o \
./demos/eay/loadrsa.o 

C_DEPS += \
./demos/eay/base64.d \
./demos/eay/conn.d \
./demos/eay/loadrsa.d 


# Each subdirectory must supply rules for building sources it contributes
demos/eay/%.o: ../demos/eay/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


