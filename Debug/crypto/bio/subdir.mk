################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/bio/b_dump.o \
../crypto/bio/b_print.o \
../crypto/bio/b_sock.o \
../crypto/bio/bf_buff.o \
../crypto/bio/bf_nbio.o \
../crypto/bio/bf_null.o \
../crypto/bio/bio_cb.o \
../crypto/bio/bio_err.o \
../crypto/bio/bio_lib.o \
../crypto/bio/bss_acpt.o \
../crypto/bio/bss_bio.o \
../crypto/bio/bss_conn.o \
../crypto/bio/bss_dgram.o \
../crypto/bio/bss_fd.o \
../crypto/bio/bss_file.o \
../crypto/bio/bss_log.o \
../crypto/bio/bss_mem.o \
../crypto/bio/bss_null.o \
../crypto/bio/bss_sock.o 

C_SRCS += \
../crypto/bio/b_dump.c \
../crypto/bio/b_print.c \
../crypto/bio/b_sock.c \
../crypto/bio/bf_buff.c \
../crypto/bio/bf_lbuf.c \
../crypto/bio/bf_nbio.c \
../crypto/bio/bf_null.c \
../crypto/bio/bio_cb.c \
../crypto/bio/bio_err.c \
../crypto/bio/bio_lib.c \
../crypto/bio/bss_acpt.c \
../crypto/bio/bss_bio.c \
../crypto/bio/bss_conn.c \
../crypto/bio/bss_dgram.c \
../crypto/bio/bss_fd.c \
../crypto/bio/bss_file.c \
../crypto/bio/bss_log.c \
../crypto/bio/bss_mem.c \
../crypto/bio/bss_null.c \
../crypto/bio/bss_rtcp.c \
../crypto/bio/bss_sock.c 

OBJS += \
./crypto/bio/b_dump.o \
./crypto/bio/b_print.o \
./crypto/bio/b_sock.o \
./crypto/bio/bf_buff.o \
./crypto/bio/bf_lbuf.o \
./crypto/bio/bf_nbio.o \
./crypto/bio/bf_null.o \
./crypto/bio/bio_cb.o \
./crypto/bio/bio_err.o \
./crypto/bio/bio_lib.o \
./crypto/bio/bss_acpt.o \
./crypto/bio/bss_bio.o \
./crypto/bio/bss_conn.o \
./crypto/bio/bss_dgram.o \
./crypto/bio/bss_fd.o \
./crypto/bio/bss_file.o \
./crypto/bio/bss_log.o \
./crypto/bio/bss_mem.o \
./crypto/bio/bss_null.o \
./crypto/bio/bss_rtcp.o \
./crypto/bio/bss_sock.o 

C_DEPS += \
./crypto/bio/b_dump.d \
./crypto/bio/b_print.d \
./crypto/bio/b_sock.d \
./crypto/bio/bf_buff.d \
./crypto/bio/bf_lbuf.d \
./crypto/bio/bf_nbio.d \
./crypto/bio/bf_null.d \
./crypto/bio/bio_cb.d \
./crypto/bio/bio_err.d \
./crypto/bio/bio_lib.d \
./crypto/bio/bss_acpt.d \
./crypto/bio/bss_bio.d \
./crypto/bio/bss_conn.d \
./crypto/bio/bss_dgram.d \
./crypto/bio/bss_fd.d \
./crypto/bio/bss_file.d \
./crypto/bio/bss_log.d \
./crypto/bio/bss_mem.d \
./crypto/bio/bss_null.d \
./crypto/bio/bss_rtcp.d \
./crypto/bio/bss_sock.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/bio/%.o: ../crypto/bio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


