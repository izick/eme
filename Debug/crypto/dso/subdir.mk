################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/dso/dso_beos.o \
../crypto/dso/dso_dl.o \
../crypto/dso/dso_dlfcn.o \
../crypto/dso/dso_err.o \
../crypto/dso/dso_lib.o \
../crypto/dso/dso_null.o \
../crypto/dso/dso_openssl.o \
../crypto/dso/dso_vms.o \
../crypto/dso/dso_win32.o 

C_SRCS += \
../crypto/dso/dso_beos.c \
../crypto/dso/dso_dl.c \
../crypto/dso/dso_dlfcn.c \
../crypto/dso/dso_err.c \
../crypto/dso/dso_lib.c \
../crypto/dso/dso_null.c \
../crypto/dso/dso_openssl.c \
../crypto/dso/dso_vms.c \
../crypto/dso/dso_win32.c 

OBJS += \
./crypto/dso/dso_beos.o \
./crypto/dso/dso_dl.o \
./crypto/dso/dso_dlfcn.o \
./crypto/dso/dso_err.o \
./crypto/dso/dso_lib.o \
./crypto/dso/dso_null.o \
./crypto/dso/dso_openssl.o \
./crypto/dso/dso_vms.o \
./crypto/dso/dso_win32.o 

C_DEPS += \
./crypto/dso/dso_beos.d \
./crypto/dso/dso_dl.d \
./crypto/dso/dso_dlfcn.d \
./crypto/dso/dso_err.d \
./crypto/dso/dso_lib.d \
./crypto/dso/dso_null.d \
./crypto/dso/dso_openssl.d \
./crypto/dso/dso_vms.d \
./crypto/dso/dso_win32.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/dso/%.o: ../crypto/dso/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


