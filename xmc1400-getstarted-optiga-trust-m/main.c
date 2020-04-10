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
#include "optiga/optiga_crypt.h"
#include "optiga/optiga_util.h"
#include "optiga/common/optiga_lib_logger.h"
#include "optiga/pal/pal_os_event.h"
#include "optiga/pal/pal.h"
#include "optiga/pal/pal_os_timer.h"
#include "optiga_example.h"
#include "optiga/pal/pal_logger.h"

extern void optiga_shell_wait_for_user(void);
extern void optiga_shell_begin(void);

extern pal_logger_t cunit_console;

#define TICKS_PER_SECOND	1000


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
    uint8_t return_value = 0;

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
    SysTick_Config(SystemCoreClock / TICKS_PER_SECOND);

    do
    {

        if(PAL_STATUS_SUCCESS != pal_logger_init(&cunit_console))
        {
            break;
        }

        pal_os_timer_delay_in_milliseconds(100);

        optiga_shell_wait_for_user();
        optiga_shell_begin();

    }while (FALSE);

    return return_value;
}


//${jlink_path}/${jlink_gdbserver}

/**
* @}
*/
