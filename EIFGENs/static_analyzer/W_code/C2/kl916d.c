/*
 * Class KL_CHARACTER_ROUTINES
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_916 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type1_916 [] = {0xFF11,236,0xFF12,915,0xFFFF};
static EIF_TYPE_INDEX gen_type2_916 [] = {0xFF11,915,0xFFFF};
static EIF_TYPE_INDEX gen_type3_916 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_916 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type5_916 [] = {0xFF11,915,0xFFFF};
static EIF_TYPE_INDEX gen_type6_916 [] = {0xFF11,915,0xFFFF};
static EIF_TYPE_INDEX gen_type7_916 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type8_916 [] = {0xFF11,13,0xFFFF};
static EIF_TYPE_INDEX gen_type9_916 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type10_916 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type11_916 [] = {0xFF11,14,0xFFFF};
static EIF_TYPE_INDEX gen_type12_916 [] = {0xFF11,915,0xFFFF};
static EIF_TYPE_INDEX gen_type13_916 [] = {0xFF11,1078,0xFFFF};


static struct desc_info desc_916[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 219, gen_type0_916},
	{1, (BODY_INDEX)-1, 236, gen_type1_916},
	{2, (BODY_INDEX)-1, 190, NULL},
	{3, (BODY_INDEX)-1, 190, NULL},
	{4, (BODY_INDEX)-1, 190, NULL},
	{5, (BODY_INDEX)-1, 190, NULL},
	{6, (BODY_INDEX)-1, 190, NULL},
	{7, (BODY_INDEX)-1, 190, NULL},
	{8, (BODY_INDEX)-1, 190, NULL},
	{9, (BODY_INDEX)-1, 190, NULL},
	{10, (BODY_INDEX)-1, 915, gen_type2_916},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type3_916},
	{14, (BODY_INDEX)-1, 0, gen_type4_916},
	{15, (BODY_INDEX)-1, 915, gen_type5_916},
	{16, (BODY_INDEX)-1, 915, gen_type6_916},
	{17, (BODY_INDEX)-1, 0, gen_type7_916},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 13, gen_type8_916},
	{21, (BODY_INDEX)-1, 219, gen_type9_916},
	{22, (BODY_INDEX)-1, 219, gen_type10_916},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 14, gen_type11_916},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 915, NULL},
	{29, (BODY_INDEX)-1, 214, NULL},
	{30, (BODY_INDEX)-1, 915, gen_type12_916},
	{14133, (BODY_INDEX)-1, 1078, gen_type13_916},
	{14134, (BODY_INDEX)-1, 190, NULL},
	{14135, (BODY_INDEX)-1, 190, NULL},
	{14136, (BODY_INDEX)-1, 184, NULL},
	{14137, (BODY_INDEX)-1, 184, NULL},
	{14138, (BODY_INDEX)-1, 184, NULL},
	{14139, (BODY_INDEX)-1, 184, NULL},
};

extern void Init916(void);
void Init916(void)
{
	IDSC(desc_916, 0, 915);
	IDSC(desc_916 + 1, 1, 915);
	IDSC(desc_916 + 32, 591, 915);
	IDSC(desc_916 + 33, 911, 915);
}


#ifdef __cplusplus
}
#endif
