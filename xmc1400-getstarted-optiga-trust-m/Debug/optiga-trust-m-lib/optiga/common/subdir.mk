################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/common/optiga_lib_common.c \
//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/common/optiga_lib_logger.c 

OBJS += \
./optiga-trust-m-lib/optiga/common/optiga_lib_common.o \
./optiga-trust-m-lib/optiga/common/optiga_lib_logger.o 

C_DEPS += \
./optiga-trust-m-lib/optiga/common/optiga_lib_common.d \
./optiga-trust-m-lib/optiga/common/optiga_lib_logger.d 


# Each subdirectory must supply rules for building sources it contributes
optiga-trust-m-lib/optiga/common/optiga_lib_common.o: //MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/common/optiga_lib_common.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/optiga/common/optiga_lib_logger.o: //MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/common/optiga_lib_logger.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

