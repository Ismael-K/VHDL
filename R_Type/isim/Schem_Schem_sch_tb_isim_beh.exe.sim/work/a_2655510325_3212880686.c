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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Pro/Documents/Xilinx/R_Type/sign_extn.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2655510325_3212880686_p_0(char *t0)
{
    char t14[16];
    char t16[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    static char *nl0[] = {&&LAB7, &&LAB7, &&LAB6, &&LAB5, &&LAB7, &&LAB7, &&LAB7, &&LAB7, &&LAB7};

LAB0:    t1 = (t0 + 2352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (15 - 15);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (char *)((nl0) + t8);
    goto **((char **)t9);

LAB4:    xsi_set_current_line(32, ng0);

LAB14:    t2 = (t0 + 2672);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB15;

LAB1:    return;
LAB5:    xsi_set_current_line(33, ng0);
    t10 = (t0 + 4356);
    t12 = (t0 + 1032U);
    t13 = *((char **)t12);
    t15 = ((IEEE_P_2592010699) + 4024);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 0;
    t18 = (t17 + 4U);
    *((int *)t18) = 15;
    t18 = (t17 + 8U);
    *((int *)t18) = 1;
    t19 = (15 - 0);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t18 = (t0 + 4300U);
    t12 = xsi_base_array_concat(t12, t14, t15, (char)97, t10, t16, (char)97, t13, t18, (char)101);
    t20 = (16U + 16U);
    t21 = (32U != t20);
    if (t21 == 1)
        goto LAB8;

LAB9:    t22 = (t0 + 2752);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t12, 32U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB4;

LAB6:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 4372);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t16 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 15;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t4 = (15 - 0);
    t5 = (t4 * 1);
    t5 = (t5 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t5;
    t13 = (t0 + 4300U);
    t9 = xsi_base_array_concat(t9, t14, t11, (char)97, t2, t16, (char)97, t10, t13, (char)101);
    t5 = (16U + 16U);
    t8 = (32U != t5);
    if (t8 == 1)
        goto LAB10;

LAB11:    t15 = (t0 + 2752);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t22 = (t18 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t9, 32U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB4;

LAB7:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 4388);
    t9 = (t0 + 2752);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB4;

LAB8:    xsi_size_not_matching(32U, t20, 0);
    goto LAB9;

LAB10:    xsi_size_not_matching(32U, t5, 0);
    goto LAB11;

LAB12:    t3 = (t0 + 2672);
    *((int *)t3) = 0;
    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}


extern void work_a_2655510325_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2655510325_3212880686_p_0};
	xsi_register_didat("work_a_2655510325_3212880686", "isim/Schem_Schem_sch_tb_isim_beh.exe.sim/work/a_2655510325_3212880686.didat");
	xsi_register_executes(pe);
}
