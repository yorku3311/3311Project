/*
 * Class THREAD_ENVIRONMENT
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_919 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type1_919 [] = {0xFF11,236,0xFF12,918,0xFFFF};
static EIF_TYPE_INDEX gen_type2_919 [] = {0xFF11,918,0xFFFF};
static EIF_TYPE_INDEX gen_type3_919 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_919 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type5_919 [] = {0xFF11,918,0xFFFF};
static EIF_TYPE_INDEX gen_type6_919 [] = {0xFF11,918,0xFFFF};
static EIF_TYPE_INDEX gen_type7_919 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type8_919 [] = {0xFF11,13,0xFFFF};
static EIF_TYPE_INDEX gen_type9_919 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type10_919 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type11_919 [] = {0xFF11,14,0xFFFF};
static EIF_TYPE_INDEX gen_type12_919 [] = {0xFF11,918,0xFFFF};


static struct desc_info desc_919[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 219, gen_type0_919},
	{1, (BODY_INDEX)-1, 236, gen_type1_919},
	{2, (BODY_INDEX)-1, 190, NULL},
	{3, (BODY_INDEX)-1, 190, NULL},
	{4, (BODY_INDEX)-1, 190, NULL},
	{5, (BODY_INDEX)-1, 190, NULL},
	{6, (BODY_INDEX)-1, 190, NULL},
	{7, (BODY_INDEX)-1, 190, NULL},
	{8, (BODY_INDEX)-1, 190, NULL},
	{9, (BODY_INDEX)-1, 190, NULL},
	{10, (BODY_INDEX)-1, 918, gen_type2_919},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type3_919},
	{14, (BODY_INDEX)-1, 0, gen_type4_919},
	{15, (BODY_INDEX)-1, 918, gen_type5_919},
	{16, (BODY_INDEX)-1, 918, gen_type6_919},
	{17, (BODY_INDEX)-1, 0, gen_type7_919},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 13, gen_type8_919},
	{21, (BODY_INDEX)-1, 219, gen_type9_919},
	{22, (BODY_INDEX)-1, 219, gen_type10_919},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 14, gen_type11_919},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 918, NULL},
	{29, (BODY_INDEX)-1, 214, NULL},
	{30, (BODY_INDEX)-1, 918, gen_type12_919},
	{14210, (BODY_INDEX)-1, 214, NULL},
	{14211, (BODY_INDEX)-1, 214, NULL},
};

extern void Init919(void);
void Init919(void)
{
	IDSC(desc_919, 0, 918);
	IDSC(desc_919 + 1, 1, 918);
	IDSC(desc_919 + 32, 690, 918);
}


#ifdef __cplusplus
}
#endif
