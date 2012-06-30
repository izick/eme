################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demos/cms/cms_comp.c \
../demos/cms/cms_ddec.c \
../demos/cms/cms_dec.c \
../demos/cms/cms_denc.c \
../demos/cms/cms_enc.c \
../demos/cms/cms_sign.c \
../demos/cms/cms_sign2.c \
../demos/cms/cms_uncomp.c \
../demos/cms/cms_ver.c 

OBJS += \
./demos/cms/cms_comp.o \
./demos/cms/cms_ddec.o \
./demos/cms/cms_dec.o \
./demos/cms/cms_denc.o \
./demos/cms/cms_enc.o \
./demos/cms/cms_sign.o \
./demos/cms/cms_sign2.o \
./demos/cms/cms_uncomp.o \
./demos/cms/cms_ver.o 

C_DEPS += \
./demos/cms/cms_comp.d \
./demos/cms/cms_ddec.d \
./demos/cms/cms_dec.d \
./demos/cms/cms_denc.d \
./demos/cms/cms_enc.d \
./demos/cms/cms_sign.d \
./demos/cms/cms_sign2.d \
./demos/cms/cms_uncomp.d \
./demos/cms/cms_ver.d 


# Each subdirectory must supply rules for building sources it contributes
demos/cms/%.o: ../demos/cms/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


