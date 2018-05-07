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
extern char *IEEE_P_2592010699;
static const char *ng1 = "C:/Users/igor/Projects/mpcu_bit_reverter/DATA_PATH_ACC.vhd";
extern char *IEEE_P_3499444699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


char *work_a_0435259162_3212880686_sub_3874760282_3057020925(char *t1, char *t2, char *t3, char *t4)
{
    char t5[128];
    char t6[24];
    char t9[16];
    char t26[16];
    char *t0;
    char *t7;
    unsigned int t8;
    char *t10;
    int t11;
    char *t12;
    int t13;
    char *t14;
    int t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t27;
    int t28;
    char *t29;
    int t30;
    char *t31;
    int t32;
    int t33;
    char *t34;
    char *t35;
    int t36;
    unsigned char t37;
    char *t38;
    char *t39;
    int t40;
    char *t41;
    int t42;
    char *t43;
    int t44;
    int t45;
    int t46;
    int t47;
    int t48;
    char *t49;
    char *t50;
    int t51;
    char *t52;
    int t53;
    int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    unsigned char t58;
    char *t59;
    char *t60;
    int t61;
    char *t62;
    int t63;
    int t64;
    unsigned int t65;
    char *t66;
    int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;

LAB0:    t7 = (t4 + 12U);
    t8 = *((unsigned int *)t7);
    t8 = (t8 * 1U);
    t10 = (t4 + 0U);
    t11 = *((int *)t10);
    t12 = (t4 + 4U);
    t13 = *((int *)t12);
    t14 = (t4 + 8U);
    t15 = *((int *)t14);
    t16 = (t9 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = t11;
    t17 = (t16 + 4U);
    *((int *)t17) = t13;
    t17 = (t16 + 8U);
    *((int *)t17) = t15;
    t18 = (t13 - t11);
    t19 = (t18 * t15);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t17 = (t5 + 4U);
    t20 = ((IEEE_P_2592010699) + 4024);
    t21 = (t17 + 88U);
    *((char **)t21) = t20;
    t22 = (char *)alloca(t8);
    t23 = (t17 + 56U);
    *((char **)t23) = t22;
    xsi_type_set_default_value(t20, t22, t9);
    t24 = (t17 + 64U);
    *((char **)t24) = t9;
    t25 = (t17 + 80U);
    *((unsigned int *)t25) = t8;
    t27 = (t4 + 4U);
    t28 = *((int *)t27);
    t29 = (t4 + 0U);
    t30 = *((int *)t29);
    t31 = (t4 + 8U);
    t32 = *((int *)t31);
    t33 = (t32 * -1);
    t34 = (t26 + 0U);
    t35 = (t34 + 0U);
    *((int *)t35) = t28;
    t35 = (t34 + 4U);
    *((int *)t35) = t30;
    t35 = (t34 + 8U);
    *((int *)t35) = t33;
    t36 = (t30 - t28);
    t19 = (t36 * t33);
    t19 = (t19 + 1);
    t35 = (t34 + 12U);
    *((unsigned int *)t35) = t19;
    t35 = (t6 + 4U);
    t37 = (t3 != 0);
    if (t37 == 1)
        goto LAB3;

LAB2:    t38 = (t6 + 12U);
    *((char **)t38) = t4;
    t39 = (t26 + 8U);
    t40 = *((int *)t39);
    t41 = (t26 + 4U);
    t42 = *((int *)t41);
    t43 = (t26 + 0U);
    t44 = *((int *)t43);
    t45 = t44;
    t46 = t42;

LAB4:    t47 = (t46 * t40);
    t48 = (t45 * t40);
    if (t48 <= t47)
        goto LAB5;

LAB7:    t7 = (t17 + 56U);
    t10 = *((char **)t7);
    t7 = (t9 + 12U);
    t8 = *((unsigned int *)t7);
    t8 = (t8 * 1U);
    t0 = xsi_get_transient_memory(t8);
    memcpy(t0, t10, t8);
    t12 = (t9 + 0U);
    t11 = *((int *)t12);
    t14 = (t9 + 4U);
    t13 = *((int *)t14);
    t16 = (t9 + 8U);
    t15 = *((int *)t16);
    t20 = (t2 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = t11;
    t21 = (t20 + 4U);
    *((int *)t21) = t13;
    t21 = (t20 + 8U);
    *((int *)t21) = t15;
    t18 = (t13 - t11);
    t19 = (t18 * t15);
    t19 = (t19 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t19;

LAB1:    return t0;
LAB3:    *((char **)t35) = t3;
    goto LAB2;

LAB5:    t49 = (t3 + 0);
    t50 = (t26 + 0U);
    t51 = *((int *)t50);
    t52 = (t26 + 8U);
    t53 = *((int *)t52);
    t54 = (t45 - t51);
    t19 = (t54 * t53);
    t55 = (1U * t19);
    t56 = (0 + t55);
    t57 = (t49 + t56);
    t58 = *((unsigned char *)t57);
    t59 = (t17 + 56U);
    t60 = *((char **)t59);
    t59 = (t9 + 0U);
    t61 = *((int *)t59);
    t62 = (t9 + 8U);
    t63 = *((int *)t62);
    t64 = (t45 - t61);
    t65 = (t64 * t63);
    t66 = (t9 + 4U);
    t67 = *((int *)t66);
    xsi_vhdl_check_range_of_index(t61, t67, t63, t45);
    t68 = (1U * t65);
    t69 = (0 + t68);
    t70 = (t60 + t69);
    *((unsigned char *)t70) = t58;

LAB6:    if (t45 == t46)
        goto LAB7;

LAB8:    t11 = (t45 + t40);
    t45 = t11;
    goto LAB4;

LAB9:;
}

static void work_a_0435259162_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(91, ng1);

LAB3:    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 9532U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t2);
    t5 = (t0 + 1352U);
    t6 = *((char **)t5);
    t5 = (t0 + 9500U);
    t7 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t5);
    t8 = (t4 + t7);
    t9 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t1, t8, 8);
    t10 = (t1 + 12U);
    t11 = *((unsigned int *)t10);
    t11 = (t11 * 1U);
    t12 = (8U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 6216);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 8U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 6040);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t11, 0);
    goto LAB6;

}

static void work_a_0435259162_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(94, ng1);

LAB3:    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 9532U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t2);
    t5 = (t0 + 1352U);
    t6 = *((char **)t5);
    t5 = (t0 + 9500U);
    t7 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t5);
    t8 = (t4 - t7);
    t9 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t1, t8, 8);
    t10 = (t1 + 12U);
    t11 = *((unsigned int *)t10);
    t11 = (t11 * 1U);
    t12 = (8U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 6280);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 8U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 6056);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t11, 0);
    goto LAB6;

}

static void work_a_0435259162_3212880686_p_2(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(97, ng1);

LAB3:    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 9532U);
    t4 = work_a_0435259162_3212880686_sub_3874760282_3057020925(t0, t1, t3, t2);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t6 = (t6 * 1U);
    t7 = (8U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 6344);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 6072);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t6, 0);
    goto LAB6;

}

static void work_a_0435259162_3212880686_p_3(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    int t8;
    char *t9;
    int t10;
    char *t11;
    int t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(102, ng1);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6088);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(103, ng1);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 2768U);
    t5 = *((char **)t3);
    t6 = xsi_mem_cmp(t5, t4, 4U);
    if (t6 == 1)
        goto LAB6;

LAB11:    t3 = (t0 + 2888U);
    t7 = *((char **)t3);
    t8 = xsi_mem_cmp(t7, t4, 4U);
    if (t8 == 1)
        goto LAB6;

LAB12:    t3 = (t0 + 3008U);
    t9 = *((char **)t3);
    t10 = xsi_mem_cmp(t9, t4, 4U);
    if (t10 == 1)
        goto LAB7;

LAB13:    t3 = (t0 + 3128U);
    t11 = *((char **)t3);
    t12 = xsi_mem_cmp(t11, t4, 4U);
    if (t12 == 1)
        goto LAB8;

LAB14:    t3 = (t0 + 3248U);
    t13 = *((char **)t3);
    t14 = xsi_mem_cmp(t13, t4, 4U);
    if (t14 == 1)
        goto LAB9;

LAB15:
LAB10:    xsi_set_current_line(108, ng1);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(104, ng1);
    t3 = (t0 + 1352U);
    t15 = *((char **)t3);
    t3 = (t0 + 6408);
    t16 = (t3 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t15, 8U);
    xsi_driver_first_trans_fast(t3);
    goto LAB5;

LAB7:    xsi_set_current_line(105, ng1);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 6408);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB8:    xsi_set_current_line(106, ng1);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 6408);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB9:    xsi_set_current_line(107, ng1);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 6408);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB16:;
}

static void work_a_0435259162_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(113, ng1);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 6472);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 6104);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0435259162_3212880686_p_5(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    unsigned int t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(118, ng1);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 9532U);
    t3 = xsi_get_transient_memory(8U);
    memset(t3, 0, 8U);
    t4 = t3;
    if (-1 == -1)
        goto LAB5;

LAB6:    t5 = 0;

LAB7:    t6 = (t5 - 7);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (t4 + t8);
    t10 = (1U * 8U);
    memset(t9, (unsigned char)2, t10);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 7;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (7 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t11);
    if (t16 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(121, ng1);
    t1 = (t0 + 6536);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t9 = *((char **)t4);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB3:    t1 = (t0 + 6120);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(119, ng1);
    t13 = (t0 + 6536);
    t17 = (t13 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast(t13);
    goto LAB3;

LAB5:    t5 = 7;
    goto LAB7;

}

static void work_a_0435259162_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(125, ng1);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6600);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6136);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0435259162_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0435259162_3212880686_p_0,(void *)work_a_0435259162_3212880686_p_1,(void *)work_a_0435259162_3212880686_p_2,(void *)work_a_0435259162_3212880686_p_3,(void *)work_a_0435259162_3212880686_p_4,(void *)work_a_0435259162_3212880686_p_5,(void *)work_a_0435259162_3212880686_p_6};
	static char *se[] = {(void *)work_a_0435259162_3212880686_sub_3874760282_3057020925};
	xsi_register_didat("work_a_0435259162_3212880686", "isim/TOP_ACC_TB_isim_beh.exe.sim/work/a_0435259162_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
