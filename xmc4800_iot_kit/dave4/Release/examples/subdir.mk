################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_ecc_generate_keypair.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_ecdh.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_ecdsa_sign.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_ecdsa_verify.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_hash.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_random.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_rsa_decrypt.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_rsa_encrypt_message.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_rsa_encrypt_session.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_rsa_generate_keypair.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_rsa_sign.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_rsa_verify.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_tls_prf_sha256.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/usecases/example_optiga_hibernate_restore.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_util_protected_update.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_util_read_data.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_util_update_count.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_util_write_data.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/usecases/example_pair_host_and_optiga_using_pre_shared_secret.c 

OBJS += \
./examples/example_optiga_crypt_ecc_generate_keypair.o \
./examples/example_optiga_crypt_ecdh.o \
./examples/example_optiga_crypt_ecdsa_sign.o \
./examples/example_optiga_crypt_ecdsa_verify.o \
./examples/example_optiga_crypt_hash.o \
./examples/example_optiga_crypt_random.o \
./examples/example_optiga_crypt_rsa_decrypt.o \
./examples/example_optiga_crypt_rsa_encrypt_message.o \
./examples/example_optiga_crypt_rsa_encrypt_session.o \
./examples/example_optiga_crypt_rsa_generate_keypair.o \
./examples/example_optiga_crypt_rsa_sign.o \
./examples/example_optiga_crypt_rsa_verify.o \
./examples/example_optiga_crypt_tls_prf_sha256.o \
./examples/example_optiga_hibernate_restore.o \
./examples/example_optiga_util_protected_update.o \
./examples/example_optiga_util_read_data.o \
./examples/example_optiga_util_update_count.o \
./examples/example_optiga_util_write_data.o \
./examples/example_pair_host_and_optiga_using_pre_shared_secret.o 

C_DEPS += \
./examples/example_optiga_crypt_ecc_generate_keypair.d \
./examples/example_optiga_crypt_ecdh.d \
./examples/example_optiga_crypt_ecdsa_sign.d \
./examples/example_optiga_crypt_ecdsa_verify.d \
./examples/example_optiga_crypt_hash.d \
./examples/example_optiga_crypt_random.d \
./examples/example_optiga_crypt_rsa_decrypt.d \
./examples/example_optiga_crypt_rsa_encrypt_message.d \
./examples/example_optiga_crypt_rsa_encrypt_session.d \
./examples/example_optiga_crypt_rsa_generate_keypair.d \
./examples/example_optiga_crypt_rsa_sign.d \
./examples/example_optiga_crypt_rsa_verify.d \
./examples/example_optiga_crypt_tls_prf_sha256.d \
./examples/example_optiga_hibernate_restore.d \
./examples/example_optiga_util_protected_update.d \
./examples/example_optiga_util_read_data.d \
./examples/example_optiga_util_update_count.d \
./examples/example_optiga_util_write_data.d \
./examples/example_pair_host_and_optiga_using_pre_shared_secret.d 


# Each subdirectory must supply rules for building sources it contributes
examples/example_optiga_crypt_ecc_generate_keypair.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_ecc_generate_keypair.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_crypt_ecdh.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_ecdh.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_crypt_ecdsa_sign.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_ecdsa_sign.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_crypt_ecdsa_verify.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_ecdsa_verify.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_crypt_hash.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_hash.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_crypt_random.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_random.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_crypt_rsa_decrypt.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_rsa_decrypt.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_crypt_rsa_encrypt_message.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_rsa_encrypt_message.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_crypt_rsa_encrypt_session.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_rsa_encrypt_session.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_crypt_rsa_generate_keypair.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_rsa_generate_keypair.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_crypt_rsa_sign.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_rsa_sign.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_crypt_rsa_verify.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_rsa_verify.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_crypt_tls_prf_sha256.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_crypt_tls_prf_sha256.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_hibernate_restore.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/usecases/example_optiga_hibernate_restore.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_util_protected_update.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_util_protected_update.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_util_read_data.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_util_read_data.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_util_update_count.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_util_update_count.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_optiga_util_write_data.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/example_optiga_util_write_data.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
examples/example_pair_host_and_optiga_using_pre_shared_secret.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/usecases/example_pair_host_and_optiga_using_pre_shared_secret.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

