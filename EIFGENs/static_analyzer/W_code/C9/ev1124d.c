/*
 * Class EV_COORDINATE
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_1124 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type1_1124 [] = {0xFF11,236,0xFF12,1123,0xFFFF};
static EIF_TYPE_INDEX gen_type2_1124 [] = {0xFF11,1123,0xFFFF};
static EIF_TYPE_INDEX gen_type3_1124 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_1124 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type5_1124 [] = {0xFF11,1123,0xFFFF};
static EIF_TYPE_INDEX gen_type6_1124 [] = {0xFF11,1123,0xFFFF};
static EIF_TYPE_INDEX gen_type7_1124 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type8_1124 [] = {0xFF11,13,0xFFFF};
static EIF_TYPE_INDEX gen_type9_1124 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type10_1124 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type11_1124 [] = {0xFF11,14,0xFFFF};
static EIF_TYPE_INDEX gen_type12_1124 [] = {0xFF11,1123,0xFFFF};
static EIF_TYPE_INDEX gen_type13_1124 [] = {0xFF11,219,0xFFFF};


static struct desc_info desc_1124[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 219, gen_type0_1124},
	{1, (BODY_INDEX)-1, 236, gen_type1_1124},
	{2, (BODY_INDEX)-1, 190, NULL},
	{3, (BODY_INDEX)-1, 190, NULL},
	{4, (BODY_INDEX)-1, 190, NULL},
	{5, (BODY_INDEX)-1, 190, NULL},
	{6, (BODY_INDEX)-1, 190, NULL},
	{7, (BODY_INDEX)-1, 190, NULL},
	{8, (BODY_INDEX)-1, 190, NULL},
	{9, (BODY_INDEX)-1, 190, NULL},
	{10, (BODY_INDEX)-1, 1123, gen_type2_1124},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type3_1124},
	{14, (BODY_INDEX)-1, 0, gen_type4_1124},
	{15, (BODY_INDEX)-1, 1123, gen_type5_1124},
	{16, (BODY_INDEX)-1, 1123, gen_type6_1124},
	{17, (BODY_INDEX)-1, 0, gen_type7_1124},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 13, gen_type8_1124},
	{21, (BODY_INDEX)-1, 219, gen_type9_1124},
	{22, (BODY_INDEX)-1, 219, gen_type10_1124},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 14, gen_type11_1124},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 1123, NULL},
	{29, (BODY_INDEX)-1, 214, NULL},
	{30, (BODY_INDEX)-1, 1123, gen_type12_1124},
	{16079, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{16080, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{16081, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{16082, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{16083, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{16084, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{16085, (BODY_INDEX)-1, 205, NULL},
	{16086, (BODY_INDEX)-1, 205, NULL},
	{16087, (BODY_INDEX)-1, 205, NULL},
	{16088, (BODY_INDEX)-1, 205, NULL},
	{16089, 0, 193, NULL},
	{16090, 8, 193, NULL},
	{16091, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{16092, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{16093, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{16094, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{16095, (BODY_INDEX)-1, 219, gen_type13_1124},
};

extern void Init1124(void);
void Init1124(void)
{
	IDSC(desc_1124, 0, 1123);
	IDSC(desc_1124 + 1, 1, 1123);
	IDSC(desc_1124 + 32, 540, 1123);
	IDSC(desc_1124 + 48, 334, 1123);
}


#ifdef __cplusplus
}
#endif
