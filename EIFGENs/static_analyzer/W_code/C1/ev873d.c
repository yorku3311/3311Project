/*
 * Class EV_PND_TARGET_DATA
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_873 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type1_873 [] = {0xFF11,236,0xFF12,872,0xFFFF};
static EIF_TYPE_INDEX gen_type2_873 [] = {0xFF11,872,0xFFFF};
static EIF_TYPE_INDEX gen_type3_873 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_873 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type5_873 [] = {0xFF11,872,0xFFFF};
static EIF_TYPE_INDEX gen_type6_873 [] = {0xFF11,872,0xFFFF};
static EIF_TYPE_INDEX gen_type7_873 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type8_873 [] = {0xFF11,13,0xFFFF};
static EIF_TYPE_INDEX gen_type9_873 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type10_873 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type11_873 [] = {0xFF11,14,0xFFFF};
static EIF_TYPE_INDEX gen_type12_873 [] = {0xFF11,872,0xFFFF};
static EIF_TYPE_INDEX gen_type13_873 [] = {0xFF11,225,0xFFFF};


static struct desc_info desc_873[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 219, gen_type0_873},
	{1, (BODY_INDEX)-1, 236, gen_type1_873},
	{2, (BODY_INDEX)-1, 190, NULL},
	{3, (BODY_INDEX)-1, 190, NULL},
	{4, (BODY_INDEX)-1, 190, NULL},
	{5, (BODY_INDEX)-1, 190, NULL},
	{6, (BODY_INDEX)-1, 190, NULL},
	{7, (BODY_INDEX)-1, 190, NULL},
	{8, (BODY_INDEX)-1, 190, NULL},
	{9, (BODY_INDEX)-1, 190, NULL},
	{10, (BODY_INDEX)-1, 872, gen_type2_873},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type3_873},
	{14, (BODY_INDEX)-1, 0, gen_type4_873},
	{15, (BODY_INDEX)-1, 872, gen_type5_873},
	{16, (BODY_INDEX)-1, 872, gen_type6_873},
	{17, (BODY_INDEX)-1, 0, gen_type7_873},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 13, gen_type8_873},
	{21, (BODY_INDEX)-1, 219, gen_type9_873},
	{22, (BODY_INDEX)-1, 219, gen_type10_873},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 14, gen_type11_873},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 872, NULL},
	{29, (BODY_INDEX)-1, 214, NULL},
	{30, (BODY_INDEX)-1, 872, gen_type12_873},
	{13791, 0, 1199, NULL},
	{13792, (BODY_INDEX)-1, 225, gen_type13_873},
	{13786, 8, 1270, NULL},
	{13787, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13788, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13789, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13790, 16, 225, NULL},
};

extern void Init873(void);
void Init873(void)
{
	IDSC(desc_873, 0, 872);
	IDSC(desc_873 + 1, 1, 872);
	IDSC(desc_873 + 32, 567, 872);
}


#ifdef __cplusplus
}
#endif
