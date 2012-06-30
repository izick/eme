################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/err/err.o \
../crypto/err/err_all.o \
../crypto/err/err_prn.o 

C_SRCS += \
../crypto/err/err.c \
../crypto/err/err_all.c \
../crypto/err/err_prn.c 

OBJS += \
./crypto/err/err.o \
./crypto/err/err_all.o \
./crypto/err/err_prn.o 

C_DEPS += \
./crypto/err/err.d \
./crypto/err/err_all.d \
./crypto/err/err_prn.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/err/%.o: ../crypto/err/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


