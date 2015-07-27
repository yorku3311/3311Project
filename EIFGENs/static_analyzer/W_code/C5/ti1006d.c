/*
 * Class TIME_CONSTANTS
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_1006 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type1_1006 [] = {0xFF11,236,0xFF12,1005,0xFFFF};
static EIF_TYPE_INDEX gen_type2_1006 [] = {0xFF11,1005,0xFFFF};
static EIF_TYPE_INDEX gen_type3_1006 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_1006 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type5_1006 [] = {0xFF11,1005,0xFFFF};
static EIF_TYPE_INDEX gen_type6_1006 [] = {0xFF11,1005,0xFFFF};
static EIF_TYPE_INDEX gen_type7_1006 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type8_1006 [] = {0xFF11,13,0xFFFF};
static EIF_TYPE_INDEX gen_type9_1006 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type10_1006 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type11_1006 [] = {0xFF11,14,0xFFFF};
static EIF_TYPE_INDEX gen_type12_1006 [] = {0xFF11,1005,0xFFFF};
static EIF_TYPE_INDEX gen_type13_1006 [] = {0xFF11,903,0xFFFF};
static EIF_TYPE_INDEX gen_type14_1006 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type15_1006 [] = {0xFF11,219,0xFFFF};


static struct desc_info desc_1006[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 219, gen_type0_1006},
	{1, (BODY_INDEX)-1, 236, gen_type1_1006},
	{2, (BODY_INDEX)-1, 190, NULL},
	{3, (BODY_INDEX)-1, 190, NULL},
	{4, (BODY_INDEX)-1, 190, NULL},
	{5, (BODY_INDEX)-1, 190, NULL},
	{6, (BODY_INDEX)-1, 190, NULL},
	{7, (BODY_INDEX)-1, 190, NULL},
	{8, (BODY_INDEX)-1, 190, NULL},
	{9, (BODY_INDEX)-1, 190, NULL},
	{10, (BODY_INDEX)-1, 1005, gen_type2_1006},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type3_1006},
	{14, (BODY_INDEX)-1, 0, gen_type4_1006},
	{15, (BODY_INDEX)-1, 1005, gen_type5_1006},
	{16, (BODY_INDEX)-1, 1005, gen_type6_1006},
	{17, (BODY_INDEX)-1, 0, gen_type7_1006},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 13, gen_type8_1006},
	{21, (BODY_INDEX)-1, 219, gen_type9_1006},
	{22, (BODY_INDEX)-1, 219, gen_type10_1006},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 14, gen_type11_1006},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 1005, NULL},
	{29, (BODY_INDEX)-1, 214, NULL},
	{30, (BODY_INDEX)-1, 1005, gen_type12_1006},
	{14698, (BODY_INDEX)-1, 205, NULL},
	{14699, (BODY_INDEX)-1, 205, NULL},
	{14700, (BODY_INDEX)-1, 903, gen_type13_1006},
	{14701, (BODY_INDEX)-1, 219, gen_type14_1006},
	{14702, (BODY_INDEX)-1, 205, NULL},
	{14703, (BODY_INDEX)-1, 205, NULL},
	{14704, (BODY_INDEX)-1, 205, NULL},
	{14705, (BODY_INDEX)-1, 205, NULL},
	{14706, (BODY_INDEX)-1, 205, NULL},
	{14707, (BODY_INDEX)-1, 219, gen_type15_1006},
};

extern void Init1006(void);
void Init1006(void)
{
	IDSC(desc_1006, 0, 1005);
	IDSC(desc_1006 + 1, 1, 1005);
	IDSC(desc_1006 + 32, 580, 1005);
	IDSC(desc_1006 + 36, 499, 1005);
}


#ifdef __cplusplus
}
#endif
