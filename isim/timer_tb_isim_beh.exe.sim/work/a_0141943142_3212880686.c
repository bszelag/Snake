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
static const char *ng0 = "C:/Users/Mateusz/Desktop/SemestrVI/UCISKP/Snake/timer.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0141943142_3212880686_p_0(char *t0)
{
    char t10[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t20;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4776);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 4904);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(58, ng0);
    t1 = xsi_get_transient_memory(25U);
    memset(t1, 0, 25U);
    t2 = t1;
    memset(t2, (unsigned char)2, 25U);
    t5 = (t0 + 4968);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 25U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t2 = (t0 + 7968U);
    t6 = (t0 + 8084);
    t8 = (t10 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 23;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t11 = (23 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t12;
    t4 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t5, t2, t6, t10);
    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 7968U);
    t5 = (t0 + 8108);
    t7 = (t19 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t11 = (0 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t12;
    t8 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t10, t2, t1, t5, t19);
    t9 = (t10 + 12U);
    t12 = *((unsigned int *)t9);
    t20 = (1U * t12);
    t3 = (25U != t20);
    if (t3 == 1)
        goto LAB10;

LAB11:    t13 = (t0 + 4968);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 25U);
    xsi_driver_first_trans_fast(t13);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(63, ng0);
    t9 = xsi_get_transient_memory(25U);
    memset(t9, 0, 25U);
    t13 = t9;
    memset(t13, (unsigned char)2, 25U);
    t14 = (t0 + 4968);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 25U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 4904);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB10:    xsi_size_not_matching(25U, t20, 0);
    goto LAB11;

}

static void work_a_0141943142_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(72, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5032);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4792);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0141943142_3212880686_p_2(char *t0)
{
    char t10[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t20;

LAB0:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2112U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4808);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 5096);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(80, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t5 = (t0 + 5160);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t2 = (t0 + 7984U);
    t6 = (t0 + 8109);
    t8 = (t10 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 3;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t11 = (3 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t12;
    t4 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t5, t2, t6, t10);
    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 7984U);
    t5 = (t0 + 8113);
    t7 = (t19 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t11 = (0 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t12;
    t8 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t10, t2, t1, t5, t19);
    t9 = (t10 + 12U);
    t12 = *((unsigned int *)t9);
    t20 = (1U * t12);
    t3 = (4U != t20);
    if (t3 == 1)
        goto LAB10;

LAB11:    t13 = (t0 + 5160);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t13);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(85, ng0);
    t9 = xsi_get_transient_memory(4U);
    memset(t9, 0, 4U);
    t13 = t9;
    memset(t13, (unsigned char)2, 4U);
    t14 = (t0 + 5160);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 4U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 5096);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB10:    xsi_size_not_matching(4U, t20, 0);
    goto LAB11;

}

static void work_a_0141943142_3212880686_p_3(char *t0)
{
    char t9[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2272U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4824);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2608U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 2728U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    goto LAB3;

LAB5:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 2608U);
    t5 = *((char **)t2);
    t6 = *((int *)t5);
    t7 = (t6 + 1);
    t2 = (t0 + 2608U);
    t8 = *((char **)t2);
    t2 = (t8 + 0);
    *((int *)t2) = t7;
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t3 = (t6 == 60);
    if (t3 != 0)
        goto LAB7;

LAB9:
LAB8:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 2728U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t3 = (t6 == 60);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 2728U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, t6, 6);
    t5 = (t0 + 5224);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 6U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(118, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, t6, 6);
    t5 = (t0 + 5288);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 6U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

LAB7:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 2608U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 2728U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t7 = (t6 + 1);
    t1 = (t0 + 2728U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t7;
    goto LAB8;

LAB10:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 2728U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    goto LAB11;

}


extern void work_a_0141943142_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0141943142_3212880686_p_0,(void *)work_a_0141943142_3212880686_p_1,(void *)work_a_0141943142_3212880686_p_2,(void *)work_a_0141943142_3212880686_p_3};
	xsi_register_didat("work_a_0141943142_3212880686", "isim/timer_tb_isim_beh.exe.sim/work/a_0141943142_3212880686.didat");
	xsi_register_executes(pe);
}