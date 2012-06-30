################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/idea/i_cbc.o \
../crypto/idea/i_cfb64.o \
../crypto/idea/i_ecb.o \
../crypto/idea/i_ofb64.o \
../crypto/idea/i_skey.o 

C_SRCS += \
../crypto/idea/i_cbc.c \
../crypto/idea/i_cfb64.c \
../crypto/idea/i_ecb.c \
../crypto/idea/i_ofb64.c \
../crypto/idea/i_skey.c \
../crypto/idea/idea_spd.c \
../crypto/idea/ideatest.c 

OBJS += \
./crypto/idea/i_cbc.o \
./crypto/idea/i_cfb64.o \
./crypto/idea/i_ecb.o \
./crypto/idea/i_ofb64.o \
./crypto/idea/i_skey.o \
./crypto/idea/idea_spd.o \
./crypto/idea/ideatest.o 

C_DEPS += \
./crypto/idea/i_cbc.d \
./crypto/idea/i_cfb64.d \
./crypto/idea/i_ecb.d \
./crypto/idea/i_ofb64.d \
./crypto/idea/i_skey.d \
./crypto/idea/idea_spd.d \
./crypto/idea/ideatest.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/idea/%.o: ../crypto/idea/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


