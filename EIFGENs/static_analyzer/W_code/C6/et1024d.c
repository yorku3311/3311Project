/*
 * Class ETF_TUPLE_PARAM
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_1024 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type1_1024 [] = {0xFF11,236,0xFF12,1023,0xFFFF};
static EIF_TYPE_INDEX gen_type2_1024 [] = {0xFF11,1023,0xFFFF};
static EIF_TYPE_INDEX gen_type3_1024 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_1024 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type5_1024 [] = {0xFF11,1023,0xFFFF};
static EIF_TYPE_INDEX gen_type6_1024 [] = {0xFF11,1023,0xFFFF};
static EIF_TYPE_INDEX gen_type7_1024 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type8_1024 [] = {0xFF11,13,0xFFFF};
static EIF_TYPE_INDEX gen_type9_1024 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type10_1024 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type11_1024 [] = {0xFF11,14,0xFFFF};
static EIF_TYPE_INDEX gen_type12_1024 [] = {0xFF11,1023,0xFFFF};
static EIF_TYPE_INDEX gen_type13_1024 [] = {0xFF11,249,0xFF11,874,0xFFFF};
static EIF_TYPE_INDEX gen_type14_1024 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type15_1024 [] = {0xFF11,219,0xFFFF};


static struct desc_info desc_1024[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 219, gen_type0_1024},
	{1, (BODY_INDEX)-1, 236, gen_type1_1024},
	{2, (BODY_INDEX)-1, 190, NULL},
	{3, (BODY_INDEX)-1, 190, NULL},
	{4, (BODY_INDEX)-1, 190, NULL},
	{5, (BODY_INDEX)-1, 190, NULL},
	{6, (BODY_INDEX)-1, 190, NULL},
	{7, (BODY_INDEX)-1, 190, NULL},
	{8, (BODY_INDEX)-1, 190, NULL},
	{9, (BODY_INDEX)-1, 190, NULL},
	{10, (BODY_INDEX)-1, 1023, gen_type2_1024},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type3_1024},
	{14, (BODY_INDEX)-1, 0, gen_type4_1024},
	{15, (BODY_INDEX)-1, 1023, gen_type5_1024},
	{16, (BODY_INDEX)-1, 1023, gen_type6_1024},
	{17, (BODY_INDEX)-1, 0, gen_type7_1024},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 13, gen_type8_1024},
	{14841, (BODY_INDEX)-1, 219, gen_type9_1024},
	{22, (BODY_INDEX)-1, 219, gen_type10_1024},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 14, gen_type11_1024},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 1023, NULL},
	{29, (BODY_INDEX)-1, 214, NULL},
	{30, (BODY_INDEX)-1, 1023, gen_type12_1024},
	{14837, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{14838, 0, 249, gen_type13_1024},
	{14839, (BODY_INDEX)-1, 219, gen_type14_1024},
	{14840, (BODY_INDEX)-1, 219, gen_type15_1024},
};

extern void Init1024(void);
void Init1024(void)
{
	IDSC(desc_1024, 0, 1023);
	IDSC(desc_1024 + 1, 1, 1023);
	IDSC(desc_1024 + 32, 434, 1023);
	IDSC(desc_1024 + 34, 432, 1023);
}


#ifdef __cplusplus
}
#endif
