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
static const char *ng0 = "C:/Users/Mateusz/Desktop/SemestrVI/UCISKP/Snake/kbdDecoder.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2846093655_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    int t21;
    char *t22;
    int t24;
    char *t25;
    int t27;
    char *t28;
    int t30;
    char *t31;
    int t33;
    char *t34;
    int t36;
    char *t37;
    int t39;
    char *t40;
    int t42;
    char *t43;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1472U);
    t6 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t6 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t8 = (t7 == (unsigned char)2);
    if (t8 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t2 = (t0 + 5831);
    t9 = xsi_mem_cmp(t2, t4, 8U);
    if (t9 == 1)
        goto LAB9;

LAB22:    t10 = (t0 + 5839);
    t12 = xsi_mem_cmp(t10, t4, 8U);
    if (t12 == 1)
        goto LAB10;

LAB23:    t13 = (t0 + 5847);
    t15 = xsi_mem_cmp(t13, t4, 8U);
    if (t15 == 1)
        goto LAB11;

LAB24:    t16 = (t0 + 5855);
    t18 = xsi_mem_cmp(t16, t4, 8U);
    if (t18 == 1)
        goto LAB12;

LAB25:    t19 = (t0 + 5863);
    t21 = xsi_mem_cmp(t19, t4, 8U);
    if (t21 == 1)
        goto LAB13;

LAB26:    t22 = (t0 + 5871);
    t24 = xsi_mem_cmp(t22, t4, 8U);
    if (t24 == 1)
        goto LAB14;

LAB27:    t25 = (t0 + 5879);
    t27 = xsi_mem_cmp(t25, t4, 8U);
    if (t27 == 1)
        goto LAB15;

LAB28:    t28 = (t0 + 5887);
    t30 = xsi_mem_cmp(t28, t4, 8U);
    if (t30 == 1)
        goto LAB16;

LAB29:    t31 = (t0 + 5895);
    t33 = xsi_mem_cmp(t31, t4, 8U);
    if (t33 == 1)
        goto LAB17;

LAB30:    t34 = (t0 + 5903);
    t36 = xsi_mem_cmp(t34, t4, 8U);
    if (t36 == 1)
        goto LAB18;

LAB31:    t37 = (t0 + 5911);
    t39 = xsi_mem_cmp(t37, t4, 8U);
    if (t39 == 1)
        goto LAB19;

LAB32:    t40 = (t0 + 5919);
    t42 = xsi_mem_cmp(t40, t4, 8U);
    if (t42 == 1)
        goto LAB20;

LAB33:
LAB21:    xsi_set_current_line(107, ng0);

LAB8:    goto LAB6;

LAB9:    xsi_set_current_line(55, ng0);
    t43 = (t0 + 5927);
    t45 = (t0 + 3616);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memcpy(t49, t43, 2U);
    xsi_driver_first_trans_fast_port(t45);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 5929);
    t3 = (t0 + 3680);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB10:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5931);
    t3 = (t0 + 3616);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 5933);
    t3 = (t0 + 3680);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB11:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 5935);
    t3 = (t0 + 3616);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 5937);
    t3 = (t0 + 3680);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB12:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 5939);
    t3 = (t0 + 3616);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 5941);
    t3 = (t0 + 3680);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB13:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 5943);
    t3 = (t0 + 3616);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 5945);
    t3 = (t0 + 3680);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB14:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 5947);
    t3 = (t0 + 3616);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 5949);
    t3 = (t0 + 3680);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB15:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 5951);
    t3 = (t0 + 3616);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 5953);
    t3 = (t0 + 3680);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB16:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 5955);
    t3 = (t0 + 3616);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 5957);
    t3 = (t0 + 3680);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB17:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 5959);
    t3 = (t0 + 3616);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 5961);
    t3 = (t0 + 3680);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB18:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 5963);
    t3 = (t0 + 3616);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 5965);
    t3 = (t0 + 3680);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB19:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 5967);
    t3 = (t0 + 3616);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 5969);
    t3 = (t0 + 3680);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB20:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 5971);
    t3 = (t0 + 3616);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(104, ng0);
    t1 = (t0 + 5973);
    t3 = (t0 + 3680);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB34:;
}


extern void work_a_2846093655_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2846093655_3212880686_p_0};
	xsi_register_didat("work_a_2846093655_3212880686", "isim/kbdDecoder_tb_isim_beh.exe.sim/work/a_2846093655_3212880686.didat");
	xsi_register_executes(pe);
}
