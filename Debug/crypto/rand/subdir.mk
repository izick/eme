################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/rand/md_rand.o \
../crypto/rand/rand_egd.o \
../crypto/rand/rand_err.o \
../crypto/rand/rand_lib.o \
../crypto/rand/rand_nw.o \
../crypto/rand/rand_os2.o \
../crypto/rand/rand_unix.o \
../crypto/rand/rand_win.o \
../crypto/rand/randfile.o 

C_SRCS += \
../crypto/rand/md_rand.c \
../crypto/rand/rand_egd.c \
../crypto/rand/rand_err.c \
../crypto/rand/rand_lib.c \
../crypto/rand/rand_nw.c \
../crypto/rand/rand_os2.c \
../crypto/rand/rand_unix.c \
../crypto/rand/rand_vms.c \
../crypto/rand/rand_win.c \
../crypto/rand/randfile.c \
../crypto/rand/randtest.c 

OBJS += \
./crypto/rand/md_rand.o \
./crypto/rand/rand_egd.o \
./crypto/rand/rand_err.o \
./crypto/rand/rand_lib.o \
./crypto/rand/rand_nw.o \
./crypto/rand/rand_os2.o \
./crypto/rand/rand_unix.o \
./crypto/rand/rand_vms.o \
./crypto/rand/rand_win.o \
./crypto/rand/randfile.o \
./crypto/rand/randtest.o 

C_DEPS += \
./crypto/rand/md_rand.d \
./crypto/rand/rand_egd.d \
./crypto/rand/rand_err.d \
./crypto/rand/rand_lib.d \
./crypto/rand/rand_nw.d \
./crypto/rand/rand_os2.d \
./crypto/rand/rand_unix.d \
./crypto/rand/rand_vms.d \
./crypto/rand/rand_win.d \
./crypto/rand/randfile.d \
./crypto/rand/randtest.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/rand/%.o: ../crypto/rand/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


