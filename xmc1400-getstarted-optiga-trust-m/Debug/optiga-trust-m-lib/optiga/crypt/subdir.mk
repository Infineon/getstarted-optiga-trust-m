################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Workspace/DAVE-4.4.2-64Bit/getstarted-optiga-trust-m/optiga-trust-m/optiga/crypt/optiga_crypt.c 

OBJS += \
./optiga-trust-m-lib/optiga/crypt/optiga_crypt.o 

C_DEPS += \
./optiga-trust-m-lib/optiga/crypt/optiga_crypt.d 


# Each subdirectory must supply rules for building sources it contributes
optiga-trust-m-lib/optiga/crypt/optiga_crypt.o: C:/Workspace/DAVE-4.4.2-64Bit/getstarted-optiga-trust-m/optiga-trust-m/optiga/crypt/optiga_crypt.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/DAVE-4.4.2-64Bit/getstarted-optiga-trust-m/optiga-trust-m/examples/optiga/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/getstarted-optiga-trust-m/optiga-trust-m/externals/mbedtls/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/getstarted-optiga-trust-m/optiga-trust-m/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

