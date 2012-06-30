################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/ui/ui_compat.o \
../crypto/ui/ui_err.o \
../crypto/ui/ui_lib.o \
../crypto/ui/ui_openssl.o \
../crypto/ui/ui_util.o 

C_SRCS += \
../crypto/ui/ui_compat.c \
../crypto/ui/ui_err.c \
../crypto/ui/ui_lib.c \
../crypto/ui/ui_openssl.c \
../crypto/ui/ui_util.c 

OBJS += \
./crypto/ui/ui_compat.o \
./crypto/ui/ui_err.o \
./crypto/ui/ui_lib.o \
./crypto/ui/ui_openssl.o \
./crypto/ui/ui_util.o 

C_DEPS += \
./crypto/ui/ui_compat.d \
./crypto/ui/ui_err.d \
./crypto/ui/ui_lib.d \
./crypto/ui/ui_openssl.d \
./crypto/ui/ui_util.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/ui/%.o: ../crypto/ui/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


