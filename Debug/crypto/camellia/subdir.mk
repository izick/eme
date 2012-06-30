################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/camellia/camellia.o \
../crypto/camellia/cmll_cbc.o \
../crypto/camellia/cmll_cfb.o \
../crypto/camellia/cmll_ctr.o \
../crypto/camellia/cmll_ecb.o \
../crypto/camellia/cmll_misc.o \
../crypto/camellia/cmll_ofb.o 

C_SRCS += \
../crypto/camellia/camellia.c \
../crypto/camellia/cmll_cbc.c \
../crypto/camellia/cmll_cfb.c \
../crypto/camellia/cmll_ctr.c \
../crypto/camellia/cmll_ecb.c \
../crypto/camellia/cmll_misc.c \
../crypto/camellia/cmll_ofb.c 

OBJS += \
./crypto/camellia/camellia.o \
./crypto/camellia/cmll_cbc.o \
./crypto/camellia/cmll_cfb.o \
./crypto/camellia/cmll_ctr.o \
./crypto/camellia/cmll_ecb.o \
./crypto/camellia/cmll_misc.o \
./crypto/camellia/cmll_ofb.o 

C_DEPS += \
./crypto/camellia/camellia.d \
./crypto/camellia/cmll_cbc.d \
./crypto/camellia/cmll_cfb.d \
./crypto/camellia/cmll_ctr.d \
./crypto/camellia/cmll_ecb.d \
./crypto/camellia/cmll_misc.d \
./crypto/camellia/cmll_ofb.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/camellia/%.o: ../crypto/camellia/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


