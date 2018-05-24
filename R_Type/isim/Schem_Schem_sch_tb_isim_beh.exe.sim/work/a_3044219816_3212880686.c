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
static const char *ng0 = "C:/Users/Pro/Documents/Xilinx/R_Type/ALU_Control.vhd";



static void work_a_3044219816_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;
    unsigned int t19;
    unsigned char t20;
    unsigned char t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4964);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB7:    t5 = (t0 + 4966);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB8:    t8 = (t0 + 4968);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB9:
LAB6:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 5084);
    t3 = (t0 + 3072);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(38, ng0);
    t11 = (t0 + 4970);
    t13 = (t0 + 3072);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB2;

LAB4:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 4974);
    t3 = (t0 + 3072);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4978);
    t18 = 1;
    if (6U == 6U)
        goto LAB14;

LAB15:    t18 = 0;

LAB16:    if (t18 != 0)
        goto LAB11;

LAB13:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4988);
    t18 = 1;
    if (6U == 6U)
        goto LAB22;

LAB23:    t18 = 0;

LAB24:    if (t18 != 0)
        goto LAB20;

LAB21:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4998);
    t18 = 1;
    if (6U == 6U)
        goto LAB30;

LAB31:    t18 = 0;

LAB32:    if (t18 != 0)
        goto LAB28;

LAB29:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5008);
    t18 = 1;
    if (6U == 6U)
        goto LAB38;

LAB39:    t18 = 0;

LAB40:    if (t18 != 0)
        goto LAB36;

LAB37:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5018);
    t20 = 1;
    if (6U == 6U)
        goto LAB49;

LAB50:    t20 = 0;

LAB51:    if (t20 == 1)
        goto LAB46;

LAB47:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t8 = (t0 + 5024);
    t21 = 1;
    if (6U == 6U)
        goto LAB55;

LAB56:    t21 = 0;

LAB57:    t18 = t21;

LAB48:    if (t18 != 0)
        goto LAB44;

LAB45:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5034);
    t20 = 1;
    if (6U == 6U)
        goto LAB66;

LAB67:    t20 = 0;

LAB68:    if (t20 == 1)
        goto LAB63;

LAB64:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t8 = (t0 + 5040);
    t21 = 1;
    if (6U == 6U)
        goto LAB72;

LAB73:    t21 = 0;

LAB74:    t18 = t21;

LAB65:    if (t18 != 0)
        goto LAB61;

LAB62:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5050);
    t18 = 1;
    if (6U == 6U)
        goto LAB80;

LAB81:    t18 = 0;

LAB82:    if (t18 != 0)
        goto LAB78;

LAB79:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5060);
    t18 = 1;
    if (6U == 6U)
        goto LAB88;

LAB89:    t18 = 0;

LAB90:    if (t18 != 0)
        goto LAB86;

LAB87:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5070);
    t18 = 1;
    if (6U == 6U)
        goto LAB96;

LAB97:    t18 = 0;

LAB98:    if (t18 != 0)
        goto LAB94;

LAB95:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 5080);
    t3 = (t0 + 3072);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB12:    goto LAB2;

LAB10:;
LAB11:    xsi_set_current_line(45, ng0);
    t8 = (t0 + 4984);
    t11 = (t0 + 3072);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 4U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB14:    t19 = 0;

LAB17:    if (t19 < 6U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t5 = (t2 + t19);
    t6 = (t1 + t19);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB15;

LAB19:    t19 = (t19 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(48, ng0);
    t8 = (t0 + 4994);
    t11 = (t0 + 3072);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 4U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB22:    t19 = 0;

LAB25:    if (t19 < 6U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t5 = (t2 + t19);
    t6 = (t1 + t19);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB23;

LAB27:    t19 = (t19 + 1);
    goto LAB25;

LAB28:    xsi_set_current_line(51, ng0);
    t8 = (t0 + 5004);
    t11 = (t0 + 3072);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 4U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB30:    t19 = 0;

LAB33:    if (t19 < 6U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t5 = (t2 + t19);
    t6 = (t1 + t19);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB31;

LAB35:    t19 = (t19 + 1);
    goto LAB33;

LAB36:    xsi_set_current_line(54, ng0);
    t8 = (t0 + 5014);
    t11 = (t0 + 3072);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 4U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB38:    t19 = 0;

LAB41:    if (t19 < 6U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t5 = (t2 + t19);
    t6 = (t1 + t19);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB39;

LAB43:    t19 = (t19 + 1);
    goto LAB41;

LAB44:    xsi_set_current_line(57, ng0);
    t14 = (t0 + 5030);
    t16 = (t0 + 3072);
    t17 = (t16 + 56U);
    t23 = *((char **)t17);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t14, 4U);
    xsi_driver_first_trans_fast_port(t16);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB46:    t18 = (unsigned char)1;
    goto LAB48;

LAB49:    t19 = 0;

LAB52:    if (t19 < 6U)
        goto LAB53;
    else
        goto LAB51;

LAB53:    t5 = (t2 + t19);
    t6 = (t1 + t19);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB50;

LAB54:    t19 = (t19 + 1);
    goto LAB52;

LAB55:    t22 = 0;

LAB58:    if (t22 < 6U)
        goto LAB59;
    else
        goto LAB57;

LAB59:    t12 = (t9 + t22);
    t13 = (t8 + t22);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB56;

LAB60:    t22 = (t22 + 1);
    goto LAB58;

LAB61:    xsi_set_current_line(60, ng0);
    t14 = (t0 + 5046);
    t16 = (t0 + 3072);
    t17 = (t16 + 56U);
    t23 = *((char **)t17);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t14, 4U);
    xsi_driver_first_trans_fast_port(t16);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB63:    t18 = (unsigned char)1;
    goto LAB65;

LAB66:    t19 = 0;

LAB69:    if (t19 < 6U)
        goto LAB70;
    else
        goto LAB68;

LAB70:    t5 = (t2 + t19);
    t6 = (t1 + t19);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB67;

LAB71:    t19 = (t19 + 1);
    goto LAB69;

LAB72:    t22 = 0;

LAB75:    if (t22 < 6U)
        goto LAB76;
    else
        goto LAB74;

LAB76:    t12 = (t9 + t22);
    t13 = (t8 + t22);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB73;

LAB77:    t22 = (t22 + 1);
    goto LAB75;

LAB78:    xsi_set_current_line(63, ng0);
    t8 = (t0 + 5056);
    t11 = (t0 + 3072);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 4U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB80:    t19 = 0;

LAB83:    if (t19 < 6U)
        goto LAB84;
    else
        goto LAB82;

LAB84:    t5 = (t2 + t19);
    t6 = (t1 + t19);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB81;

LAB85:    t19 = (t19 + 1);
    goto LAB83;

LAB86:    xsi_set_current_line(66, ng0);
    t8 = (t0 + 5066);
    t11 = (t0 + 3072);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 4U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB88:    t19 = 0;

LAB91:    if (t19 < 6U)
        goto LAB92;
    else
        goto LAB90;

LAB92:    t5 = (t2 + t19);
    t6 = (t1 + t19);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB89;

LAB93:    t19 = (t19 + 1);
    goto LAB91;

LAB94:    xsi_set_current_line(69, ng0);
    t8 = (t0 + 3136);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 5076);
    t3 = (t0 + 3072);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB12;

LAB96:    t19 = 0;

LAB99:    if (t19 < 6U)
        goto LAB100;
    else
        goto LAB98;

LAB100:    t5 = (t2 + t19);
    t6 = (t1 + t19);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB97;

LAB101:    t19 = (t19 + 1);
    goto LAB99;

}


extern void work_a_3044219816_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3044219816_3212880686_p_0};
	xsi_register_didat("work_a_3044219816_3212880686", "isim/Schem_Schem_sch_tb_isim_beh.exe.sim/work/a_3044219816_3212880686.didat");
	xsi_register_executes(pe);
}
