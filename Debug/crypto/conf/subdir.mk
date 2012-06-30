################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/conf/conf_api.o \
../crypto/conf/conf_def.o \
../crypto/conf/conf_err.o \
../crypto/conf/conf_lib.o \
../crypto/conf/conf_mall.o \
../crypto/conf/conf_mod.o \
../crypto/conf/conf_sap.o 

C_SRCS += \
../crypto/conf/cnf_save.c \
../crypto/conf/conf_api.c \
../crypto/conf/conf_def.c \
../crypto/conf/conf_err.c \
../crypto/conf/conf_lib.c \
../crypto/conf/conf_mall.c \
../crypto/conf/conf_mod.c \
../crypto/conf/conf_sap.c \
../crypto/conf/test.c 

OBJS += \
./crypto/conf/cnf_save.o \
./crypto/conf/conf_api.o \
./crypto/conf/conf_def.o \
./crypto/conf/conf_err.o \
./crypto/conf/conf_lib.o \
./crypto/conf/conf_mall.o \
./crypto/conf/conf_mod.o \
./crypto/conf/conf_sap.o \
./crypto/conf/test.o 

C_DEPS += \
./crypto/conf/cnf_save.d \
./crypto/conf/conf_api.d \
./crypto/conf/conf_def.d \
./crypto/conf/conf_err.d \
./crypto/conf/conf_lib.d \
./crypto/conf/conf_mall.d \
./crypto/conf/conf_mod.d \
./crypto/conf/conf_sap.d \
./crypto/conf/test.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/conf/%.o: ../crypto/conf/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


