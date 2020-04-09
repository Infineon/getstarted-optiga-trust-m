/*********************************************************************************************************************
* DAVE APP Name : CLOCK_XMC1       APP Version: 4.0.20
*
* NOTE:
* This file is generated by DAVE. Any manual modification done to this file will be lost when the code is regenerated.
*********************************************************************************************************************/

/**
 * @cond
 ***********************************************************************************************************************
 *
 * Copyright (c) 2015, Infineon Technologies AG
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,are permitted provided that the
 * following conditions are met:
 *
 *   Redistributions of source code must retain the above copyright notice, this list of conditions and the  following
 *   disclaimer.
 *
 *   Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the
 *   following disclaimer in the documentation and/or other materials provided with the distribution.
 *
 *   Neither the name of the copyright holders nor the names of its contributors may be used to endorse or promote
 *   products derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
 * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT  OF THE
 * USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * To improve the quality of the software, users are encouraged to share modifications, enhancements or bug fixes
 * with Infineon Technologies AG (dave@infineon.com).
 ***********************************************************************************************************************
 *
 * Change History
 * --------------
 * 2015-02-16:
 *     - Initial version for DAVEv4. <BR>
 * 2015-05-08:
 *     - Internal structure object name has changed. <br>
 * 2015-10-15:
 *     - Updated for changes made in GUI combo options. <br>
 * 2016-07-08:
 *     - Fixed incorrect case for an included header.<br>
 *
 * @endcond
 *
 */
/***********************************************************************************************************************
 * HEADER FILES
 **********************************************************************************************************************/
#include "clock_xmc1.h"

/**********************************************************************************************************************
* DATA STRUCTURES
**********************************************************************************************************************/
CLOCK_XMC1_t CLOCK_XMC1_0 =
{
  .init_status = false
};

/**********************************************************************************************************************
* API IMPLEMENTATION
**********************************************************************************************************************/
void SystemCoreClockSetup(void)
{
/* LOCAL DATA STRUCTURES */
const XMC_SCU_CLOCK_CONFIG_t CLOCK_XMC1_0_CONFIG =
{
  .pclk_src = XMC_SCU_CLOCK_PCLKSRC_DOUBLE_MCLK, 
  .rtc_src = XMC_SCU_CLOCK_RTCCLKSRC_DCO2,    
  .fdiv = 0U,  /**< 8/10 Bit Fractional divider */
  .idiv = 1U,  /**< 8 Bit integer divider */

  .dclk_src = XMC_SCU_CLOCK_DCLKSRC_DCO1,
  .oschp_mode = XMC_SCU_CLOCK_OSCHP_MODE_DISABLED,
  .osclp_mode = XMC_SCU_CLOCK_OSCLP_MODE_DISABLED

};

  /* Configure FDIV, IDIV, PCLKSEL dividers*/
  XMC_SCU_CLOCK_Init(&CLOCK_XMC1_0_CONFIG);
}

