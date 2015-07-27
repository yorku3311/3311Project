/*
 * Class ETF_GUI_ROOT_INTERFACE
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_945 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type1_945 [] = {0xFF11,236,0xFF12,944,0xFFFF};
static EIF_TYPE_INDEX gen_type2_945 [] = {0xFF11,944,0xFFFF};
static EIF_TYPE_INDEX gen_type3_945 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_945 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type5_945 [] = {0xFF11,944,0xFFFF};
static EIF_TYPE_INDEX gen_type6_945 [] = {0xFF11,944,0xFFFF};
static EIF_TYPE_INDEX gen_type7_945 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type8_945 [] = {0xFF11,13,0xFFFF};
static EIF_TYPE_INDEX gen_type9_945 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type10_945 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type11_945 [] = {0xFF11,14,0xFFFF};
static EIF_TYPE_INDEX gen_type12_945 [] = {0xFF11,944,0xFFFF};


static struct desc_info desc_945[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 219, gen_type0_945},
	{1, (BODY_INDEX)-1, 236, gen_type1_945},
	{2, (BODY_INDEX)-1, 190, NULL},
	{3, (BODY_INDEX)-1, 190, NULL},
	{4, (BODY_INDEX)-1, 190, NULL},
	{5, (BODY_INDEX)-1, 190, NULL},
	{6, (BODY_INDEX)-1, 190, NULL},
	{7, (BODY_INDEX)-1, 190, NULL},
	{8, (BODY_INDEX)-1, 190, NULL},
	{9, (BODY_INDEX)-1, 190, NULL},
	{10, (BODY_INDEX)-1, 944, gen_type2_945},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type3_945},
	{14, (BODY_INDEX)-1, 0, gen_type4_945},
	{15, (BODY_INDEX)-1, 944, gen_type5_945},
	{16, (BODY_INDEX)-1, 944, gen_type6_945},
	{17, (BODY_INDEX)-1, 0, gen_type7_945},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 13, gen_type8_945},
	{21, (BODY_INDEX)-1, 219, gen_type9_945},
	{22, (BODY_INDEX)-1, 219, gen_type10_945},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 14, gen_type11_945},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 944, NULL},
	{29, (BODY_INDEX)-1, 214, NULL},
	{30, (BODY_INDEX)-1, 944, gen_type12_945},
	{14379, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{14380, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{14381, 0, 1220, NULL},
	{14382, 8, 190, NULL},
	{14383, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
};

extern void Init945(void);
void Init945(void)
{
	IDSC(desc_945, 0, 944);
	IDSC(desc_945 + 1, 1, 944);
	IDSC(desc_945 + 32, 352, 944);
}


#ifdef __cplusplus
}
#endif
