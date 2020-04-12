################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal.c \
//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal_gpio.c \
//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal_i2c.c \
//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal_ifx_i2c_config.c \
//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal_logger.c \
//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal_os_datastore.c \
//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal_os_event.c \
//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal_os_lock.c \
//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal_os_timer.c 

OBJS += \
./optiga-trust-m-lib/xmc1400_xtreme/pal.o \
./optiga-trust-m-lib/xmc1400_xtreme/pal_gpio.o \
./optiga-trust-m-lib/xmc1400_xtreme/pal_i2c.o \
./optiga-trust-m-lib/xmc1400_xtreme/pal_ifx_i2c_config.o \
./optiga-trust-m-lib/xmc1400_xtreme/pal_logger.o \
./optiga-trust-m-lib/xmc1400_xtreme/pal_os_datastore.o \
./optiga-trust-m-lib/xmc1400_xtreme/pal_os_event.o \
./optiga-trust-m-lib/xmc1400_xtreme/pal_os_lock.o \
./optiga-trust-m-lib/xmc1400_xtreme/pal_os_timer.o 

C_DEPS += \
./optiga-trust-m-lib/xmc1400_xtreme/pal.d \
./optiga-trust-m-lib/xmc1400_xtreme/pal_gpio.d \
./optiga-trust-m-lib/xmc1400_xtreme/pal_i2c.d \
./optiga-trust-m-lib/xmc1400_xtreme/pal_ifx_i2c_config.d \
./optiga-trust-m-lib/xmc1400_xtreme/pal_logger.d \
./optiga-trust-m-lib/xmc1400_xtreme/pal_os_datastore.d \
./optiga-trust-m-lib/xmc1400_xtreme/pal_os_event.d \
./optiga-trust-m-lib/xmc1400_xtreme/pal_os_lock.d \
./optiga-trust-m-lib/xmc1400_xtreme/pal_os_timer.d 


# Each subdirectory must supply rules for building sources it contributes
optiga-trust-m-lib/xmc1400_xtreme/pal.o: //MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc1400_xtreme/pal_gpio.o: //MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc1400_xtreme/pal_i2c.o: //MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc1400_xtreme/pal_ifx_i2c_config.o: //MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal_ifx_i2c_config.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc1400_xtreme/pal_logger.o: //MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal_logger.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc1400_xtreme/pal_os_datastore.o: //MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal_os_datastore.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc1400_xtreme/pal_os_event.o: //MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal_os_event.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc1400_xtreme/pal_os_lock.o: //MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal_os_lock.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc1400_xtreme/pal_os_timer.o: //MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc1400_xtreme/pal_os_timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

