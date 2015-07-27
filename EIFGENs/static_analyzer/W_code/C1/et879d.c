/*
 * Class ETF_MODEL_ACCESS
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_879 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type1_879 [] = {0xFF11,1552,878,0xFFFF};
static EIF_TYPE_INDEX gen_type2_879 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_879 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_879 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type5_879 [] = {0xFF11,13,0xFFFF};
static EIF_TYPE_INDEX gen_type6_879 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type7_879 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type8_879 [] = {0xFF11,14,0xFFFF};
static EIF_TYPE_INDEX gen_type9_879 [] = {0xFF11,880,0xFFFF};


static struct desc_info desc_879[] = {
	{(BODY_INDEX) 13924, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 219, gen_type0_879},
	{1, (BODY_INDEX)-1, 1552, gen_type1_879},
	{2, (BODY_INDEX)-1, 190, NULL},
	{3, (BODY_INDEX)-1, 190, NULL},
	{4, (BODY_INDEX)-1, 190, NULL},
	{5, (BODY_INDEX)-1, 190, NULL},
	{6, (BODY_INDEX)-1, 190, NULL},
	{7, (BODY_INDEX)-1, 190, NULL},
	{8, (BODY_INDEX)-1, 190, NULL},
	{9, (BODY_INDEX)-1, 190, NULL},
	{10, (BODY_INDEX)-1, 878, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type2_879},
	{14, (BODY_INDEX)-1, 0, gen_type3_879},
	{15, (BODY_INDEX)-1, 878, NULL},
	{16, (BODY_INDEX)-1, 878, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type4_879},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 13, gen_type5_879},
	{21, (BODY_INDEX)-1, 219, gen_type6_879},
	{22, (BODY_INDEX)-1, 219, gen_type7_879},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 14, gen_type8_879},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 878, NULL},
	{29, (BODY_INDEX)-1, 214, NULL},
	{30, (BODY_INDEX)-1, 878, NULL},
	{13923, (BODY_INDEX)-1, 880, gen_type9_879},
};

extern void Init879(void);
void Init879(void)
{
	IDSC(desc_879, 0, 878);
	IDSC(desc_879 + 1, 1, 878);
	IDSC(desc_879 + 32, 360, 878);
}


#ifdef __cplusplus
}
#endif
