/*
 * Class ETF_MODEL
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_881 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type1_881 [] = {0xFF11,236,0xFF12,880,0xFFFF};
static EIF_TYPE_INDEX gen_type2_881 [] = {0xFF11,880,0xFFFF};
static EIF_TYPE_INDEX gen_type3_881 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_881 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type5_881 [] = {0xFF11,880,0xFFFF};
static EIF_TYPE_INDEX gen_type6_881 [] = {0xFF11,880,0xFFFF};
static EIF_TYPE_INDEX gen_type7_881 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type8_881 [] = {0xFF11,13,0xFFFF};
static EIF_TYPE_INDEX gen_type9_881 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type10_881 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type11_881 [] = {0xFF11,14,0xFFFF};
static EIF_TYPE_INDEX gen_type12_881 [] = {0xFF11,880,0xFFFF};
static EIF_TYPE_INDEX gen_type13_881 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type14_881 [] = {0xFF11,1088,0xFFFF};
static EIF_TYPE_INDEX gen_type15_881 [] = {0xFF11,1093,0xFFFF};
static EIF_TYPE_INDEX gen_type16_881 [] = {0xFF11,1092,0xFFFF};
static EIF_TYPE_INDEX gen_type17_881 [] = {0xFF11,1091,0xFFFF};
static EIF_TYPE_INDEX gen_type18_881 [] = {0xFF11,1090,0xFFFF};
static EIF_TYPE_INDEX gen_type19_881 [] = {0xFF11,1089,0xFFFF};
static EIF_TYPE_INDEX gen_type20_881 [] = {0xFF11,219,0xFFFF};


static struct desc_info desc_881[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 219, gen_type0_881},
	{1, (BODY_INDEX)-1, 236, gen_type1_881},
	{2, (BODY_INDEX)-1, 190, NULL},
	{3, (BODY_INDEX)-1, 190, NULL},
	{4, (BODY_INDEX)-1, 190, NULL},
	{5, (BODY_INDEX)-1, 190, NULL},
	{6, (BODY_INDEX)-1, 190, NULL},
	{7, (BODY_INDEX)-1, 190, NULL},
	{8, (BODY_INDEX)-1, 190, NULL},
	{9, (BODY_INDEX)-1, 190, NULL},
	{10, (BODY_INDEX)-1, 880, gen_type2_881},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type3_881},
	{14, (BODY_INDEX)-1, 0, gen_type4_881},
	{15, (BODY_INDEX)-1, 880, gen_type5_881},
	{16, (BODY_INDEX)-1, 880, gen_type6_881},
	{17, (BODY_INDEX)-1, 0, gen_type7_881},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 13, gen_type8_881},
	{13945, (BODY_INDEX)-1, 219, gen_type9_881},
	{22, (BODY_INDEX)-1, 219, gen_type10_881},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 14, gen_type11_881},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 880, NULL},
	{29, (BODY_INDEX)-1, 214, NULL},
	{30, (BODY_INDEX)-1, 880, gen_type12_881},
	{13927, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13928, 0, 219, gen_type13_881},
	{13929, 8, 1088, gen_type14_881},
	{13930, 16, 1093, gen_type15_881},
	{13931, 24, 1092, gen_type16_881},
	{13932, 32, 1091, gen_type17_881},
	{13933, 40, 1090, gen_type18_881},
	{13934, 48, 1089, gen_type19_881},
	{13935, 64, 190, NULL},
	{13936, 56, 219, gen_type20_881},
	{13937, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13938, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13939, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13940, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13941, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13942, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13943, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13944, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
};

extern void Init881(void);
void Init881(void)
{
	IDSC(desc_881, 0, 880);
	IDSC(desc_881 + 1, 1, 880);
	IDSC(desc_881 + 32, 358, 880);
}


#ifdef __cplusplus
}
#endif
