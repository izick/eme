################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/ecdh/ech_err.o \
../crypto/ecdh/ech_key.o \
../crypto/ecdh/ech_lib.o \
../crypto/ecdh/ech_ossl.o 

C_SRCS += \
../crypto/ecdh/ecdhtest.c \
../crypto/ecdh/ech_err.c \
../crypto/ecdh/ech_key.c \
../crypto/ecdh/ech_lib.c \
../crypto/ecdh/ech_ossl.c 

OBJS += \
./crypto/ecdh/ecdhtest.o \
./crypto/ecdh/ech_err.o \
./crypto/ecdh/ech_key.o \
./crypto/ecdh/ech_lib.o \
./crypto/ecdh/ech_ossl.o 

C_DEPS += \
./crypto/ecdh/ecdhtest.d \
./crypto/ecdh/ech_err.d \
./crypto/ecdh/ech_key.d \
./crypto/ecdh/ech_lib.d \
./crypto/ecdh/ech_ossl.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/ecdh/%.o: ../crypto/ecdh/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


