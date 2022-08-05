/**
* \copyright
* MIT License
*
* Copyright (c) 2020 Infineon Technologies AG
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE
*
* \endcopyright
*
* \author Infineon Technologies AG
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
