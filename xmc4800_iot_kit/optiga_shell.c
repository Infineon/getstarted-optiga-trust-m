/**
* \copyright
* MIT License
*
* Copyright (c) 2019 Infineon Technologies AG
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
**/

#include <DAVE.h>
#include "optiga/optiga_crypt.h"
#include "optiga/optiga_util.h"
#include "optiga/common/optiga_lib_logger.h"
#include "optiga/pal/pal_os_event.h"
#include "optiga/pal/pal.h"
#include "optiga/pal/pal_os_timer.h"
#include "optiga_example.h"
#include "optiga/pal/pal_logger.h"

#define OPTIGA_SHELL		"optiga --"
#define OPTIGA_SHELL_MODULE "[optiga shell]  : "
#define OPTIGA_SHELL_LOG_MESSAGE(msg) \
							optiga_lib_print_message(msg, OPTIGA_SHELL_MODULE, OPTIGA_LIB_LOGGER_COLOR_LIGHT_GREEN);

void example_optiga_crypt_hash (void);
void example_optiga_crypt_ecc_generate_keypair(void);
void example_optiga_crypt_ecdsa_sign(void);
void example_optiga_crypt_ecdsa_verify(void);
void example_optiga_crypt_ecdh(void);
void example_optiga_crypt_random(void);
void example_optiga_crypt_tls_prf_sha256(void);
void example_optiga_util_read_data(void);
void example_optiga_util_write_data(void);
void example_optiga_crypt_rsa_generate_keypair(void);
void example_optiga_crypt_rsa_sign(void);
void example_optiga_crypt_rsa_verify(void);
void example_optiga_crypt_rsa_decrypt_and_export(void);
void example_optiga_crypt_rsa_decrypt_and_store(void);
void example_optiga_crypt_rsa_encrypt_message(void);
void example_optiga_crypt_rsa_encrypt_session(void);
void example_optiga_util_update_count(void);
void example_optiga_util_protected_update(void);
void example_pair_host_and_optiga_using_pre_shared_secret(void);
void example_optiga_util_hibernate_restore(void);

extern pal_logger_t logger_console;
/**
 * Callback when optiga_util_xxxx operation is completed asynchronously
 */
static volatile optiga_lib_status_t optiga_lib_status;
static void optiga_util_callback(void * context, optiga_lib_status_t return_status)
{
	optiga_lib_status = return_status;
}

optiga_util_t * me_util = NULL;

typedef struct optiga_example_cmd
{
	const char_t * cmd_description;
	const char_t * cmd_options;
	void (*cmd_handler)();
}optiga_example_cmd_t;

static void optiga_shell_init()
{
	optiga_lib_status_t return_status;
	uint16_t optiga_oid = 0xE0C4;
	uint8_t required_current = 15;

	do
	{
		//Create an instance of optiga_util to open the application on OPTIGA.
		me_util = optiga_util_create(0, optiga_util_callback, NULL);

		OPTIGA_EXAMPLE_LOG_MESSAGE("Initializing OPTIGA for example demonstration...\n");
		/**
		 * Open the application on OPTIGA which is a precondition to perform any other operations
		 * using optiga_util_open_application
		 */
		optiga_lib_status = OPTIGA_LIB_BUSY;
		return_status = optiga_util_open_application(me_util, 0);

		if (OPTIGA_LIB_SUCCESS != return_status)
		{
			break;
		}
		while (optiga_lib_status == OPTIGA_LIB_BUSY)
		{
			//Wait until the optiga_util_open_application is completed
		}
		if (OPTIGA_LIB_SUCCESS != optiga_lib_status)
		{
			//optiga util open application failed
			break;
		}

		OPTIGA_SHELL_LOG_MESSAGE("Initializing OPTIGA completed...\n\n");
		OPTIGA_SHELL_LOG_MESSAGE("Begin pairing of host and OPTIGA...");
		// Usercase: Generate the pre-shared secret on host and write it to OPTIGA
		example_pair_host_and_optiga_using_pre_shared_secret();
		OPTIGA_SHELL_LOG_MESSAGE("Pairing of host and OPTIGA completed...");
		// Usercase: Generate the pre-shared secret on host and write it to OPTIGA
        return_status = optiga_util_write_data(me_util,
                                               optiga_oid,
                                               OPTIGA_UTIL_ERASE_AND_WRITE,
                                               0,
											   &required_current,
                                               1);

        if (OPTIGA_LIB_SUCCESS != return_status)
        {
            break;
        }

        while (OPTIGA_LIB_BUSY == optiga_lib_status)
        {
            //Wait until the optiga_util_write_data operation is completed
        }
        OPTIGA_SHELL_LOG_MESSAGE("Setting current limitation to minimum...");
        OPTIGA_SHELL_LOG_MESSAGE("Starting OPTIGA example demonstration..\n");
	}while(FALSE);
}

static void optiga_shell_deinit()
{
	optiga_lib_status_t return_status;
	do
	{
		/**
		 * Close the application on OPTIGA after all the operations are executed
		 * using optiga_util_close_application
		 */
		optiga_lib_status = OPTIGA_LIB_BUSY;
		return_status = optiga_util_close_application(me_util, 0);

		if (OPTIGA_LIB_SUCCESS != return_status)
		{
			break;
		}

		while (optiga_lib_status == OPTIGA_LIB_BUSY)
		{
			//Wait until the optiga_util_close_application is completed
		}

		if (OPTIGA_LIB_SUCCESS != optiga_lib_status)
		{
			//optiga util close application failed
			break;
		}

		// destroy util and crypt instances
		optiga_util_destroy(me_util);
	}while(FALSE);
}

static void optiga_shell_util_read_data()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting Read Data/Metadata Example");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Read Certificate (~500 bytes)");
	OPTIGA_SHELL_LOG_MESSAGE("2 Step: Read Certificate Metadata");
	example_optiga_util_read_data();
}
static void optiga_shell_util_write_data()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting Write Data/Metadata Example");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Write Sample Certificate in Trust Anchor Data Object (640 bytes)");
	OPTIGA_SHELL_LOG_MESSAGE("2 Step: Write new Metadata");
	example_optiga_util_write_data();
}
static void optiga_shell_pair_host_optiga()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting Pairing of Host and Trust M Example");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Read and Check existing Metadata for the Binding Secret");
	OPTIGA_SHELL_LOG_MESSAGE("2 Step: Generate Random for the new Binding Secret");
	OPTIGA_SHELL_LOG_MESSAGE("3 Step: Write new Binding Secret");
	OPTIGA_SHELL_LOG_MESSAGE("4 Step: Store new Binding Secret on the Host");
	example_pair_host_and_optiga_using_pre_shared_secret();
}
static void optiga_shell_util_hibernate_restore()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting Hibernate and Restore Example");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Open Application on the security chip");
	OPTIGA_SHELL_LOG_MESSAGE("2 Step: Pair the host and the security chip");
	OPTIGA_SHELL_LOG_MESSAGE("3 Step: Select Protected I2C Connection");
	OPTIGA_SHELL_LOG_MESSAGE("4 Step: Generate ECC NIST P-256 Key pair and store it in Session Data Object, export the public key");
	OPTIGA_SHELL_LOG_MESSAGE("5 Step: Check Security Event Counter and wait till it reaches 0");
	OPTIGA_SHELL_LOG_MESSAGE("6 Step: Perform Close application with Hibernate parameter set to True");
	OPTIGA_SHELL_LOG_MESSAGE("7 Step: Open Application on the security chip");
	OPTIGA_SHELL_LOG_MESSAGE("8 Step: Sign prepared data with private key stored in Session Data Object");
	OPTIGA_SHELL_LOG_MESSAGE("9 Step: Verify the signature with the public key generated previously");
	OPTIGA_SHELL_LOG_MESSAGE("10 Step: Close Applicaiton on the chip");
	OPTIGA_SHELL_LOG_MESSAGE("Important note: To continue with other examples you need to call the init parameter once again");
	example_optiga_util_hibernate_restore();
}
static void optiga_shell_util_update_count()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting Update Counter Example");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Write Initial Counter Value");
	OPTIGA_SHELL_LOG_MESSAGE("2 Step: Increase Counter Object");
	example_optiga_util_update_count();
}
static void optiga_shell_util_protected_update()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting Protected Update Example");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Update Metadata for the Object to be updated and the Trust Anchor used to verify the update");
	OPTIGA_SHELL_LOG_MESSAGE("2 Step: Write Trust Anchor used by the Trust M to verify the update");
	OPTIGA_SHELL_LOG_MESSAGE("3 Step: Start Protected update with prepared manifest and fragments");
	example_optiga_util_protected_update();
}
static void optiga_shell_crypt_hash()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting Hash Example");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Hash given data with Start, Update and Finalize calls");
	example_optiga_crypt_hash();
}
static void optiga_shell_crypt_tls_prf_sha256()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting TLS PRF SHA256 (Key Deriviation) Example");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Write prepared Shared Secret into an Arbitrary Data Object");
	OPTIGA_SHELL_LOG_MESSAGE("2 Step: Update Metadata of the Object to use the Arbitrary Data Object only via Shielded I2C Connection");
	OPTIGA_SHELL_LOG_MESSAGE("3 Step: Generate Shared Secret using the Shared Secret from the Arbitrary Data Object");
	OPTIGA_SHELL_LOG_MESSAGE("4 Step: Restore Metadata of the Arbitrary Data Object");
	example_optiga_crypt_tls_prf_sha256();
}
static void optiga_shell_crypt_random()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting Generate Random Example");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Generate 32 bytes random");
	example_optiga_crypt_random();
}
static void optiga_shell_crypt_ecc_generate_keypair()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting generate ECC Key Example");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Generate ECC NIST P-256 Key Pair and export the public key");
	example_optiga_crypt_ecc_generate_keypair();
}
static void optiga_shell_crypt_ecdh()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting Elliptic-curve Diffie–Hellman (ECDH) Key Agreement Protocol Example");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Select Protected I2C Connection");
	OPTIGA_SHELL_LOG_MESSAGE("2 Step: Generate new ECC NIST P-256 Key Pair");
	OPTIGA_SHELL_LOG_MESSAGE("3 Step: Select Protected I2C Connection");
	OPTIGA_SHELL_LOG_MESSAGE("4 Step: Generate Shared Secret and export it");
	example_optiga_crypt_ecdh();
}
static void optiga_shell_crypt_ecdsa_sign()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting signing example for Elliptic-curve Digital Signature Algorithm (ECDSA)");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Sign prepared Data and export the signature");
	example_optiga_crypt_ecdsa_sign();
}
static void optiga_shell_crypt_ecdsa_verify()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting verification example for Elliptic-curve Digital Signature Algorithm (ECDSA)");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Verify prepared signature, with prepared public key and digest");
	example_optiga_crypt_ecdsa_verify();
}
static void optiga_shell_crypt_rsa_sign()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting signing example for PKCS#1 Ver1.5 SHA256 Signature scheme (RSA)");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Sign prepared Data and export the signature");
	example_optiga_crypt_rsa_sign();
}
static void optiga_shell_crypt_rsa_verify()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting signing example for PKCS#1 Ver1.5 SHA256 Signature scheme (RSA)");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Verify prepared signature, with prepared public key and digest");
	example_optiga_crypt_rsa_verify();
}
static void optiga_shell_crypt_generate_keypair()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting generate RSA Key Example");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Generate RSA 1024 Key Pair and export the public key");
	example_optiga_crypt_rsa_generate_keypair();
}
static void optiga_shell_crypt_rsa_decrypt_and_export()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting Decrypt and Export Data with RSA Key Example");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Generate RSA 1024 Key Pair and export the public key");
	OPTIGA_SHELL_LOG_MESSAGE("2 Step: Encrypt a message with RSAES PKCS#1 Ver1.5 Scheme");
	OPTIGA_SHELL_LOG_MESSAGE("3 Step: Select Protected I2C Connection");
	OPTIGA_SHELL_LOG_MESSAGE("4 Step: Decrypt the message with RSAES PKCS#1 Ver1.5 Scheme and export it");
	example_optiga_crypt_rsa_decrypt_and_export();
}
static void optiga_shell_crypt_rsa_decrypt_and_store()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting Decrypt and Store Data on the chip with RSA Key Example");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Generate RSA 1024 Key Pair and export the public key");
	OPTIGA_SHELL_LOG_MESSAGE("2 Step: Generate 70 bytes RSA Pre master secret which is stored in acquired session OID");
	OPTIGA_SHELL_LOG_MESSAGE("3 Step: Select Protected I2C Connection");
	OPTIGA_SHELL_LOG_MESSAGE("4 Step: Encrypt Session Data with RSA Public Key");
	OPTIGA_SHELL_LOG_MESSAGE("5 Step: Decrypt the message with RSAES PKCS#1 Ver1.5 Scheme and store it on chip");
	example_optiga_crypt_rsa_decrypt_and_store();
}
static void optiga_shell_crypt_rsa_encrypt_message()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting Encrypt Data with RSA Key Example");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Encrypt a message with RSAES PKCS#1 Ver1.5 Scheme");
	example_optiga_crypt_rsa_encrypt_message();
}
static void optiga_shell_crypt_rsa_encrypt_session()
{
	OPTIGA_SHELL_LOG_MESSAGE("Starting Encrypt Data in Session Object on chip with RSA Key Example");
	OPTIGA_SHELL_LOG_MESSAGE("1 Step: Encrypt a message with RSAES PKCS#1 Ver1.5 Scheme stored on chip in Session Object");
	example_optiga_crypt_rsa_encrypt_session();
}

#define PRINT_PERFORMANCE_RESULTS(TESTCASE) \
		timestamp = pal_os_timer_get_time_in_milliseconds(); \
		TESTCASE(); \
		sprintf(buffer_string, "Example takes %d msec", (int) pal_os_timer_get_time_in_milliseconds() - timestamp);\
		OPTIGA_SHELL_LOG_MESSAGE(buffer_string); \
		optiga_lib_print_string_with_newline(""); \
		pal_os_timer_delay_in_milliseconds(2000);

static void optiga_shell_selftest()
{
	char buffer_string[30];
	int timestamp = pal_os_timer_get_time_in_milliseconds();

	PRINT_PERFORMANCE_RESULTS(optiga_shell_init);
	PRINT_PERFORMANCE_RESULTS(optiga_shell_util_read_data);
	PRINT_PERFORMANCE_RESULTS(optiga_shell_util_write_data);
	PRINT_PERFORMANCE_RESULTS(optiga_shell_pair_host_optiga);
	PRINT_PERFORMANCE_RESULTS(optiga_shell_util_update_count);
	PRINT_PERFORMANCE_RESULTS(optiga_shell_util_protected_update);

	PRINT_PERFORMANCE_RESULTS(optiga_shell_crypt_hash);
	PRINT_PERFORMANCE_RESULTS(optiga_shell_crypt_tls_prf_sha256);
	PRINT_PERFORMANCE_RESULTS(optiga_shell_crypt_random);

	PRINT_PERFORMANCE_RESULTS(optiga_shell_crypt_ecc_generate_keypair);
	PRINT_PERFORMANCE_RESULTS(optiga_shell_crypt_ecdsa_sign);
	PRINT_PERFORMANCE_RESULTS(optiga_shell_crypt_ecdsa_verify);
	PRINT_PERFORMANCE_RESULTS(optiga_shell_crypt_ecdh);

	PRINT_PERFORMANCE_RESULTS(optiga_shell_crypt_generate_keypair);
	PRINT_PERFORMANCE_RESULTS(optiga_shell_crypt_rsa_sign);
	PRINT_PERFORMANCE_RESULTS(optiga_shell_crypt_rsa_verify);
	PRINT_PERFORMANCE_RESULTS(optiga_shell_crypt_rsa_encrypt_message);
	PRINT_PERFORMANCE_RESULTS(optiga_shell_crypt_rsa_encrypt_session);
	PRINT_PERFORMANCE_RESULTS(optiga_shell_crypt_rsa_decrypt_and_store);
	PRINT_PERFORMANCE_RESULTS(optiga_shell_crypt_rsa_decrypt_and_export);
}


static void optiga_shell_show_usage();


optiga_example_cmd_t optiga_cmds [] =
{
		{"",                                        "help",			optiga_shell_show_usage},
		{"    initialize optiga         : "OPTIGA_SHELL,"init",			optiga_shell_init},
		{"    de-initialize optiga      : "OPTIGA_SHELL,"deinit",		optiga_shell_deinit},
		{"    run all tests at once     : "OPTIGA_SHELL,"selftest",		optiga_shell_selftest},
		{"    read data                 : "OPTIGA_SHELL,"readdata",		optiga_shell_util_read_data},
		{"    write data                : "OPTIGA_SHELL,"writedata",	optiga_shell_util_write_data},
		{"    binding host with optiga  : "OPTIGA_SHELL,"bind",			optiga_shell_pair_host_optiga},
		{"    hibernate and restore     : "OPTIGA_SHELL,"hibernate",	optiga_shell_util_hibernate_restore},
		{"    update counter            : "OPTIGA_SHELL,"counter",		optiga_shell_util_update_count},
		{"    protected update          : "OPTIGA_SHELL,"protected",	optiga_shell_util_protected_update},

		{"    hashing of data           : "OPTIGA_SHELL,"hash",			optiga_shell_crypt_hash},
		{"    tls pfr sha256            : "OPTIGA_SHELL,"prf",			optiga_shell_crypt_tls_prf_sha256},
		{"    random number generation  : "OPTIGA_SHELL,"random",		optiga_shell_crypt_random},

		{"    ecc key pair generation   : "OPTIGA_SHELL,"ecckeygen",	optiga_shell_crypt_ecc_generate_keypair},
		{"    ecdsa sign                : "OPTIGA_SHELL,"ecdsasign",	optiga_shell_crypt_ecdsa_sign},
		{"    ecdsa verify sign         : "OPTIGA_SHELL,"ecdsaverify",	optiga_shell_crypt_ecdsa_verify},
		{"    ecc diffie hellman        : "OPTIGA_SHELL,"ecdh",			optiga_shell_crypt_ecdh},

		{"    rsa key pair generation   : "OPTIGA_SHELL,"rsakeygen",	optiga_shell_crypt_generate_keypair},
		{"    rsa sign                  : "OPTIGA_SHELL,"rsaasign",		optiga_shell_crypt_rsa_sign},
		{"    rsa verify sign           : "OPTIGA_SHELL,"rsaverify",	optiga_shell_crypt_rsa_verify},
		{"    rsa encrypt message       : "OPTIGA_SHELL,"rsaencmsg",	optiga_shell_crypt_rsa_encrypt_message},
		{"    rsa encrypt session       : "OPTIGA_SHELL,"rsaencsession",optiga_shell_crypt_rsa_encrypt_session},
		{"    rsa decrypt and store     : "OPTIGA_SHELL,"rsadecstore",	optiga_shell_crypt_rsa_decrypt_and_store},
		{"    rsa decrypt and export    : "OPTIGA_SHELL,"rsaencexp",	optiga_shell_crypt_rsa_decrypt_and_export},
};

#define OPTIGA_SIZE_OF_CMDS			(sizeof(optiga_cmds)/sizeof(optiga_example_cmd_t))

static void optiga_shell_show_usage()
{
	uint8_t number_of_cmds = OPTIGA_SIZE_OF_CMDS;
	uint8_t index = 0;
	optiga_example_cmd_t * current_cmd;
	optiga_lib_print_string_with_newline("");
	optiga_lib_print_string_with_newline("    usage                : optiga -<cmd>");
	for(index = 0; index < number_of_cmds; index++)
	{
		current_cmd = &optiga_cmds[index];
		if(0 != strcmp("help",current_cmd->cmd_options))
		{
			optiga_lib_print_string(current_cmd->cmd_description);
			optiga_lib_print_string_with_newline(current_cmd->cmd_options);
		}
	}
}

static void optiga_shell_trim_cmd(char_t * user_cmd)
{
	char_t* i = user_cmd;
	char_t* j = user_cmd;
	while(*j != 0)
	{
		*i = *j++;
		if(*i != ' ')
			i++;
	}
	*i = 0;
	if(strlen(user_cmd)>strlen(OPTIGA_SHELL))
	{
		strcpy(user_cmd,user_cmd+strlen(OPTIGA_SHELL)-1);
	}
}

#include <stdio.h>
static void optiga_shell_execute_example(char_t * user_cmd)
{
	uint8_t number_of_cmds = OPTIGA_SIZE_OF_CMDS;
	uint8_t index = 0,cmd_found = 0;
	optiga_example_cmd_t * current_cmd;

	optiga_shell_trim_cmd(user_cmd);

	for(index = 0; index < number_of_cmds; index++)
	{
		current_cmd = &optiga_cmds[index];
		if((0 == strcmp(user_cmd,current_cmd->cmd_options)))
		{
			if(NULL != current_cmd->cmd_handler)
			{
				int timestamp = pal_os_timer_get_time_in_milliseconds();
				current_cmd->cmd_handler();
				char buffer_string[30];
				sprintf(buffer_string, "Example takes %d msec", (int) pal_os_timer_get_time_in_milliseconds() - timestamp);
				OPTIGA_EXAMPLE_LOG_MESSAGE(buffer_string);
				optiga_lib_print_string_with_newline("");
				cmd_found = 1;
				break;
			}
			else
			{
				optiga_lib_print_string_with_newline("No example exists for this request");
				break;
			}
		}
	}
	if(!cmd_found)
	{
		optiga_shell_show_usage();
	}

}

static void optiga_shell_show_prompt()
{
	optiga_lib_print_string("$");
}

void optiga_shell_begin(void)
{
	uint8_t ch = 0;
	char_t user_cmd[50];
	uint8_t index = 0;

	optiga_shell_show_prompt();
	optiga_shell_show_usage();
	optiga_shell_show_prompt();

	while(TRUE)
	{
		if (0 == pal_logger_read(&logger_console,&ch,1))
		{

			if(ch == 0x0d || ch == 0x0a)
			{
				user_cmd[index++] = 0;
				index = 0;
				optiga_lib_print_string_with_newline("");
				//start cmd parsing
				optiga_shell_execute_example((char_t * )&user_cmd);
				optiga_shell_show_prompt();
			}
			else
			{
				//keep adding
				pal_logger_write(&logger_console, &ch, 1);
				user_cmd[index++] = ch;
			}
		}
	}
}

void optiga_shell_wait_for_user(void)
{
	uint16_t bytes = 0;
	uint8_t ch = 0;

	while(1U)
	{
		bytes = USBD_VCOM_BytesReceived();
		if (bytes)
		{
			pal_logger_read(&logger_console,&ch,1);
			break;
		}
		else
		{
			optiga_lib_print_string_with_newline("Press any key to start optiga mini shell");
			pal_os_timer_delay_in_milliseconds(2000);
		}
		bytes = 0;
		CDC_Device_USBTask(&USBD_VCOM_cdc_interface);
	}
}
