################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../engines/ccgost/e_gost_err.o \
../engines/ccgost/gost2001.o \
../engines/ccgost/gost2001_keyx.o \
../engines/ccgost/gost89.o \
../engines/ccgost/gost94_keyx.o \
../engines/ccgost/gost_ameth.o \
../engines/ccgost/gost_asn1.o \
../engines/ccgost/gost_crypt.o \
../engines/ccgost/gost_ctl.o \
../engines/ccgost/gost_eng.o \
../engines/ccgost/gost_keywrap.o \
../engines/ccgost/gost_md.o \
../engines/ccgost/gost_params.o \
../engines/ccgost/gost_pmeth.o \
../engines/ccgost/gost_sign.o \
../engines/ccgost/gosthash.o 

C_SRCS += \
../engines/ccgost/e_gost_err.c \
../engines/ccgost/gost2001.c \
../engines/ccgost/gost2001_keyx.c \
../engines/ccgost/gost89.c \
../engines/ccgost/gost94_keyx.c \
../engines/ccgost/gost_ameth.c \
../engines/ccgost/gost_asn1.c \
../engines/ccgost/gost_crypt.c \
../engines/ccgost/gost_ctl.c \
../engines/ccgost/gost_eng.c \
../engines/ccgost/gost_keywrap.c \
../engines/ccgost/gost_md.c \
../engines/ccgost/gost_params.c \
../engines/ccgost/gost_pmeth.c \
../engines/ccgost/gost_sign.c \
../engines/ccgost/gosthash.c \
../engines/ccgost/gostsum.c 

OBJS += \
./engines/ccgost/e_gost_err.o \
./engines/ccgost/gost2001.o \
./engines/ccgost/gost2001_keyx.o \
./engines/ccgost/gost89.o \
./engines/ccgost/gost94_keyx.o \
./engines/ccgost/gost_ameth.o \
./engines/ccgost/gost_asn1.o \
./engines/ccgost/gost_crypt.o \
./engines/ccgost/gost_ctl.o \
./engines/ccgost/gost_eng.o \
./engines/ccgost/gost_keywrap.o \
./engines/ccgost/gost_md.o \
./engines/ccgost/gost_params.o \
./engines/ccgost/gost_pmeth.o \
./engines/ccgost/gost_sign.o \
./engines/ccgost/gosthash.o \
./engines/ccgost/gostsum.o 

C_DEPS += \
./engines/ccgost/e_gost_err.d \
./engines/ccgost/gost2001.d \
./engines/ccgost/gost2001_keyx.d \
./engines/ccgost/gost89.d \
./engines/ccgost/gost94_keyx.d \
./engines/ccgost/gost_ameth.d \
./engines/ccgost/gost_asn1.d \
./engines/ccgost/gost_crypt.d \
./engines/ccgost/gost_ctl.d \
./engines/ccgost/gost_eng.d \
./engines/ccgost/gost_keywrap.d \
./engines/ccgost/gost_md.d \
./engines/ccgost/gost_params.d \
./engines/ccgost/gost_pmeth.d \
./engines/ccgost/gost_sign.d \
./engines/ccgost/gosthash.d \
./engines/ccgost/gostsum.d 


# Each subdirectory must supply rules for building sources it contributes
engines/ccgost/%.o: ../engines/ccgost/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


