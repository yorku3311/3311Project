/*
 * Class ETF_ABSTRACT_UI
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_940 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type1_940 [] = {0xFF11,236,0xFF12,939,0xFFFF};
static EIF_TYPE_INDEX gen_type2_940 [] = {0xFF11,939,0xFFFF};
static EIF_TYPE_INDEX gen_type3_940 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_940 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type5_940 [] = {0xFF11,939,0xFFFF};
static EIF_TYPE_INDEX gen_type6_940 [] = {0xFF11,939,0xFFFF};
static EIF_TYPE_INDEX gen_type7_940 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type8_940 [] = {0xFF11,13,0xFFFF};
static EIF_TYPE_INDEX gen_type9_940 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type10_940 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type11_940 [] = {0xFF11,14,0xFFFF};
static EIF_TYPE_INDEX gen_type12_940 [] = {0xFF11,939,0xFFFF};
static EIF_TYPE_INDEX gen_type13_940 [] = {0xFF11,249,0xFF11,1125,0xFFFF};
static EIF_TYPE_INDEX gen_type14_940 [] = {0xFF11,1532,0xFF11,0xFFF9,1,173,0xFF11,1125,0xFFFF};


static struct desc_info desc_940[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 219, gen_type0_940},
	{1, (BODY_INDEX)-1, 236, gen_type1_940},
	{2, (BODY_INDEX)-1, 190, NULL},
	{3, (BODY_INDEX)-1, 190, NULL},
	{4, (BODY_INDEX)-1, 190, NULL},
	{5, (BODY_INDEX)-1, 190, NULL},
	{6, (BODY_INDEX)-1, 190, NULL},
	{7, (BODY_INDEX)-1, 190, NULL},
	{8, (BODY_INDEX)-1, 190, NULL},
	{9, (BODY_INDEX)-1, 190, NULL},
	{10, (BODY_INDEX)-1, 939, gen_type2_940},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type3_940},
	{14, (BODY_INDEX)-1, 0, gen_type4_940},
	{15, (BODY_INDEX)-1, 939, gen_type5_940},
	{16, (BODY_INDEX)-1, 939, gen_type6_940},
	{17, (BODY_INDEX)-1, 0, gen_type7_940},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 13, gen_type8_940},
	{21, (BODY_INDEX)-1, 219, gen_type9_940},
	{22, (BODY_INDEX)-1, 219, gen_type10_940},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 14, gen_type11_940},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 939, NULL},
	{29, (BODY_INDEX)-1, 214, NULL},
	{30, (BODY_INDEX)-1, 939, gen_type12_940},
	{14334, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{14335, 0, 249, gen_type13_940},
	{14336, 8, 1532, gen_type14_940},
	{14337, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{14338, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
};

extern void Init940(void);
void Init940(void)
{
	IDSC(desc_940, 0, 939);
	IDSC(desc_940 + 1, 1, 939);
	IDSC(desc_940 + 32, 363, 939);
}


#ifdef __cplusplus
}
#endif
