################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/seed/seed.o \
../crypto/seed/seed_cbc.o \
../crypto/seed/seed_cfb.o \
../crypto/seed/seed_ecb.o \
../crypto/seed/seed_ofb.o 

C_SRCS += \
../crypto/seed/seed.c \
../crypto/seed/seed_cbc.c \
../crypto/seed/seed_cfb.c \
../crypto/seed/seed_ecb.c \
../crypto/seed/seed_ofb.c 

OBJS += \
./crypto/seed/seed.o \
./crypto/seed/seed_cbc.o \
./crypto/seed/seed_cfb.o \
./crypto/seed/seed_ecb.o \
./crypto/seed/seed_ofb.o 

C_DEPS += \
./crypto/seed/seed.d \
./crypto/seed/seed_cbc.d \
./crypto/seed/seed_cfb.d \
./crypto/seed/seed_ecb.d \
./crypto/seed/seed_ofb.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/seed/%.o: ../crypto/seed/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


