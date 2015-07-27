/*
 * Class EV_BUTTON_ACTION_SEQUENCES
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_925 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type1_925 [] = {0xFF11,236,0xFF12,924,0xFFFF};
static EIF_TYPE_INDEX gen_type2_925 [] = {0xFF11,924,0xFFFF};
static EIF_TYPE_INDEX gen_type3_925 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_925 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type5_925 [] = {0xFF11,924,0xFFFF};
static EIF_TYPE_INDEX gen_type6_925 [] = {0xFF11,924,0xFFFF};
static EIF_TYPE_INDEX gen_type7_925 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type8_925 [] = {0xFF11,13,0xFFFF};
static EIF_TYPE_INDEX gen_type9_925 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type10_925 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type11_925 [] = {0xFF11,14,0xFFFF};
static EIF_TYPE_INDEX gen_type12_925 [] = {0xFF11,924,0xFFFF};
static EIF_TYPE_INDEX gen_type13_925 [] = {0xFF11,987,0xFFFF};
static EIF_TYPE_INDEX gen_type14_925 [] = {0xFF11,1112,0xFFFF};


static struct desc_info desc_925[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 219, gen_type0_925},
	{1, (BODY_INDEX)-1, 236, gen_type1_925},
	{2, (BODY_INDEX)-1, 190, NULL},
	{3, (BODY_INDEX)-1, 190, NULL},
	{4, (BODY_INDEX)-1, 190, NULL},
	{5, (BODY_INDEX)-1, 190, NULL},
	{6, (BODY_INDEX)-1, 190, NULL},
	{7, (BODY_INDEX)-1, 190, NULL},
	{8, (BODY_INDEX)-1, 190, NULL},
	{9, (BODY_INDEX)-1, 190, NULL},
	{10, (BODY_INDEX)-1, 924, gen_type2_925},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type3_925},
	{14, (BODY_INDEX)-1, 0, gen_type4_925},
	{15, (BODY_INDEX)-1, 924, gen_type5_925},
	{16, (BODY_INDEX)-1, 924, gen_type6_925},
	{17, (BODY_INDEX)-1, 0, gen_type7_925},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 13, gen_type8_925},
	{21, (BODY_INDEX)-1, 219, gen_type9_925},
	{22, (BODY_INDEX)-1, 219, gen_type10_925},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 14, gen_type11_925},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 924, NULL},
	{29, (BODY_INDEX)-1, 214, NULL},
	{30, (BODY_INDEX)-1, 924, gen_type12_925},
	{14230, 0, 987, gen_type13_925},
	{14231, (BODY_INDEX)-1, 1112, gen_type14_925},
};

extern void Init925(void);
void Init925(void)
{
	IDSC(desc_925, 0, 924);
	IDSC(desc_925 + 1, 1, 924);
	IDSC(desc_925 + 32, 626, 924);
}


#ifdef __cplusplus
}
#endif
