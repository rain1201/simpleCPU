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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/song/intergrated/SHIFTER_32.v";
static int ng1[] = {16, 0};
static int ng2[] = {8, 0};
static int ng3[] = {4, 0};
static int ng4[] = {2, 0};
static int ng5[] = {1, 0};



static void Gate_28_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    t1 = (t0 + 6040U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 31);
    t8 = (t7 & 1);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 31);
    t11 = (t10 & 1);
    *((unsigned int *)t2) = t11;
    t12 = (t0 + 1528U);
    t13 = *((char **)t12);
    t12 = (t0 + 1368U);
    t14 = *((char **)t12);
    t12 = (t0 + 9080);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    xsi_vlog_AndGate(t18, 3, t4, t13, t14);
    t19 = (t0 + 9080);
    xsi_driver_vfirst_trans(t19, 0, 0);
    t20 = (t0 + 8840);
    *((int *)t20) = 1;

LAB1:    return;
}

static void Cont_30_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t7[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 6288U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng1)));
    t5 = (t0 + 1848U);
    t6 = *((char **)t5);
    xsi_vlog_mul_concat(t4, 16, 1, t2, 1U, t6, 1);
    t5 = (t0 + 1048U);
    t8 = *((char **)t5);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (t10 >> 0);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t5) = t13;
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 65535U);
    t15 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t15 & 65535U);
    xsi_vlogtype_concat(t3, 32, 32, 2U, t7, 16, t4, 16);
    t16 = (t0 + 9144);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t3, 8);
    xsi_driver_vfirst_trans(t16, 0, 31);
    t21 = (t0 + 8856);
    *((int *)t21) = 1;

LAB1:    return;
}

static void Cont_31_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t13[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 6536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 16);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 16);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 65535U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 65535U);
    t14 = ((char*)((ng1)));
    t15 = (t0 + 1848U);
    t16 = *((char **)t15);
    xsi_vlog_mul_concat(t13, 16, 1, t14, 1U, t16, 1);
    xsi_vlogtype_concat(t3, 32, 32, 2U, t13, 16, t4, 16);
    t15 = (t0 + 9208);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t3, 8);
    xsi_driver_vfirst_trans(t15, 0, 31);
    t21 = (t0 + 8872);
    *((int *)t21) = 1;

LAB1:    return;
}

static void Cont_34_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t7[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 6784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng2)));
    t5 = (t0 + 1848U);
    t6 = *((char **)t5);
    xsi_vlog_mul_concat(t4, 8, 1, t2, 1U, t6, 1);
    t5 = (t0 + 2488U);
    t8 = *((char **)t5);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (t10 >> 0);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t5) = t13;
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 16777215U);
    t15 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t15 & 16777215U);
    xsi_vlogtype_concat(t3, 32, 32, 2U, t7, 24, t4, 8);
    t16 = (t0 + 9272);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t3, 8);
    xsi_driver_vfirst_trans(t16, 0, 31);
    t21 = (t0 + 8888);
    *((int *)t21) = 1;

LAB1:    return;
}

static void Cont_35_4(char *t0)
{
    char t3[8];
    char t4[8];
    char t13[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 7032U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2488U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 8);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 8);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 16777215U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 16777215U);
    t14 = ((char*)((ng2)));
    t15 = (t0 + 1848U);
    t16 = *((char **)t15);
    xsi_vlog_mul_concat(t13, 8, 1, t14, 1U, t16, 1);
    xsi_vlogtype_concat(t3, 32, 32, 2U, t13, 8, t4, 24);
    t15 = (t0 + 9336);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t3, 8);
    xsi_driver_vfirst_trans(t15, 0, 31);
    t21 = (t0 + 8904);
    *((int *)t21) = 1;

LAB1:    return;
}

static void Cont_38_5(char *t0)
{
    char t3[8];
    char t4[8];
    char t7[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 7280U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng3)));
    t5 = (t0 + 1848U);
    t6 = *((char **)t5);
    xsi_vlog_mul_concat(t4, 4, 1, t2, 1U, t6, 1);
    t5 = (t0 + 3128U);
    t8 = *((char **)t5);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (t10 >> 0);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t5) = t13;
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 268435455U);
    t15 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t15 & 268435455U);
    xsi_vlogtype_concat(t3, 32, 32, 2U, t7, 28, t4, 4);
    t16 = (t0 + 9400);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t3, 8);
    xsi_driver_vfirst_trans(t16, 0, 31);
    t21 = (t0 + 8920);
    *((int *)t21) = 1;

LAB1:    return;
}

static void Cont_39_6(char *t0)
{
    char t3[8];
    char t4[8];
    char t13[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 7528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 3128U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 4);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 4);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 268435455U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 268435455U);
    t14 = ((char*)((ng3)));
    t15 = (t0 + 1848U);
    t16 = *((char **)t15);
    xsi_vlog_mul_concat(t13, 4, 1, t14, 1U, t16, 1);
    xsi_vlogtype_concat(t3, 32, 32, 2U, t13, 4, t4, 28);
    t15 = (t0 + 9464);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t3, 8);
    xsi_driver_vfirst_trans(t15, 0, 31);
    t21 = (t0 + 8936);
    *((int *)t21) = 1;

LAB1:    return;
}

static void Cont_42_7(char *t0)
{
    char t3[8];
    char t4[8];
    char t7[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 7776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng4)));
    t5 = (t0 + 1848U);
    t6 = *((char **)t5);
    xsi_vlog_mul_concat(t4, 2, 1, t2, 1U, t6, 1);
    t5 = (t0 + 3768U);
    t8 = *((char **)t5);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (t10 >> 0);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t5) = t13;
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 1073741823U);
    t15 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t15 & 1073741823U);
    xsi_vlogtype_concat(t3, 32, 32, 2U, t7, 30, t4, 2);
    t16 = (t0 + 9528);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t3, 8);
    xsi_driver_vfirst_trans(t16, 0, 31);
    t21 = (t0 + 8952);
    *((int *)t21) = 1;

LAB1:    return;
}

static void Cont_43_8(char *t0)
{
    char t3[8];
    char t4[8];
    char t13[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 8024U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3768U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 2);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 2);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 1073741823U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 1073741823U);
    t14 = ((char*)((ng4)));
    t15 = (t0 + 1848U);
    t16 = *((char **)t15);
    xsi_vlog_mul_concat(t13, 2, 1, t14, 1U, t16, 1);
    xsi_vlogtype_concat(t3, 32, 32, 2U, t13, 2, t4, 30);
    t15 = (t0 + 9592);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t3, 8);
    xsi_driver_vfirst_trans(t15, 0, 31);
    t21 = (t0 + 8968);
    *((int *)t21) = 1;

LAB1:    return;
}

static void Cont_46_9(char *t0)
{
    char t3[8];
    char t4[8];
    char t7[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 8272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng5)));
    t5 = (t0 + 1848U);
    t6 = *((char **)t5);
    xsi_vlog_mul_concat(t4, 1, 1, t2, 1U, t6, 1);
    t5 = (t0 + 4408U);
    t8 = *((char **)t5);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (t10 >> 0);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t5) = t13;
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 2147483647U);
    t15 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t15 & 2147483647U);
    xsi_vlogtype_concat(t3, 32, 32, 2U, t7, 31, t4, 1);
    t16 = (t0 + 9656);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t3, 8);
    xsi_driver_vfirst_trans(t16, 0, 31);
    t21 = (t0 + 8984);
    *((int *)t21) = 1;

LAB1:    return;
}

static void Cont_47_10(char *t0)
{
    char t3[8];
    char t4[8];
    char t13[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 8520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 4408U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 1);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 1);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 2147483647U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 2147483647U);
    t14 = ((char*)((ng5)));
    t15 = (t0 + 1848U);
    t16 = *((char **)t15);
    xsi_vlog_mul_concat(t13, 1, 1, t14, 1U, t16, 1);
    xsi_vlogtype_concat(t3, 32, 32, 2U, t13, 1, t4, 31);
    t15 = (t0 + 9720);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t3, 8);
    xsi_driver_vfirst_trans(t15, 0, 31);
    t21 = (t0 + 9000);
    *((int *)t21) = 1;

LAB1:    return;
}


extern void work_m_00834472660423678467_0202805972_init()
{
	static char *pe[] = {(void *)Gate_28_0,(void *)Cont_30_1,(void *)Cont_31_2,(void *)Cont_34_3,(void *)Cont_35_4,(void *)Cont_38_5,(void *)Cont_39_6,(void *)Cont_42_7,(void *)Cont_43_8,(void *)Cont_46_9,(void *)Cont_47_10};
	xsi_register_didat("work_m_00834472660423678467_0202805972", "isim/SHIFT_32_test_isim_beh.exe.sim/work/m_00834472660423678467_0202805972.didat");
	xsi_register_executes(pe);
}
