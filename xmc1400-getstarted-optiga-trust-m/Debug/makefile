################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include optiga-trust-m-lib/xmc1400_xtreme/subdir.mk
-include optiga-trust-m-lib/optiga/util/subdir.mk
-include optiga-trust-m-lib/optiga/crypt/subdir.mk
-include optiga-trust-m-lib/optiga/comms/ifx_i2c/subdir.mk
-include optiga-trust-m-lib/optiga/comms/subdir.mk
-include optiga-trust-m-lib/optiga/common/subdir.mk
-include optiga-trust-m-lib/optiga/cmd/subdir.mk
-include optiga-trust-m-lib/externals/mbedtls/library/subdir.mk
-include optiga-trust-m-lib/examples/subdir.mk
-include Startup/subdir.mk
-include Libraries/XMCLib/src/subdir.mk
-include Libraries/Newlib/subdir.mk
-include Dave/Generated/UART/subdir.mk
-include Dave/Generated/TIMER/subdir.mk
-include Dave/Generated/INTERRUPT/subdir.mk
-include Dave/Generated/I2C_MASTER/subdir.mk
-include Dave/Generated/GLOBAL_CCU4/subdir.mk
-include Dave/Generated/DIGITAL_IO/subdir.mk
-include Dave/Generated/CPU_CTRL_XMC1/subdir.mk
-include Dave/Generated/CLOCK_XMC1/subdir.mk
-include Dave/Generated/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
xmc1400-getstarted-optiga-trust-m.hex \

SECONDARY_LIST += \
xmc1400-getstarted-optiga-trust-m.lst \

SECONDARY_SIZE += \
xmc1400-getstarted-optiga-trust-m.siz \


LIST_FILES = $(addsuffix .o.lst, $(basename $(OBJS))) 
MAP_FILE = "xmc1400-getstarted-optiga-trust-m.map"

TOOLCHAIN_ROOT=C:/DAVE_4-4-2_64bit/DAVE-IDE-4.4.2-64Bit/eclipse/ARM-GCC-49
PROJECT_LOC=//MAC/Home/Downloads/getstarted-optiga-trust-m/xmc1400-getstarted-optiga-trust-m

# All Target
all: xmc1400-getstarted-optiga-trust-m.elf secondary-outputs

# Tool invocations
xmc1400-getstarted-optiga-trust-m.elf: $(OBJS) ../linker_script.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM-GCC C Linker'
	$(file >objects.rsp,$(OBJS))
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -T"../linker_script.ld" -nostartfiles -Xlinker --gc-sections -specs=nano.specs -specs=nosys.specs -Wl,-Map,$(MAP_FILE) -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "xmc1400-getstarted-optiga-trust-m.elf" "@objects.rsp" $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo.
xmc1400-getstarted-optiga-trust-m.hex: xmc1400-getstarted-optiga-trust-m.elf
	@echo 'Invoking: ARM-GCC Create Flash Image'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-objcopy" -O ihex "xmc1400-getstarted-optiga-trust-m.elf" "xmc1400-getstarted-optiga-trust-m.hex"
	@echo 'Finished building: $@'
	@echo.
xmc1400-getstarted-optiga-trust-m.lst: xmc1400-getstarted-optiga-trust-m.elf
	@echo 'Invoking: ARM-GCC Create Listing'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-objdump" -h -S "xmc1400-getstarted-optiga-trust-m.elf" > "xmc1400-getstarted-optiga-trust-m.lst"
	@echo 'Finished building: $@'
	@echo.
xmc1400-getstarted-optiga-trust-m.siz: xmc1400-getstarted-optiga-trust-m.elf
	@echo 'Invoking: ARM-GCC Print Size'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-size" --format=berkeley "xmc1400-getstarted-optiga-trust-m.elf"
	@echo 'Finished building: $@'
	@echo.
# Other Targets
clean:
	-$(RM) $(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ARM_GCC_FOR_XMC_LINKER_OUTPUT_TYPE_OUTPUTS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS)
	-$(RM) Dave/Generated/CLOCK_XMC1/clock_xmc1.o Dave/Generated/CLOCK_XMC1/clock_xmc1_conf.o Dave/Generated/CPU_CTRL_XMC1/cpu_ctrl_xmc1.o Dave/Generated/CPU_CTRL_XMC1/cpu_ctrl_xmc1_conf.o Dave/Generated/DAVE.o Dave/Generated/DIGITAL_IO/digital_io.o Dave/Generated/DIGITAL_IO/digital_io_conf.o Dave/Generated/GLOBAL_CCU4/global_ccu4.o Dave/Generated/GLOBAL_CCU4/global_ccu4_conf.o Dave/Generated/I2C_MASTER/i2c_master.o Dave/Generated/I2C_MASTER/i2c_master_conf.o Dave/Generated/INTERRUPT/interrupt.o Dave/Generated/INTERRUPT/interrupt_conf.o Dave/Generated/TIMER/timer.o Dave/Generated/TIMER/timer_conf.o Dave/Generated/UART/uart.o Dave/Generated/UART/uart_conf.o Libraries/Newlib/syscalls.o Libraries/XMCLib/src/xmc1_eru.o Libraries/XMCLib/src/xmc1_flash.o Libraries/XMCLib/src/xmc1_gpio.o Libraries/XMCLib/src/xmc1_rtc.o Libraries/XMCLib/src/xmc1_scu.o Libraries/XMCLib/src/xmc_acmp.o Libraries/XMCLib/src/xmc_bccu.o Libraries/XMCLib/src/xmc_can.o Libraries/XMCLib/src/xmc_ccu4.o Libraries/XMCLib/src/xmc_ccu8.o Libraries/XMCLib/src/xmc_common.o Libraries/XMCLib/src/xmc_eru.o Libraries/XMCLib/src/xmc_gpio.o Libraries/XMCLib/src/xmc_i2c.o Libraries/XMCLib/src/xmc_i2s.o Libraries/XMCLib/src/xmc_ledts.o Libraries/XMCLib/src/xmc_math.o Libraries/XMCLib/src/xmc_pau.o Libraries/XMCLib/src/xmc_posif.o Libraries/XMCLib/src/xmc_prng.o Libraries/XMCLib/src/xmc_rtc.o Libraries/XMCLib/src/xmc_spi.o Libraries/XMCLib/src/xmc_uart.o Libraries/XMCLib/src/xmc_usic.o Libraries/XMCLib/src/xmc_vadc.o Libraries/XMCLib/src/xmc_wdt.o Startup/startup_XMC1400.o Startup/system_XMC1400.o main.o optiga_shell.o optiga-trust-m-lib/examples/example_optiga_crypt_ecc_generate_keypair.o optiga-trust-m-lib/examples/example_optiga_crypt_ecdh.o optiga-trust-m-lib/examples/example_optiga_crypt_ecdsa_sign.o optiga-trust-m-lib/examples/example_optiga_crypt_ecdsa_verify.o optiga-trust-m-lib/examples/example_optiga_crypt_hash.o 
	-$(RM) optiga-trust-m-lib/examples/example_optiga_crypt_random.o optiga-trust-m-lib/examples/example_optiga_crypt_rsa_decrypt.o optiga-trust-m-lib/examples/example_optiga_crypt_rsa_encrypt_message.o optiga-trust-m-lib/examples/example_optiga_crypt_rsa_encrypt_session.o optiga-trust-m-lib/examples/example_optiga_crypt_rsa_generate_keypair.o optiga-trust-m-lib/examples/example_optiga_crypt_rsa_sign.o optiga-trust-m-lib/examples/example_optiga_crypt_rsa_verify.o optiga-trust-m-lib/examples/example_optiga_crypt_tls_prf_sha256.o optiga-trust-m-lib/examples/example_optiga_hibernate_restore.o optiga-trust-m-lib/examples/example_optiga_util_protected_update.o optiga-trust-m-lib/examples/example_optiga_util_read_data.o optiga-trust-m-lib/examples/example_optiga_util_read_uid.o optiga-trust-m-lib/examples/example_optiga_util_update_count.o optiga-trust-m-lib/examples/example_optiga_util_write_data.o optiga-trust-m-lib/examples/example_pair_host_and_optiga_using_pre_shared_secret.o optiga-trust-m-lib/externals/mbedtls/library/aes.o optiga-trust-m-lib/externals/mbedtls/library/aesni.o optiga-trust-m-lib/externals/mbedtls/library/arc4.o optiga-trust-m-lib/externals/mbedtls/library/aria.o optiga-trust-m-lib/externals/mbedtls/library/asn1parse.o optiga-trust-m-lib/externals/mbedtls/library/asn1write.o optiga-trust-m-lib/externals/mbedtls/library/base64.o optiga-trust-m-lib/externals/mbedtls/library/bignum.o optiga-trust-m-lib/externals/mbedtls/library/blowfish.o optiga-trust-m-lib/externals/mbedtls/library/camellia.o optiga-trust-m-lib/externals/mbedtls/library/ccm.o optiga-trust-m-lib/externals/mbedtls/library/certs.o optiga-trust-m-lib/externals/mbedtls/library/chacha20.o optiga-trust-m-lib/externals/mbedtls/library/chachapoly.o optiga-trust-m-lib/externals/mbedtls/library/cipher.o optiga-trust-m-lib/externals/mbedtls/library/cipher_wrap.o optiga-trust-m-lib/externals/mbedtls/library/cmac.o 
	-$(RM) optiga-trust-m-lib/externals/mbedtls/library/ctr_drbg.o optiga-trust-m-lib/externals/mbedtls/library/debug.o optiga-trust-m-lib/externals/mbedtls/library/des.o optiga-trust-m-lib/externals/mbedtls/library/dhm.o optiga-trust-m-lib/externals/mbedtls/library/ecdh.o optiga-trust-m-lib/externals/mbedtls/library/ecdsa.o optiga-trust-m-lib/externals/mbedtls/library/ecjpake.o optiga-trust-m-lib/externals/mbedtls/library/ecp.o optiga-trust-m-lib/externals/mbedtls/library/ecp_curves.o optiga-trust-m-lib/externals/mbedtls/library/entropy.o optiga-trust-m-lib/externals/mbedtls/library/entropy_poll.o optiga-trust-m-lib/externals/mbedtls/library/error.o optiga-trust-m-lib/externals/mbedtls/library/gcm.o optiga-trust-m-lib/externals/mbedtls/library/havege.o optiga-trust-m-lib/externals/mbedtls/library/hkdf.o optiga-trust-m-lib/externals/mbedtls/library/hmac_drbg.o optiga-trust-m-lib/externals/mbedtls/library/md.o optiga-trust-m-lib/externals/mbedtls/library/md2.o optiga-trust-m-lib/externals/mbedtls/library/md4.o optiga-trust-m-lib/externals/mbedtls/library/md5.o optiga-trust-m-lib/externals/mbedtls/library/md_wrap.o optiga-trust-m-lib/externals/mbedtls/library/memory_buffer_alloc.o optiga-trust-m-lib/externals/mbedtls/library/net_sockets.o optiga-trust-m-lib/externals/mbedtls/library/nist_kw.o optiga-trust-m-lib/externals/mbedtls/library/oid.o optiga-trust-m-lib/externals/mbedtls/library/padlock.o optiga-trust-m-lib/externals/mbedtls/library/pem.o optiga-trust-m-lib/externals/mbedtls/library/pk.o optiga-trust-m-lib/externals/mbedtls/library/pk_wrap.o optiga-trust-m-lib/externals/mbedtls/library/pkcs11.o optiga-trust-m-lib/externals/mbedtls/library/pkcs12.o optiga-trust-m-lib/externals/mbedtls/library/pkcs5.o optiga-trust-m-lib/externals/mbedtls/library/pkparse.o optiga-trust-m-lib/externals/mbedtls/library/pkwrite.o optiga-trust-m-lib/externals/mbedtls/library/platform.o 
	-$(RM) optiga-trust-m-lib/externals/mbedtls/library/platform_util.o optiga-trust-m-lib/externals/mbedtls/library/poly1305.o optiga-trust-m-lib/externals/mbedtls/library/ripemd160.o optiga-trust-m-lib/externals/mbedtls/library/rsa.o optiga-trust-m-lib/externals/mbedtls/library/rsa_internal.o optiga-trust-m-lib/externals/mbedtls/library/sha1.o optiga-trust-m-lib/externals/mbedtls/library/sha256.o optiga-trust-m-lib/externals/mbedtls/library/sha512.o optiga-trust-m-lib/externals/mbedtls/library/ssl_cache.o optiga-trust-m-lib/externals/mbedtls/library/ssl_ciphersuites.o optiga-trust-m-lib/externals/mbedtls/library/ssl_cli.o optiga-trust-m-lib/externals/mbedtls/library/ssl_cookie.o optiga-trust-m-lib/externals/mbedtls/library/ssl_srv.o optiga-trust-m-lib/externals/mbedtls/library/ssl_ticket.o optiga-trust-m-lib/externals/mbedtls/library/ssl_tls.o optiga-trust-m-lib/externals/mbedtls/library/threading.o optiga-trust-m-lib/externals/mbedtls/library/timing.o optiga-trust-m-lib/externals/mbedtls/library/version.o optiga-trust-m-lib/externals/mbedtls/library/version_features.o optiga-trust-m-lib/externals/mbedtls/library/x509.o optiga-trust-m-lib/externals/mbedtls/library/x509_create.o optiga-trust-m-lib/externals/mbedtls/library/x509_crl.o optiga-trust-m-lib/externals/mbedtls/library/x509_crt.o optiga-trust-m-lib/externals/mbedtls/library/x509_csr.o optiga-trust-m-lib/externals/mbedtls/library/x509write_crt.o optiga-trust-m-lib/externals/mbedtls/library/x509write_csr.o optiga-trust-m-lib/externals/mbedtls/library/xtea.o optiga-trust-m-lib/optiga/cmd/optiga_cmd.o optiga-trust-m-lib/optiga/common/optiga_lib_common.o optiga-trust-m-lib/optiga/common/optiga_lib_logger.o optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c.o optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_config.o optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_data_link_layer.o optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_physical_layer.o 
	-$(RM) optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_presentation_layer.o optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_transport_layer.o optiga-trust-m-lib/optiga/comms/optiga_comms_ifx_i2c.o optiga-trust-m-lib/optiga/crypt/optiga_crypt.o optiga-trust-m-lib/optiga/util/optiga_util.o optiga-trust-m-lib/xmc1400_xtreme/pal.o optiga-trust-m-lib/xmc1400_xtreme/pal_gpio.o optiga-trust-m-lib/xmc1400_xtreme/pal_i2c.o optiga-trust-m-lib/xmc1400_xtreme/pal_ifx_i2c_config.o optiga-trust-m-lib/xmc1400_xtreme/pal_logger.o optiga-trust-m-lib/xmc1400_xtreme/pal_os_datastore.o optiga-trust-m-lib/xmc1400_xtreme/pal_os_event.o optiga-trust-m-lib/xmc1400_xtreme/pal_os_lock.o optiga-trust-m-lib/xmc1400_xtreme/pal_os_timer.o  xmc1400-getstarted-optiga-trust-m.elf $(LIST_FILES) $(MAP_FILE) objects.rsp
	-@echo.
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
