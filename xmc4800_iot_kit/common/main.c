/**
INFINEON_OPTIGA_SOURCE_CODE_BOILER_PLATE
*
* \file main_xmc4800_sample.c
*
* \brief   This sample demonstrates OPTIGA use cases.
*
* \ingroup grOptigaExamples
*
* @{
*/
//Declarations from DAVE Code Generation (includes SFR declaration)
#include <DAVE.h>


/**
 * This function is the entry point of sample.
 *
 * \retval
 *  0 on success
 *  1 on failure
 */

int main(void)
{
    DAVE_STATUS_t status;

    // Initialization of DAVE Apps
    status = DAVE_Init(); /* Initialization of DAVE APPs  */
    if (status == DAVE_STATUS_FAILURE)
    {
        /* Placeholder for error handler code. The while loop below can be replaced with an user error handler. */
        XMC_DEBUG("DAVE APPs initialization failed\n");

        while (1U)
        {

        }
    }

	while(1U)
	{

	}

    return 1;
}

/**
 * Below callback functions are added to remove build error for optiga_configuration
 *
 */
void cunit_console_uart_end_of_transmit_callback(void)
{

}

void cunit_console_uart_end_of_receive_callback(void)
{

}

void i2c_master_end_of_transmit_callback(void)
{

}

void i2c_master_end_of_receive_callback(void)
{

}

void i2c_master_nack_received_callback(void)
{

}

void i2c_master_arbitration_lost_callback(void)
{

}
void i2c_master_error_detected_callback(void)
{

}

/**
* @}
*/
