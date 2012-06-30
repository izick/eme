################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/ecdsa/ecs_asn1.o \
../crypto/ecdsa/ecs_err.o \
../crypto/ecdsa/ecs_lib.o \
../crypto/ecdsa/ecs_ossl.o \
../crypto/ecdsa/ecs_sign.o \
../crypto/ecdsa/ecs_vrf.o 

C_SRCS += \
../crypto/ecdsa/ecdsatest.c \
../crypto/ecdsa/ecs_asn1.c \
../crypto/ecdsa/ecs_err.c \
../crypto/ecdsa/ecs_lib.c \
../crypto/ecdsa/ecs_ossl.c \
../crypto/ecdsa/ecs_sign.c \
../crypto/ecdsa/ecs_vrf.c 

OBJS += \
./crypto/ecdsa/ecdsatest.o \
./crypto/ecdsa/ecs_asn1.o \
./crypto/ecdsa/ecs_err.o \
./crypto/ecdsa/ecs_lib.o \
./crypto/ecdsa/ecs_ossl.o \
./crypto/ecdsa/ecs_sign.o \
./crypto/ecdsa/ecs_vrf.o 

C_DEPS += \
./crypto/ecdsa/ecdsatest.d \
./crypto/ecdsa/ecs_asn1.d \
./crypto/ecdsa/ecs_err.d \
./crypto/ecdsa/ecs_lib.d \
./crypto/ecdsa/ecs_ossl.d \
./crypto/ecdsa/ecs_sign.d \
./crypto/ecdsa/ecs_vrf.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/ecdsa/%.o: ../crypto/ecdsa/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


