################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include lib/xmc4800/subdir.mk
-include lib/xmc/XMCLib/src/subdir.mk
-include lib/xmc/Startup/subdir.mk
-include lib/xmc/Newlib/subdir.mk
-include lib/xmc/Dave/Generated/USBD_VCOM/virtual_com/subdir.mk
-include lib/xmc/Dave/Generated/USBD_VCOM/class_driver/device/subdir.mk
-include lib/xmc/Dave/Generated/USBD_VCOM/subdir.mk
-include lib/xmc/Dave/Generated/USBD/usb/core/xmc4000/subdir.mk
-include lib/xmc/Dave/Generated/USBD/usb/core/subdir.mk
-include lib/xmc/Dave/Generated/USBD/subdir.mk
-include lib/xmc/Dave/Generated/UART/subdir.mk
-include lib/xmc/Dave/Generated/TIMER/subdir.mk
-include lib/xmc/Dave/Generated/INTERRUPT/subdir.mk
-include lib/xmc/Dave/Generated/I2C_MASTER/subdir.mk
-include lib/xmc/Dave/Generated/GLOBAL_CCU4/subdir.mk
-include lib/xmc/Dave/Generated/DIGITAL_IO/subdir.mk
-include lib/xmc/Dave/Generated/CPU_CTRL_XMC4/subdir.mk
-include lib/xmc/Dave/Generated/CLOCK_XMC4/subdir.mk
-include lib/xmc/Dave/Generated/subdir.mk
-include lib/optiga/util/subdir.mk
-include lib/optiga/crypt/subdir.mk
-include lib/optiga/comms/ifx_i2c/subdir.mk
-include lib/optiga/comms/subdir.mk
-include lib/optiga/common/subdir.mk
-include lib/optiga/cmd/subdir.mk
-include lib/externals/mbedtls/library/subdir.mk
-include examples/subdir.mk
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
xmc4800_optiga_example.hex \

SECONDARY_LIST += \
xmc4800_optiga_example.lst \

SECONDARY_SIZE += \
xmc4800_optiga_example.siz \


LIST_FILES = $(addsuffix .o.lst, $(basename $(OBJS))) 
MAP_FILE = "xmc4800_optiga_example.map"

TOOLCHAIN_ROOT=C:/DAVE_4-4-2_64bit/DAVE-IDE-4.4.2-64Bit/eclipse/ARM-GCC-49
PROJECT_LOC=C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/dave4

# All Target
all: xmc4800_optiga_example.elf secondary-outputs

# Tool invocations
xmc4800_optiga_example.elf: $(OBJS) ../linker_script.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM-GCC C Linker'
	$(file >objects.rsp,$(OBJS))
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -T"../linker_script.ld" -nostartfiles -Xlinker --gc-sections -specs=nano.specs -specs=nosys.specs -Wl,-Map,$(MAP_FILE) -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -mcpu=cortex-m4 -mthumb -g -gdwarf-2 -o "xmc4800_optiga_example.elf" "@objects.rsp" $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo.
xmc4800_optiga_example.hex: xmc4800_optiga_example.elf
	@echo 'Invoking: ARM-GCC Create Flash Image'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-objcopy" -O ihex "xmc4800_optiga_example.elf" "xmc4800_optiga_example.hex"
	@echo 'Finished building: $@'
	@echo.
xmc4800_optiga_example.lst: xmc4800_optiga_example.elf
	@echo 'Invoking: ARM-GCC Create Listing'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-objdump" -h -S "xmc4800_optiga_example.elf" > "xmc4800_optiga_example.lst"
	@echo 'Finished building: $@'
	@echo.
xmc4800_optiga_example.siz: xmc4800_optiga_example.elf
	@echo 'Invoking: ARM-GCC Print Size'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-size" --format=berkeley "xmc4800_optiga_example.elf"
	@echo 'Finished building: $@'
	@echo.
# Other Targets
clean:
	-$(RM) $(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ARM_GCC_FOR_XMC_LINKER_OUTPUT_TYPE_OUTPUTS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS)
	-$(RM) examples/example_optiga_crypt_ecc_generate_keypair.o examples/example_optiga_crypt_ecdh.o examples/example_optiga_crypt_ecdsa_sign.o examples/example_optiga_crypt_ecdsa_verify.o examples/example_optiga_crypt_hash.o examples/example_optiga_crypt_random.o examples/example_optiga_crypt_rsa_decrypt.o examples/example_optiga_crypt_rsa_encrypt_message.o examples/example_optiga_crypt_rsa_encrypt_session.o examples/example_optiga_crypt_rsa_generate_keypair.o examples/example_optiga_crypt_rsa_sign.o examples/example_optiga_crypt_rsa_verify.o examples/example_optiga_crypt_tls_prf_sha256.o examples/example_optiga_hibernate_restore.o examples/example_optiga_util_protected_update.o examples/example_optiga_util_read_data.o examples/example_optiga_util_update_count.o examples/example_optiga_util_write_data.o examples/example_pair_host_and_optiga_using_pre_shared_secret.o lib/externals/mbedtls/library/aes.o lib/externals/mbedtls/library/aesni.o lib/externals/mbedtls/library/arc4.o lib/externals/mbedtls/library/aria.o lib/externals/mbedtls/library/asn1parse.o lib/externals/mbedtls/library/asn1write.o lib/externals/mbedtls/library/base64.o lib/externals/mbedtls/library/bignum.o lib/externals/mbedtls/library/blowfish.o lib/externals/mbedtls/library/camellia.o lib/externals/mbedtls/library/ccm.o lib/externals/mbedtls/library/certs.o lib/externals/mbedtls/library/chacha20.o lib/externals/mbedtls/library/chachapoly.o lib/externals/mbedtls/library/cipher.o lib/externals/mbedtls/library/cipher_wrap.o lib/externals/mbedtls/library/cmac.o lib/externals/mbedtls/library/ctr_drbg.o lib/externals/mbedtls/library/debug.o lib/externals/mbedtls/library/des.o lib/externals/mbedtls/library/dhm.o lib/externals/mbedtls/library/ecdh.o lib/externals/mbedtls/library/ecdsa.o lib/externals/mbedtls/library/ecjpake.o lib/externals/mbedtls/library/ecp.o lib/externals/mbedtls/library/ecp_curves.o lib/externals/mbedtls/library/entropy.o 
	-$(RM) lib/externals/mbedtls/library/entropy_poll.o lib/externals/mbedtls/library/error.o lib/externals/mbedtls/library/gcm.o lib/externals/mbedtls/library/havege.o lib/externals/mbedtls/library/hkdf.o lib/externals/mbedtls/library/hmac_drbg.o lib/externals/mbedtls/library/md.o lib/externals/mbedtls/library/md2.o lib/externals/mbedtls/library/md4.o lib/externals/mbedtls/library/md5.o lib/externals/mbedtls/library/md_wrap.o lib/externals/mbedtls/library/memory_buffer_alloc.o lib/externals/mbedtls/library/net_sockets.o lib/externals/mbedtls/library/nist_kw.o lib/externals/mbedtls/library/oid.o lib/externals/mbedtls/library/padlock.o lib/externals/mbedtls/library/pem.o lib/externals/mbedtls/library/pk.o lib/externals/mbedtls/library/pk_wrap.o lib/externals/mbedtls/library/pkcs11.o lib/externals/mbedtls/library/pkcs12.o lib/externals/mbedtls/library/pkcs5.o lib/externals/mbedtls/library/pkparse.o lib/externals/mbedtls/library/pkwrite.o lib/externals/mbedtls/library/platform.o lib/externals/mbedtls/library/platform_util.o lib/externals/mbedtls/library/poly1305.o lib/externals/mbedtls/library/ripemd160.o lib/externals/mbedtls/library/rsa.o lib/externals/mbedtls/library/rsa_internal.o lib/externals/mbedtls/library/sha1.o lib/externals/mbedtls/library/sha256.o lib/externals/mbedtls/library/sha512.o lib/externals/mbedtls/library/ssl_cache.o lib/externals/mbedtls/library/ssl_ciphersuites.o lib/externals/mbedtls/library/ssl_cli.o lib/externals/mbedtls/library/ssl_cookie.o lib/externals/mbedtls/library/ssl_srv.o lib/externals/mbedtls/library/ssl_ticket.o lib/externals/mbedtls/library/ssl_tls.o lib/externals/mbedtls/library/threading.o lib/externals/mbedtls/library/timing.o lib/externals/mbedtls/library/version.o lib/externals/mbedtls/library/version_features.o lib/externals/mbedtls/library/x509.o lib/externals/mbedtls/library/x509_create.o lib/externals/mbedtls/library/x509_crl.o lib/externals/mbedtls/library/x509_crt.o 
	-$(RM) lib/externals/mbedtls/library/x509_csr.o lib/externals/mbedtls/library/x509write_crt.o lib/externals/mbedtls/library/x509write_csr.o lib/externals/mbedtls/library/xtea.o lib/optiga/cmd/optiga_cmd.o lib/optiga/common/optiga_lib_common.o lib/optiga/common/optiga_lib_logger.o lib/optiga/comms/ifx_i2c/ifx_i2c.o lib/optiga/comms/ifx_i2c/ifx_i2c_config.o lib/optiga/comms/ifx_i2c/ifx_i2c_data_link_layer.o lib/optiga/comms/ifx_i2c/ifx_i2c_physical_layer.o lib/optiga/comms/ifx_i2c/ifx_i2c_presentation_layer.o lib/optiga/comms/ifx_i2c/ifx_i2c_transport_layer.o lib/optiga/comms/optiga_comms_ifx_i2c.o lib/optiga/crypt/optiga_crypt.o lib/optiga/util/optiga_util.o lib/xmc/Dave/Generated/CLOCK_XMC4/clock_xmc4.o lib/xmc/Dave/Generated/CLOCK_XMC4/clock_xmc4_conf.o lib/xmc/Dave/Generated/CPU_CTRL_XMC4/cpu_ctrl_xmc4.o lib/xmc/Dave/Generated/CPU_CTRL_XMC4/cpu_ctrl_xmc4_conf.o lib/xmc/Dave/Generated/DAVE.o lib/xmc/Dave/Generated/DIGITAL_IO/digital_io.o lib/xmc/Dave/Generated/DIGITAL_IO/digital_io_conf.o lib/xmc/Dave/Generated/GLOBAL_CCU4/global_ccu4.o lib/xmc/Dave/Generated/GLOBAL_CCU4/global_ccu4_conf.o lib/xmc/Dave/Generated/I2C_MASTER/i2c_master.o lib/xmc/Dave/Generated/I2C_MASTER/i2c_master_conf.o lib/xmc/Dave/Generated/INTERRUPT/interrupt.o lib/xmc/Dave/Generated/INTERRUPT/interrupt_conf.o lib/xmc/Dave/Generated/TIMER/timer.o lib/xmc/Dave/Generated/TIMER/timer_conf.o lib/xmc/Dave/Generated/UART/uart.o lib/xmc/Dave/Generated/UART/uart_conf.o lib/xmc/Dave/Generated/USBD/usb/core/usb_task.o lib/xmc/Dave/Generated/USBD/usb/core/xmc4000/usbd_endpoint_stream_xmc4000.o lib/xmc/Dave/Generated/USBD/usb/core/xmc4000/usbd_endpoint_xmc4000.o lib/xmc/Dave/Generated/USBD/usbd.o lib/xmc/Dave/Generated/USBD/usbd_conf.o lib/xmc/Dave/Generated/USBD_VCOM/class_driver/device/cdc_class_device.o lib/xmc/Dave/Generated/USBD_VCOM/usbd_vcom.o lib/xmc/Dave/Generated/USBD_VCOM/usbd_vcom_conf.o lib/xmc/Dave/Generated/USBD_VCOM/virtual_com/descriptors.o 
	-$(RM) lib/xmc/Newlib/syscalls.o lib/xmc/Startup/startup_XMC4800.o lib/xmc/Startup/system_XMC4800.o lib/xmc/XMCLib/src/xmc4_eru.o lib/xmc/XMCLib/src/xmc4_flash.o lib/xmc/XMCLib/src/xmc4_gpio.o lib/xmc/XMCLib/src/xmc4_rtc.o lib/xmc/XMCLib/src/xmc4_scu.o lib/xmc/XMCLib/src/xmc_can.o lib/xmc/XMCLib/src/xmc_ccu4.o lib/xmc/XMCLib/src/xmc_ccu8.o lib/xmc/XMCLib/src/xmc_common.o lib/xmc/XMCLib/src/xmc_dac.o lib/xmc/XMCLib/src/xmc_dma.o lib/xmc/XMCLib/src/xmc_dsd.o lib/xmc/XMCLib/src/xmc_ebu.o lib/xmc/XMCLib/src/xmc_ecat.o lib/xmc/XMCLib/src/xmc_eru.o lib/xmc/XMCLib/src/xmc_eth_mac.o lib/xmc/XMCLib/src/xmc_eth_phy_dp83848.o lib/xmc/XMCLib/src/xmc_eth_phy_ksz8031rnl.o lib/xmc/XMCLib/src/xmc_eth_phy_ksz8081rnb.o lib/xmc/XMCLib/src/xmc_fce.o lib/xmc/XMCLib/src/xmc_gpio.o lib/xmc/XMCLib/src/xmc_hrpwm.o lib/xmc/XMCLib/src/xmc_i2c.o lib/xmc/XMCLib/src/xmc_i2s.o lib/xmc/XMCLib/src/xmc_ledts.o lib/xmc/XMCLib/src/xmc_posif.o lib/xmc/XMCLib/src/xmc_rtc.o lib/xmc/XMCLib/src/xmc_sdmmc.o lib/xmc/XMCLib/src/xmc_spi.o lib/xmc/XMCLib/src/xmc_uart.o lib/xmc/XMCLib/src/xmc_usbd.o lib/xmc/XMCLib/src/xmc_usbh.o lib/xmc/XMCLib/src/xmc_usic.o lib/xmc/XMCLib/src/xmc_vadc.o lib/xmc/XMCLib/src/xmc_wdt.o lib/xmc4800/pal.o lib/xmc4800/pal_crypt_mbedtls.o lib/xmc4800/pal_gpio.o lib/xmc4800/pal_i2c.o lib/xmc4800/pal_ifx_i2c_config.o lib/xmc4800/pal_logger.o lib/xmc4800/pal_os_datastore.o lib/xmc4800/pal_os_event.o lib/xmc4800/pal_os_lock.o lib/xmc4800/pal_os_timer.o main_xmc4800_example.o optiga_shell.o  xmc4800_optiga_example.elf $(LIST_FILES) $(MAP_FILE) objects.rsp
	-@echo.
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
