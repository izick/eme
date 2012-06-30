################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/ts/ts_asn1.o \
../crypto/ts/ts_conf.o \
../crypto/ts/ts_err.o \
../crypto/ts/ts_lib.o \
../crypto/ts/ts_req_print.o \
../crypto/ts/ts_req_utils.o \
../crypto/ts/ts_rsp_print.o \
../crypto/ts/ts_rsp_sign.o \
../crypto/ts/ts_rsp_utils.o \
../crypto/ts/ts_rsp_verify.o \
../crypto/ts/ts_verify_ctx.o 

C_SRCS += \
../crypto/ts/ts_asn1.c \
../crypto/ts/ts_conf.c \
../crypto/ts/ts_err.c \
../crypto/ts/ts_lib.c \
../crypto/ts/ts_req_print.c \
../crypto/ts/ts_req_utils.c \
../crypto/ts/ts_rsp_print.c \
../crypto/ts/ts_rsp_sign.c \
../crypto/ts/ts_rsp_utils.c \
../crypto/ts/ts_rsp_verify.c \
../crypto/ts/ts_verify_ctx.c 

OBJS += \
./crypto/ts/ts_asn1.o \
./crypto/ts/ts_conf.o \
./crypto/ts/ts_err.o \
./crypto/ts/ts_lib.o \
./crypto/ts/ts_req_print.o \
./crypto/ts/ts_req_utils.o \
./crypto/ts/ts_rsp_print.o \
./crypto/ts/ts_rsp_sign.o \
./crypto/ts/ts_rsp_utils.o \
./crypto/ts/ts_rsp_verify.o \
./crypto/ts/ts_verify_ctx.o 

C_DEPS += \
./crypto/ts/ts_asn1.d \
./crypto/ts/ts_conf.d \
./crypto/ts/ts_err.d \
./crypto/ts/ts_lib.d \
./crypto/ts/ts_req_print.d \
./crypto/ts/ts_req_utils.d \
./crypto/ts/ts_rsp_print.d \
./crypto/ts/ts_rsp_sign.d \
./crypto/ts/ts_rsp_utils.d \
./crypto/ts/ts_rsp_verify.d \
./crypto/ts/ts_verify_ctx.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/ts/%.o: ../crypto/ts/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


