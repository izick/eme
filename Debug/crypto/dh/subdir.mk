################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/dh/dh_ameth.o \
../crypto/dh/dh_asn1.o \
../crypto/dh/dh_check.o \
../crypto/dh/dh_depr.o \
../crypto/dh/dh_err.o \
../crypto/dh/dh_gen.o \
../crypto/dh/dh_key.o \
../crypto/dh/dh_lib.o \
../crypto/dh/dh_pmeth.o \
../crypto/dh/dh_prn.o 

C_SRCS += \
../crypto/dh/dh_ameth.c \
../crypto/dh/dh_asn1.c \
../crypto/dh/dh_check.c \
../crypto/dh/dh_depr.c \
../crypto/dh/dh_err.c \
../crypto/dh/dh_gen.c \
../crypto/dh/dh_key.c \
../crypto/dh/dh_lib.c \
../crypto/dh/dh_pmeth.c \
../crypto/dh/dh_prn.c \
../crypto/dh/dhtest.c \
../crypto/dh/p1024.c \
../crypto/dh/p192.c \
../crypto/dh/p512.c 

OBJS += \
./crypto/dh/dh_ameth.o \
./crypto/dh/dh_asn1.o \
./crypto/dh/dh_check.o \
./crypto/dh/dh_depr.o \
./crypto/dh/dh_err.o \
./crypto/dh/dh_gen.o \
./crypto/dh/dh_key.o \
./crypto/dh/dh_lib.o \
./crypto/dh/dh_pmeth.o \
./crypto/dh/dh_prn.o \
./crypto/dh/dhtest.o \
./crypto/dh/p1024.o \
./crypto/dh/p192.o \
./crypto/dh/p512.o 

C_DEPS += \
./crypto/dh/dh_ameth.d \
./crypto/dh/dh_asn1.d \
./crypto/dh/dh_check.d \
./crypto/dh/dh_depr.d \
./crypto/dh/dh_err.d \
./crypto/dh/dh_gen.d \
./crypto/dh/dh_key.d \
./crypto/dh/dh_lib.d \
./crypto/dh/dh_pmeth.d \
./crypto/dh/dh_prn.d \
./crypto/dh/dhtest.d \
./crypto/dh/p1024.d \
./crypto/dh/p192.d \
./crypto/dh/p512.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/dh/%.o: ../crypto/dh/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


