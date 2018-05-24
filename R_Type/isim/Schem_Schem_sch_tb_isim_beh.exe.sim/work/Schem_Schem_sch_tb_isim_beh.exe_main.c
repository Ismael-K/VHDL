/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_1242562249;
char *IEEE_P_3620187407;
char *STD_STANDARD;
char *IEEE_P_2592010699;
char *IEEE_P_3499444699;
char *UNISIM_P_0947159679;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_1991350011_2372691052_init();
    work_a_0419013011_3212880686_init();
    work_a_4100369738_3212880686_init();
    work_a_1111616105_3212880686_init();
    work_a_3044219816_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_3936590544_3212880686_init();
    work_a_2655510325_3212880686_init();
    work_a_3222946569_3212880686_init();
    work_a_0817802551_3212880686_init();
    work_a_2580317397_3212880686_init();
    work_a_3006959317_3212880686_init();
    work_a_1209654365_3212880686_init();
    work_a_2252756781_3212880686_init();
    work_a_3073701636_3212880686_init();
    work_a_0822367577_3212880686_init();
    work_a_2973221874_3212880686_init();
    work_a_2215391401_3212880686_init();
    work_a_1390847076_3212880686_init();
    work_a_2636066493_3212880686_init();
    work_a_4097634782_3212880686_init();


    xsi_register_tops("work_a_4097634782_3212880686");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");

    return xsi_run_simulation(argc, argv);

}
