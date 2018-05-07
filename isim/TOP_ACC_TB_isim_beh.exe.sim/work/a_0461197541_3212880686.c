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
static const char *ng0 = "C:/Users/igor/Projects/mpcu_bit_reverter/CTRL1_ACC.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0461197541_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 10704);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(121, ng0);
    t1 = (t0 + 11008);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 3752U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (t0 + 11008);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

}

static void work_a_0461197541_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB10, &&LAB10, &&LAB10, &&LAB10, &&LAB10, &&LAB7, &&LAB8, &&LAB9, &&LAB10, &&LAB10, &&LAB11};

LAB0:    xsi_set_current_line(133, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 10720);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(134, ng0);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(137, ng0);
    t1 = (t0 + 11072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB14:    goto LAB2;

LAB4:    xsi_set_current_line(139, ng0);
    t1 = (t0 + 11072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(140, ng0);
    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 16896U);
    t4 = (t0 + 5928U);
    t5 = *((char **)t4);
    t4 = (t0 + 17088U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 16896U);
    t4 = (t0 + 4968U);
    t5 = *((char **)t4);
    t4 = (t0 + 16960U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB19;

LAB20:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 16896U);
    t4 = (t0 + 5568U);
    t5 = *((char **)t4);
    t4 = (t0 + 17040U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB21;

LAB22:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 16896U);
    t4 = (t0 + 5688U);
    t5 = *((char **)t4);
    t4 = (t0 + 17056U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB23;

LAB24:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 16896U);
    t4 = (t0 + 5808U);
    t5 = *((char **)t4);
    t4 = (t0 + 17072U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB25;

LAB26:    xsi_set_current_line(151, ng0);
    t1 = (t0 + 11072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB17:    goto LAB2;

LAB6:    xsi_set_current_line(153, ng0);
    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 16896U);
    t4 = (t0 + 4848U);
    t5 = *((char **)t4);
    t4 = (t0 + 16944U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB27;

LAB29:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 16896U);
    t4 = (t0 + 5328U);
    t5 = *((char **)t4);
    t4 = (t0 + 17008U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB30;

LAB31:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 16896U);
    t4 = (t0 + 5448U);
    t5 = *((char **)t4);
    t4 = (t0 + 17024U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB32;

LAB33:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 16896U);
    t4 = (t0 + 5088U);
    t5 = *((char **)t4);
    t4 = (t0 + 16976U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB34;

LAB35:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 16896U);
    t4 = (t0 + 5208U);
    t5 = *((char **)t4);
    t4 = (t0 + 16992U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB36;

LAB37:    xsi_set_current_line(164, ng0);
    t1 = (t0 + 11072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB28:    goto LAB2;

LAB7:    xsi_set_current_line(166, ng0);
    t1 = (t0 + 11072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)10;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB8:    xsi_set_current_line(167, ng0);
    t1 = (t0 + 11072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB9:    xsi_set_current_line(168, ng0);
    t1 = (t0 + 11072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB10:    xsi_set_current_line(169, ng0);
    t1 = (t0 + 11072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB11:    xsi_set_current_line(170, ng0);
    t1 = (t0 + 11072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)14;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB12:    xsi_set_current_line(171, ng0);
    t1 = (t0 + 11072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB13:    xsi_set_current_line(135, ng0);
    t4 = (t0 + 11072);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB16:    xsi_set_current_line(141, ng0);
    t8 = (t0 + 11072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)14;
    xsi_driver_first_trans_fast(t8);
    goto LAB17;

LAB19:    xsi_set_current_line(143, ng0);
    t8 = (t0 + 11072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)5;
    xsi_driver_first_trans_fast(t8);
    goto LAB17;

LAB21:    xsi_set_current_line(145, ng0);
    t8 = (t0 + 11072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)8;
    xsi_driver_first_trans_fast(t8);
    goto LAB17;

LAB23:    xsi_set_current_line(147, ng0);
    t8 = (t0 + 11072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)12;
    xsi_driver_first_trans_fast(t8);
    goto LAB17;

LAB25:    xsi_set_current_line(149, ng0);
    t8 = (t0 + 11072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)13;
    xsi_driver_first_trans_fast(t8);
    goto LAB17;

LAB27:    xsi_set_current_line(154, ng0);
    t8 = (t0 + 11072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)4;
    xsi_driver_first_trans_fast(t8);
    goto LAB28;

LAB30:    xsi_set_current_line(156, ng0);
    t8 = (t0 + 11072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)6;
    xsi_driver_first_trans_fast(t8);
    goto LAB28;

LAB32:    xsi_set_current_line(158, ng0);
    t8 = (t0 + 11072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)7;
    xsi_driver_first_trans_fast(t8);
    goto LAB28;

LAB34:    xsi_set_current_line(160, ng0);
    t8 = (t0 + 11072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)9;
    xsi_driver_first_trans_fast(t8);
    goto LAB28;

LAB36:    xsi_set_current_line(162, ng0);
    t8 = (t0 + 11072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)11;
    xsi_driver_first_trans_fast(t8);
    goto LAB28;

}

static void work_a_0461197541_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(181, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)14);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(184, ng0);
    t1 = (t0 + 11136);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 10736);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(182, ng0);
    t1 = (t0 + 11136);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

}

static void work_a_0461197541_3212880686_p_3(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned char t19;
    unsigned int t20;

LAB0:    xsi_set_current_line(196, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 10752);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(197, ng0);
    t1 = (t0 + 17217);
    t6 = (t0 + 11200);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 5U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(199, ng0);
    t2 = (t0 + 3592U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)2);
    if (t11 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)12);
    if (t11 == 1)
        goto LAB14;

LAB15:    t3 = (unsigned char)0;

LAB16:    if (t3 != 0)
        goto LAB12;

LAB13:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)13);
    if (t4 != 0)
        goto LAB17;

LAB18:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(200, ng0);
    t2 = (t0 + 4072U);
    t6 = *((char **)t2);
    t2 = (t0 + 16880U);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t12, t6, t2, 1);
    t8 = (t12 + 12U);
    t13 = *((unsigned int *)t8);
    t14 = (1U * t13);
    t15 = (5U != t14);
    if (t15 == 1)
        goto LAB10;

LAB11:    t9 = (t0 + 11200);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 5U);
    xsi_driver_first_trans_fast(t9);
    goto LAB8;

LAB10:    xsi_size_not_matching(5U, t14, 0);
    goto LAB11;

LAB12:    xsi_set_current_line(202, ng0);
    t1 = (t0 + 4392U);
    t6 = *((char **)t1);
    t13 = (5 - 4);
    t14 = (t13 * 1U);
    t20 = (0 + t14);
    t1 = (t6 + t20);
    t7 = (t0 + 11200);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t1, 5U);
    xsi_driver_first_trans_fast(t7);
    goto LAB8;

LAB14:    t1 = (t0 + 3432U);
    t5 = *((char **)t1);
    t15 = *((unsigned char *)t5);
    t19 = (t15 == (unsigned char)3);
    t3 = t19;
    goto LAB16;

LAB17:    xsi_set_current_line(204, ng0);
    t1 = (t0 + 4392U);
    t5 = *((char **)t1);
    t13 = (5 - 4);
    t14 = (t13 * 1U);
    t20 = (0 + t14);
    t1 = (t5 + t20);
    t6 = (t0 + 11200);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 5U);
    xsi_driver_first_trans_fast(t6);
    goto LAB8;

}

static void work_a_0461197541_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(210, ng0);

LAB3:    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t1 = (t0 + 11264);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 10768);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0461197541_3212880686_p_5(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(215, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)1);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 3752U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)1);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(218, ng0);
    t2 = (t0 + 11328);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB3:    t2 = (t0 + 10784);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(216, ng0);
    t2 = (t0 + 11328);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

}

static void work_a_0461197541_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(225, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 10800);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(226, ng0);
    t1 = (t0 + 17222);
    t6 = (t0 + 11392);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 10U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(228, ng0);
    t1 = (t0 + 1992U);
    t5 = *((char **)t1);
    t1 = (t0 + 11392);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 10U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}

static void work_a_0461197541_3212880686_p_7(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;

LAB0:    xsi_set_current_line(238, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t14 = (t4 == (unsigned char)9);
    if (t14 == 1)
        goto LAB9;

LAB10:    t1 = (t0 + 3752U);
    t5 = *((char **)t1);
    t15 = *((unsigned char *)t5);
    t16 = (t15 == (unsigned char)11);
    t3 = t16;

LAB11:    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 10816);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(239, ng0);
    t1 = (t0 + 17232);
    t6 = (t0 + 11456);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(240, ng0);
    t1 = (t0 + 17236);
    t5 = (t0 + 11520);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(242, ng0);
    t1 = (t0 + 3912U);
    t5 = *((char **)t1);
    t11 = (9 - 9);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t1 = (t5 + t13);
    t6 = (t0 + 11456);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(243, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t11 = (9 - 5);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t1 = (t2 + t13);
    t5 = (t0 + 11520);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB7:    xsi_set_current_line(245, ng0);
    t1 = (t0 + 4552U);
    t6 = *((char **)t1);
    t11 = (7 - 5);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t1 = (t6 + t13);
    t7 = (t0 + 11520);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t17 = *((char **)t10);
    memcpy(t17, t1, 6U);
    xsi_driver_first_trans_fast(t7);
    goto LAB3;

LAB9:    t3 = (unsigned char)1;
    goto LAB11;

}

static void work_a_0461197541_3212880686_p_8(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(257, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 != (unsigned char)12);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 10832);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(258, ng0);
    t2 = (t0 + 4392U);
    t9 = *((char **)t2);
    t2 = (t0 + 11584);
    t10 = (t2 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t9, 6U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t2 = (t0 + 3592U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 != (unsigned char)13);
    t1 = t8;
    goto LAB7;

}

static void work_a_0461197541_3212880686_p_9(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(265, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)5);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(268, ng0);
    t1 = (t0 + 11648);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 10848);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(266, ng0);
    t1 = (t0 + 11648);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

}

static void work_a_0461197541_3212880686_p_10(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(275, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 3592U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)10);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 10864);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(276, ng0);
    t2 = (t0 + 2632U);
    t9 = *((char **)t2);
    t2 = (t0 + 11712);
    t10 = (t2 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t9, 8U);
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

}

static void work_a_0461197541_3212880686_p_11(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(281, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 11776);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 10880);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0461197541_3212880686_p_12(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(289, ng0);

LAB3:    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    t1 = (t0 + 11840);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 10896);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0461197541_3212880686_p_13(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(292, ng0);

LAB3:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 11904);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 10912);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0461197541_3212880686_p_14(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(297, ng0);
    t4 = (t0 + 3592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)4);
    if (t7 == 1)
        goto LAB11;

LAB12:    t4 = (t0 + 3592U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)6);
    t3 = t10;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t4 = (t0 + 3592U);
    t11 = *((char **)t4);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)7);
    t2 = t13;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 3592U);
    t14 = *((char **)t4);
    t15 = *((unsigned char *)t14);
    t16 = (t15 == (unsigned char)8);
    t1 = t16;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(300, ng0);
    t4 = (t0 + 11968);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);

LAB3:    t4 = (t0 + 10928);
    *((int *)t4) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(298, ng0);
    t4 = (t0 + 11968);
    t17 = (t4 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t3 = (unsigned char)1;
    goto LAB13;

}


extern void work_a_0461197541_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0461197541_3212880686_p_0,(void *)work_a_0461197541_3212880686_p_1,(void *)work_a_0461197541_3212880686_p_2,(void *)work_a_0461197541_3212880686_p_3,(void *)work_a_0461197541_3212880686_p_4,(void *)work_a_0461197541_3212880686_p_5,(void *)work_a_0461197541_3212880686_p_6,(void *)work_a_0461197541_3212880686_p_7,(void *)work_a_0461197541_3212880686_p_8,(void *)work_a_0461197541_3212880686_p_9,(void *)work_a_0461197541_3212880686_p_10,(void *)work_a_0461197541_3212880686_p_11,(void *)work_a_0461197541_3212880686_p_12,(void *)work_a_0461197541_3212880686_p_13,(void *)work_a_0461197541_3212880686_p_14};
	xsi_register_didat("work_a_0461197541_3212880686", "isim/TOP_ACC_TB_isim_beh.exe.sim/work/a_0461197541_3212880686.didat");
	xsi_register_executes(pe);
}
