################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fips/rand/fips_drbg_ctr.c \
../fips/rand/fips_drbg_hash.c \
../fips/rand/fips_drbg_hmac.c \
../fips/rand/fips_drbg_lib.c \
../fips/rand/fips_drbg_rand.c \
../fips/rand/fips_drbg_selftest.c \
../fips/rand/fips_drbgvs.c \
../fips/rand/fips_rand.c \
../fips/rand/fips_rand_lib.c \
../fips/rand/fips_rand_selftest.c \
../fips/rand/fips_randtest.c \
../fips/rand/fips_rngvs.c 

OBJS += \
./fips/rand/fips_drbg_ctr.o \
./fips/rand/fips_drbg_hash.o \
./fips/rand/fips_drbg_hmac.o \
./fips/rand/fips_drbg_lib.o \
./fips/rand/fips_drbg_rand.o \
./fips/rand/fips_drbg_selftest.o \
./fips/rand/fips_drbgvs.o \
./fips/rand/fips_rand.o \
./fips/rand/fips_rand_lib.o \
./fips/rand/fips_rand_selftest.o \
./fips/rand/fips_randtest.o \
./fips/rand/fips_rngvs.o 

C_DEPS += \
./fips/rand/fips_drbg_ctr.d \
./fips/rand/fips_drbg_hash.d \
./fips/rand/fips_drbg_hmac.d \
./fips/rand/fips_drbg_lib.d \
./fips/rand/fips_drbg_rand.d \
./fips/rand/fips_drbg_selftest.d \
./fips/rand/fips_drbgvs.d \
./fips/rand/fips_rand.d \
./fips/rand/fips_rand_lib.d \
./fips/rand/fips_rand_selftest.d \
./fips/rand/fips_randtest.d \
./fips/rand/fips_rngvs.d 


# Each subdirectory must supply rules for building sources it contributes
fips/rand/%.o: ../fips/rand/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


