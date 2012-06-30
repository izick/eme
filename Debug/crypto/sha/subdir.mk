################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/sha/sha1_one.o \
../crypto/sha/sha1dgst.o \
../crypto/sha/sha256.o \
../crypto/sha/sha512.o \
../crypto/sha/sha_dgst.o \
../crypto/sha/sha_one.o 

C_SRCS += \
../crypto/sha/sha.c \
../crypto/sha/sha1.c \
../crypto/sha/sha1_one.c \
../crypto/sha/sha1dgst.c \
../crypto/sha/sha1test.c \
../crypto/sha/sha256.c \
../crypto/sha/sha256t.c \
../crypto/sha/sha512.c \
../crypto/sha/sha512t.c \
../crypto/sha/sha_dgst.c \
../crypto/sha/sha_one.c \
../crypto/sha/shatest.c 

OBJS += \
./crypto/sha/sha.o \
./crypto/sha/sha1.o \
./crypto/sha/sha1_one.o \
./crypto/sha/sha1dgst.o \
./crypto/sha/sha1test.o \
./crypto/sha/sha256.o \
./crypto/sha/sha256t.o \
./crypto/sha/sha512.o \
./crypto/sha/sha512t.o \
./crypto/sha/sha_dgst.o \
./crypto/sha/sha_one.o \
./crypto/sha/shatest.o 

C_DEPS += \
./crypto/sha/sha.d \
./crypto/sha/sha1.d \
./crypto/sha/sha1_one.d \
./crypto/sha/sha1dgst.d \
./crypto/sha/sha1test.d \
./crypto/sha/sha256.d \
./crypto/sha/sha256t.d \
./crypto/sha/sha512.d \
./crypto/sha/sha512t.d \
./crypto/sha/sha_dgst.d \
./crypto/sha/sha_one.d \
./crypto/sha/shatest.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/sha/%.o: ../crypto/sha/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


