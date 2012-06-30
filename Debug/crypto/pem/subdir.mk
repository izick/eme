################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/pem/pem_all.o \
../crypto/pem/pem_err.o \
../crypto/pem/pem_info.o \
../crypto/pem/pem_lib.o \
../crypto/pem/pem_oth.o \
../crypto/pem/pem_pk8.o \
../crypto/pem/pem_pkey.o \
../crypto/pem/pem_seal.o \
../crypto/pem/pem_sign.o \
../crypto/pem/pem_x509.o \
../crypto/pem/pem_xaux.o \
../crypto/pem/pvkfmt.o 

C_SRCS += \
../crypto/pem/pem_all.c \
../crypto/pem/pem_err.c \
../crypto/pem/pem_info.c \
../crypto/pem/pem_lib.c \
../crypto/pem/pem_oth.c \
../crypto/pem/pem_pk8.c \
../crypto/pem/pem_pkey.c \
../crypto/pem/pem_seal.c \
../crypto/pem/pem_sign.c \
../crypto/pem/pem_x509.c \
../crypto/pem/pem_xaux.c \
../crypto/pem/pvkfmt.c 

OBJS += \
./crypto/pem/pem_all.o \
./crypto/pem/pem_err.o \
./crypto/pem/pem_info.o \
./crypto/pem/pem_lib.o \
./crypto/pem/pem_oth.o \
./crypto/pem/pem_pk8.o \
./crypto/pem/pem_pkey.o \
./crypto/pem/pem_seal.o \
./crypto/pem/pem_sign.o \
./crypto/pem/pem_x509.o \
./crypto/pem/pem_xaux.o \
./crypto/pem/pvkfmt.o 

C_DEPS += \
./crypto/pem/pem_all.d \
./crypto/pem/pem_err.d \
./crypto/pem/pem_info.d \
./crypto/pem/pem_lib.d \
./crypto/pem/pem_oth.d \
./crypto/pem/pem_pk8.d \
./crypto/pem/pem_pkey.d \
./crypto/pem/pem_seal.d \
./crypto/pem/pem_sign.d \
./crypto/pem/pem_x509.d \
./crypto/pem/pem_xaux.d \
./crypto/pem/pvkfmt.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/pem/%.o: ../crypto/pem/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


