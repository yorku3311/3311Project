/*
 * Class KL_SHARED_STANDARD_FILES
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_1016 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type1_1016 [] = {0xFF11,236,0xFF12,1015,0xFFFF};
static EIF_TYPE_INDEX gen_type2_1016 [] = {0xFF11,1015,0xFFFF};
static EIF_TYPE_INDEX gen_type3_1016 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_1016 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type5_1016 [] = {0xFF11,1015,0xFFFF};
static EIF_TYPE_INDEX gen_type6_1016 [] = {0xFF11,1015,0xFFFF};
static EIF_TYPE_INDEX gen_type7_1016 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type8_1016 [] = {0xFF11,13,0xFFFF};
static EIF_TYPE_INDEX gen_type9_1016 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type10_1016 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type11_1016 [] = {0xFF11,14,0xFFFF};
static EIF_TYPE_INDEX gen_type12_1016 [] = {0xFF11,1015,0xFFFF};
static EIF_TYPE_INDEX gen_type13_1016 [] = {0xFF11,870,0xFFFF};


static struct desc_info desc_1016[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 219, gen_type0_1016},
	{1, (BODY_INDEX)-1, 236, gen_type1_1016},
	{2, (BODY_INDEX)-1, 190, NULL},
	{3, (BODY_INDEX)-1, 190, NULL},
	{4, (BODY_INDEX)-1, 190, NULL},
	{5, (BODY_INDEX)-1, 190, NULL},
	{6, (BODY_INDEX)-1, 190, NULL},
	{7, (BODY_INDEX)-1, 190, NULL},
	{8, (BODY_INDEX)-1, 190, NULL},
	{9, (BODY_INDEX)-1, 190, NULL},
	{10, (BODY_INDEX)-1, 1015, gen_type2_1016},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type3_1016},
	{14, (BODY_INDEX)-1, 0, gen_type4_1016},
	{15, (BODY_INDEX)-1, 1015, gen_type5_1016},
	{16, (BODY_INDEX)-1, 1015, gen_type6_1016},
	{17, (BODY_INDEX)-1, 0, gen_type7_1016},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 13, gen_type8_1016},
	{21, (BODY_INDEX)-1, 219, gen_type9_1016},
	{22, (BODY_INDEX)-1, 219, gen_type10_1016},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 14, gen_type11_1016},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 1015, NULL},
	{29, (BODY_INDEX)-1, 214, NULL},
	{30, (BODY_INDEX)-1, 1015, gen_type12_1016},
	{14820, (BODY_INDEX)-1, 870, gen_type13_1016},
};

extern void Init1016(void);
void Init1016(void)
{
	IDSC(desc_1016, 0, 1015);
	IDSC(desc_1016 + 1, 1, 1015);
	IDSC(desc_1016 + 32, 511, 1015);
}


#ifdef __cplusplus
}
#endif
