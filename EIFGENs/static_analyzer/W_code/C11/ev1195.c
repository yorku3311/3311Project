/*
 * Code for class EV_GTK_C_STRING
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1195_10683(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1195_10684(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1195_10685(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1195_10686(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1195_10687(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1195_10688(EIF_REFERENCE);
extern void F1195_10689(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1195_10690(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1195_10691(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1195_10692(EIF_REFERENCE);
extern void F1195_10693(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1195_10694(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1195_10695(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1195_10696(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit1195(void);

#ifdef __cplusplus
}
#endif

#include <string.h>
#include "eif_misc.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {EV_GTK_C_STRING}.make_from_pointer */
void F1195_10683 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "make_from_pointer";
	RTEX;
#define arg1 arg1x.it_p
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {{0}, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_POINTER tp1;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1194, Current, 0, 1, 16522);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1194, Current, 16522);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_utf8_ptr_not_null", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(36, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	up1 = arg1;
	up2 = arg1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(8245, dtype))(Current, up2x)).it_i4);
	ui4_1 = (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L));
	ub1 = (EIF_BOOLEAN) 0;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(8244, dtype))(Current, up1x, ui4_1x, ub1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef up2
#undef ui4_1
#undef ub1
#undef arg1
}

/* {EV_GTK_C_STRING}.make_from_path */
void F1195_10684 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "make_from_path";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1194, Current, 1, 1, 16523);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1194, Current, 16523);
	RTCC(arg1, 1194, l_feature_name, 1, eif_attached_type(172));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_path_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF8000096, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3512, "to_pointer", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 8238, 0x10000000, 1); /* string_length */
	
	ti4_1 = *(EIF_INTEGER_32 *)(loc1 + RTVA(2670, "count", loc1));
	
	*(EIF_INTEGER_32 *)(Current + RTWA(8238, dtype)) = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L));
	RTHOOK(4);
	RTDBGAA(Current, dtype, 8236, 0x40000000, 1); /* item */
	
	ti4_1 = *(EIF_INTEGER_32 *)(loc1 + RTVA(2670, "count", loc1));
	
	ui4_1 = ti4_1;
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5140, 868))(Current, ui4_1x)).it_p);
	*(EIF_POINTER *)(Current + RTWA(8236, dtype)) = (EIF_POINTER) tp1;
	RTHOOK(5);
	tp1 = *(EIF_POINTER *)(Current + RTWA(8236, dtype));
	tp2 = *(EIF_POINTER *)(loc1 + RTVA(2669, "item", loc1));
	
	up1 = tp2;
	ti4_1 = *(EIF_INTEGER_32 *)(loc1 + RTVA(2670, "count", loc1));
	
	ui4_1 = ti4_1;
	memcpy((void *)tp1, (const void *) up1, (size_t) ui4_1);
	
	RTHOOK(6);
	RTDBGAA(Current, dtype, 8235, 0x04000000, 1); /* is_shared */
	
	*(EIF_BOOLEAN *)(Current + RTWA(8235, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef up1
#undef ui4_1
#undef arg1
}

/* {EV_GTK_C_STRING}.is_shared */
EIF_TYPED_VALUE F1195_10685 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(8235,Dtype(Current)));
	return r;
}


/* {EV_GTK_C_STRING}.item */
EIF_TYPED_VALUE F1195_10686 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_POINTER;
	r.it_p = *(EIF_POINTER *)(Current + RTWA(8236,Dtype(Current)));
	return r;
}


/* {EV_GTK_C_STRING}.string */
EIF_TYPED_VALUE F1195_10687 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "string";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_NATURAL_8 loc2 = (EIF_NATURAL_8) 0;
	EIF_NATURAL_32 loc3 = (EIF_NATURAL_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {{0}, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uw1x = {{0}, SK_CHAR32};
#define uw1 uw1x.it_c4
	EIF_TYPED_VALUE uu1_1x = {{0}, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_32 tu4_2;
	EIF_CHARACTER_32 tw1;
	EIF_NATURAL_8 tu1_1;
	EIF_NATURAL_8 tu1_2;
	EIF_CHARACTER_8 tc1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_UINT8, &loc2);
	RTLU(SK_UINT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_INT32, &loc6);
	
	RTEAA(l_feature_name, 1194, Current, 6, 0, 16526);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1194, Current, 16526);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
	
	loc4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(2);
	RTDBGAL(Current, 6, 0x10000000, 1, 0); /* loc6 */
	
	loc6 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(3);
	RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
	
	loc5 = *(EIF_INTEGER_32 *)(Current + RTWA(8238, dtype));
	RTHOOK(4);
	RTDBGAL(Current, 1, 0xF8000096, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(8242, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(5);
	tp1 = *(EIF_POINTER *)(Current + RTWA(8236, dtype));
	up1 = tp1;
	ui4_1 = loc5;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2668, "set_from_pointer", loc1))(loc1, up1x, ui4_1x);
	
	RTHOOK(6);
	RTDBGAL(Current, 0, 0xF80000E1, 0,0); /* Result */
	
	tr1 = RTLN(225);
	ui4_1 = loc5;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4329, Dtype(tr1)))(tr1, ui4_1x);
	
	RTNHOOK(6,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(7);
	ui4_1 = loc5;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4456, "set_count", Result))(Result, ui4_1x);
	
	for (;;) {
		RTHOOK(8);
		if ((EIF_BOOLEAN)(loc4 == loc5)) break;
		RTHOOK(9);
		RTDBGAL(Current, 2, 0x30000000, 1, 0); /* loc2 */
		
		ui4_1 = loc4;
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2672, "read_natural_8", loc1))(loc1, ui4_1x)).it_n1);
		
		loc2 = (EIF_NATURAL_8) tu1_1;
		RTHOOK(10);
		RTDBGAL(Current, 6, 0x10000000, 1, 0); /* loc6 */
		
		loc6++;
		RTHOOK(11);
		tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 127L);
		
		if ((EIF_BOOLEAN) (loc2 <= tu1_1)) {
			RTHOOK(12);
			tc1 = (EIF_CHARACTER_8) loc2;
			
			tw1 = (EIF_CHARACTER_32) tc1;
			
			uw1 = tw1;
			ui4_1 = loc6;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1738, "put", Result))(Result, uw1x, ui4_1x);
			
		} else {
			RTHOOK(13);
			tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 224L);
			
			uu1_1 = tu1_1;
			tu1_1 = eif_bit_and(loc2,uu1_1);
			
			tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 192L);
			
			if ((EIF_BOOLEAN)(tu1_1 == tu1_2)) {
				RTHOOK(14);
				RTDBGAL(Current, 3, 0x38000000, 1, 0); /* loc3 */
				
				tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 31L);
				
				uu1_1 = tu1_1;
				tu1_1 = eif_bit_and(loc2,uu1_1);
				
				tu4_1 = (EIF_NATURAL_32) tu1_1;
				
				ui4_1 = ((EIF_INTEGER_32) 6L);
				tu4_2 = eif_bit_shift_left(tu4_1,ui4_1);
				
				loc3 = (EIF_NATURAL_32) tu4_2;
				RTHOOK(15);
				RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
				
				loc4++;
				RTHOOK(16);
				RTDBGAL(Current, 2, 0x30000000, 1, 0); /* loc2 */
				
				ui4_1 = loc4;
				tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2672, "read_natural_8", loc1))(loc1, ui4_1x)).it_n1);
				
				loc2 = (EIF_NATURAL_8) tu1_1;
				RTHOOK(17);
				RTDBGAL(Current, 3, 0x38000000, 1, 0); /* loc3 */
				
				tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 63L);
				
				uu1_1 = tu1_1;
				tu1_1 = eif_bit_and(loc2,uu1_1);
				
				tu4_1 = (EIF_NATURAL_32) tu1_1;
				
				uu4_1 = tu4_1;
				tu4_1 = eif_bit_or(loc3,uu4_1);
				
				loc3 = (EIF_NATURAL_32) tu4_1;
				RTHOOK(18);
				tw1 = (EIF_CHARACTER_32) loc3;
				
				uw1 = tw1;
				ui4_1 = loc6;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1738, "put", Result))(Result, uw1x, ui4_1x);
				
			} else {
				RTHOOK(19);
				tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 240L);
				
				uu1_1 = tu1_1;
				tu1_1 = eif_bit_and(loc2,uu1_1);
				
				tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 224L);
				
				if ((EIF_BOOLEAN)(tu1_1 == tu1_2)) {
					RTHOOK(20);
					RTDBGAL(Current, 3, 0x38000000, 1, 0); /* loc3 */
					
					tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 15L);
					
					uu1_1 = tu1_1;
					tu1_1 = eif_bit_and(loc2,uu1_1);
					
					tu4_1 = (EIF_NATURAL_32) tu1_1;
					
					ui4_1 = ((EIF_INTEGER_32) 12L);
					tu4_2 = eif_bit_shift_left(tu4_1,ui4_1);
					
					loc3 = (EIF_NATURAL_32) tu4_2;
					RTHOOK(21);
					RTDBGAL(Current, 2, 0x30000000, 1, 0); /* loc2 */
					
					ui4_1 = (EIF_INTEGER_32) (loc4 + ((EIF_INTEGER_32) 1L));
					tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2672, "read_natural_8", loc1))(loc1, ui4_1x)).it_n1);
					
					loc2 = (EIF_NATURAL_8) tu1_1;
					RTHOOK(22);
					RTDBGAL(Current, 3, 0x38000000, 1, 0); /* loc3 */
					
					tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 63L);
					
					uu1_1 = tu1_1;
					tu1_1 = eif_bit_and(loc2,uu1_1);
					
					tu4_1 = (EIF_NATURAL_32) tu1_1;
					
					ui4_1 = ((EIF_INTEGER_32) 6L);
					tu4_2 = eif_bit_shift_left(tu4_1,ui4_1);
					
					uu4_1 = tu4_2;
					tu4_1 = eif_bit_or(loc3,uu4_1);
					
					loc3 = (EIF_NATURAL_32) tu4_1;
					RTHOOK(23);
					RTDBGAL(Current, 2, 0x30000000, 1, 0); /* loc2 */
					
					ui4_1 = (EIF_INTEGER_32) (loc4 + ((EIF_INTEGER_32) 2L));
					tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2672, "read_natural_8", loc1))(loc1, ui4_1x)).it_n1);
					
					loc2 = (EIF_NATURAL_8) tu1_1;
					RTHOOK(24);
					RTDBGAL(Current, 3, 0x38000000, 1, 0); /* loc3 */
					
					tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 63L);
					
					uu1_1 = tu1_1;
					tu1_1 = eif_bit_and(loc2,uu1_1);
					
					tu4_1 = (EIF_NATURAL_32) tu1_1;
					
					uu4_1 = tu4_1;
					tu4_1 = eif_bit_or(loc3,uu4_1);
					
					loc3 = (EIF_NATURAL_32) tu4_1;
					RTHOOK(25);
					tw1 = (EIF_CHARACTER_32) loc3;
					
					uw1 = tw1;
					ui4_1 = loc6;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1738, "put", Result))(Result, uw1x, ui4_1x);
					
					RTHOOK(26);
					RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
					
					loc4 += ((EIF_INTEGER_32) 2L);
				} else {
					RTHOOK(27);
					tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 248L);
					
					uu1_1 = tu1_1;
					tu1_1 = eif_bit_and(loc2,uu1_1);
					
					tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 240L);
					
					if ((EIF_BOOLEAN)(tu1_1 == tu1_2)) {
						RTHOOK(28);
						RTDBGAL(Current, 3, 0x38000000, 1, 0); /* loc3 */
						
						tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 7L);
						
						uu1_1 = tu1_1;
						tu1_1 = eif_bit_and(loc2,uu1_1);
						
						tu4_1 = (EIF_NATURAL_32) tu1_1;
						
						ui4_1 = ((EIF_INTEGER_32) 18L);
						tu4_2 = eif_bit_shift_left(tu4_1,ui4_1);
						
						loc3 = (EIF_NATURAL_32) tu4_2;
						RTHOOK(29);
						RTDBGAL(Current, 2, 0x30000000, 1, 0); /* loc2 */
						
						ui4_1 = (EIF_INTEGER_32) (loc4 + ((EIF_INTEGER_32) 1L));
						tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2672, "read_natural_8", loc1))(loc1, ui4_1x)).it_n1);
						
						loc2 = (EIF_NATURAL_8) tu1_1;
						RTHOOK(30);
						RTDBGAL(Current, 3, 0x38000000, 1, 0); /* loc3 */
						
						tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 63L);
						
						uu1_1 = tu1_1;
						tu1_1 = eif_bit_and(loc2,uu1_1);
						
						tu4_1 = (EIF_NATURAL_32) tu1_1;
						
						ui4_1 = ((EIF_INTEGER_32) 12L);
						tu4_2 = eif_bit_shift_left(tu4_1,ui4_1);
						
						uu4_1 = tu4_2;
						tu4_1 = eif_bit_or(loc3,uu4_1);
						
						loc3 = (EIF_NATURAL_32) tu4_1;
						RTHOOK(31);
						RTDBGAL(Current, 2, 0x30000000, 1, 0); /* loc2 */
						
						ui4_1 = (EIF_INTEGER_32) (loc4 + ((EIF_INTEGER_32) 2L));
						tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2672, "read_natural_8", loc1))(loc1, ui4_1x)).it_n1);
						
						loc2 = (EIF_NATURAL_8) tu1_1;
						RTHOOK(32);
						RTDBGAL(Current, 3, 0x38000000, 1, 0); /* loc3 */
						
						tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 63L);
						
						uu1_1 = tu1_1;
						tu1_1 = eif_bit_and(loc2,uu1_1);
						
						tu4_1 = (EIF_NATURAL_32) tu1_1;
						
						ui4_1 = ((EIF_INTEGER_32) 6L);
						tu4_2 = eif_bit_shift_left(tu4_1,ui4_1);
						
						uu4_1 = tu4_2;
						tu4_1 = eif_bit_or(loc3,uu4_1);
						
						loc3 = (EIF_NATURAL_32) tu4_1;
						RTHOOK(33);
						RTDBGAL(Current, 2, 0x30000000, 1, 0); /* loc2 */
						
						ui4_1 = (EIF_INTEGER_32) (loc4 + ((EIF_INTEGER_32) 3L));
						tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2672, "read_natural_8", loc1))(loc1, ui4_1x)).it_n1);
						
						loc2 = (EIF_NATURAL_8) tu1_1;
						RTHOOK(34);
						RTDBGAL(Current, 3, 0x38000000, 1, 0); /* loc3 */
						
						tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 63L);
						
						uu1_1 = tu1_1;
						tu1_1 = eif_bit_and(loc2,uu1_1);
						
						tu4_1 = (EIF_NATURAL_32) tu1_1;
						
						uu4_1 = tu4_1;
						tu4_1 = eif_bit_or(loc3,uu4_1);
						
						loc3 = (EIF_NATURAL_32) tu4_1;
						RTHOOK(35);
						tw1 = (EIF_CHARACTER_32) loc3;
						
						uw1 = tw1;
						ui4_1 = loc6;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1738, "put", Result))(Result, uw1x, ui4_1x);
						
						RTHOOK(36);
						RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
						
						loc4 += ((EIF_INTEGER_32) 3L);
					} else {
						RTHOOK(37);
						tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 252L);
						
						uu1_1 = tu1_1;
						tu1_1 = eif_bit_and(loc2,uu1_1);
						
						tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 248L);
						
						if ((EIF_BOOLEAN)(tu1_1 == tu1_2)) {
							RTHOOK(38);
							tw1 = (EIF_CHARACTER_32) (EIF_CHARACTER_8) ' ';
							
							uw1 = tw1;
							ui4_1 = loc6;
							(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1738, "put", Result))(Result, uw1x, ui4_1x);
							
							RTHOOK(39);
							RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
							
							loc4 += ((EIF_INTEGER_32) 4L);
						} else {
							RTHOOK(40);
							tw1 = (EIF_CHARACTER_32) (EIF_CHARACTER_8) ' ';
							
							uw1 = tw1;
							ui4_1 = loc6;
							(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1738, "put", Result))(Result, uw1x, ui4_1x);
							
							RTHOOK(41);
							RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
							
							loc4 += ((EIF_INTEGER_32) 5L);
						}
					}
				}
			}
		}
		RTHOOK(42);
		RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
		
		loc4++;
	}
	RTHOOK(43);
	ui4_1 = loc6;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4456, "set_count", Result))(Result, ui4_1x);
	
	RTHOOK(44);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(36, dtype))(Current)).it_p);
	up1 = tp1;
	ui4_1 = ((EIF_INTEGER_32) 0L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2668, "set_from_pointer", loc1))(loc1, up1x, ui4_1x);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(45);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(8);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ui4_1
#undef uu4_1
#undef uw1
#undef uu1_1
}

/* {EV_GTK_C_STRING}.string_length */
EIF_TYPED_VALUE F1195_10688 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(8238,Dtype(Current)));
	return r;
}


/* {EV_GTK_C_STRING}.set_with_eiffel_string */
void F1195_10689 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_with_eiffel_string";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLR(3,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1194, Current, 0, 1, 16528);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1194, Current, 16528);
	RTCC(arg1, 1194, l_feature_name, 1, eif_attached_type(216));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	ur1 = RTCCL(arg1);
	ub1 = (EIF_BOOLEAN) 0;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(8243, dtype))(Current, ur1x, ub1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("string_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(8237, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(3,1);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4374, "same_string_general", tr1))(tr1, ur1x)).it_b);
		
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef ur1
#undef ub1
#undef arg1
}

/* {EV_GTK_C_STRING}.share_with_eiffel_string */
void F1195_10690 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "share_with_eiffel_string";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLR(3,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1194, Current, 0, 1, 16529);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1194, Current, 16529);
	RTCC(arg1, 1194, l_feature_name, 1, eif_attached_type(216));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	ur1 = RTCCL(arg1);
	ub1 = (EIF_BOOLEAN) 1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(8243, dtype))(Current, ur1x, ub1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("string_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(8237, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(3,1);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4374, "same_string_general", tr1))(tr1, ur1x)).it_b);
		
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef ur1
#undef ub1
#undef arg1
}

/* {EV_GTK_C_STRING}.share_from_pointer */
void F1195_10691 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "share_from_pointer";
	RTEX;
#define arg1 arg1x.it_p
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {{0}, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_POINTER tp1;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1194, Current, 0, 1, 16530);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1194, Current, 16530);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_utf8_ptr_not_null", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(36, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	up1 = arg1;
	up2 = arg1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(8245, dtype))(Current, up2x)).it_i4);
	ui4_1 = (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L));
	ub1 = (EIF_BOOLEAN) 1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(8244, dtype))(Current, up1x, ui4_1x, ub1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef up2
#undef ui4_1
#undef ub1
#undef arg1
}

/* {EV_GTK_C_STRING}.shared_pointer_helper */
RTOID (F1195_10692)
EIF_TYPED_VALUE F1195_10692 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "shared_pointer_helper";
	RTEX;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F1195_10692);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1194, Current, 0, 0, 16531);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1194, Current, 16531);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000096, 0,0); /* Result */
	
	tr1 = RTLN(150);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(36, Dtype(Current)))(Current)).it_p);
	up1 = tp1;
	ui4_1 = ((EIF_INTEGER_32) 0L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(2666, Dtype(tr1)))(tr1, up1x, ui4_1x);
	
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ui4_1
#undef Result
}

/* {EV_GTK_C_STRING}.internal_set_with_eiffel_string */
void F1195_10693 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "internal_set_with_eiffel_string";
	RTEX;
	EIF_POINTER loc1 = (EIF_POINTER) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_NATURAL_32 loc4 = (EIF_NATURAL_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_b
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {{0}, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE ui1_1x = {{0}, SK_INT8};
#define ui1_1 ui1_1x.it_i1
	EIF_TYPED_VALUE uu1_1x = {{0}, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_INTEGER_32 ti4_1;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_32 tu4_2;
	EIF_NATURAL_32 tu4_3;
	EIF_INTEGER_8 ti1_1;
	EIF_NATURAL_8 tu1_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_b = * (EIF_BOOLEAN *) arg2x.it_r;
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,loc6);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_BOOL,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_POINTER, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_UINT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_REF, &loc6);
	
	RTEAA(l_feature_name, 1194, Current, 6, 2, 16532);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1194, Current, 16532);
	RTCC(arg1, 1194, l_feature_name, 1, eif_attached_type(216));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(4368, "count", arg1))(arg1)).it_i4);
	
	loc5 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(3);
	RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
	
	loc3 = (EIF_INTEGER_32) loc5;
	for (;;) {
		RTHOOK(4);
		if ((EIF_BOOLEAN)(loc3 == ((EIF_INTEGER_32) 0L))) break;
		RTHOOK(5);
		RTDBGAL(Current, 4, 0x38000000, 1, 0); /* loc4 */
		
		ui4_1 = loc3;
		tu4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4331, "code", arg1))(arg1, ui4_1x)).it_n4);
		
		loc4 = (EIF_NATURAL_32) tu4_1;
		RTHOOK(6);
		tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 127L);
		
		if ((EIF_BOOLEAN) (loc4 <= tu4_1)) {
			RTHOOK(7);
			RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
			
			loc2++;
		} else {
			RTHOOK(8);
			tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 2047L);
			
			if ((EIF_BOOLEAN) (loc4 <= tu4_1)) {
				RTHOOK(9);
				RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
				
				loc2 += ((EIF_INTEGER_32) 2L);
			} else {
				RTHOOK(10);
				tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 65535L);
				
				if ((EIF_BOOLEAN) (loc4 <= tu4_1)) {
					RTHOOK(11);
					RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
					
					loc2 += ((EIF_INTEGER_32) 3L);
				} else {
					RTHOOK(12);
					RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
					
					loc2 += ((EIF_INTEGER_32) 4L);
				}
			}
		}
		RTHOOK(13);
		RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
		
		loc3--;
	}
	RTHOOK(14);
	RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
	
	loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	RTHOOK(15);
	tb1 = '\0';
	tp1 = *(EIF_POINTER *)(Current + RTWA(8236, dtype));
	tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(36, dtype))(Current)).it_p);
	if ((EIF_BOOLEAN)(tp1 != tp2)) {
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(8235, dtype));
		tb1 = (EIF_BOOLEAN) !tb2;
	}
	if (tb1) {
		RTHOOK(16);
		RTDBGAL(Current, 1, 0x40000000, 1, 0); /* loc1 */
		
		tp1 = *(EIF_POINTER *)(Current + RTWA(8236, dtype));
		up1 = tp1;
		ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
		loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(5141, 868))(Current, up1x, ui4_1x)).it_p);
		RTHOOK(17);
		RTDBGAA(Current, dtype, 8236, 0x40000000, 1); /* item */
		
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(36, dtype))(Current)).it_p);
		*(EIF_POINTER *)(Current + RTWA(8236, dtype)) = (EIF_POINTER) tp1;
	} else {
		RTHOOK(18);
		RTDBGAL(Current, 1, 0x40000000, 1, 0); /* loc1 */
		
		ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
		loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5140, 868))(Current, ui4_1x)).it_p);
	}
	RTHOOK(19);
	RTDBGAL(Current, 6, 0xF8000096, 0, 0); /* loc6 */
	
	loc6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(8242, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(20);
	up1 = loc1;
	ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2668, "set_from_pointer", loc6))(loc6, up1x, ui4_1x);
	
	RTHOOK(21);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	loc2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	for (;;) {
		RTHOOK(22);
		if ((EIF_BOOLEAN) (loc3 > loc5)) break;
		RTHOOK(23);
		RTDBGAL(Current, 4, 0x38000000, 1, 0); /* loc4 */
		
		ui4_1 = loc3;
		tu4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4331, "code", arg1))(arg1, ui4_1x)).it_n4);
		
		loc4 = (EIF_NATURAL_32) tu4_1;
		RTHOOK(24);
		tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 127L);
		
		if ((EIF_BOOLEAN) (loc4 <= tu4_1)) {
			RTHOOK(25);
			tu1_1 = (EIF_NATURAL_8) loc4;
			
			uu1_1 = tu1_1;
			ui4_1 = loc2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2688, "put_natural_8", loc6))(loc6, uu1_1x, ui4_1x);
			
			RTHOOK(26);
			RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
			
			loc2++;
		} else {
			RTHOOK(27);
			tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 2047L);
			
			if ((EIF_BOOLEAN) (loc4 <= tu4_1)) {
				RTHOOK(28);
				tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 192L);
				
				ui4_1 = ((EIF_INTEGER_32) 6L);
				tu4_2 = eif_bit_shift_right(loc4,ui4_1);
				
				uu4_1 = tu4_2;
				tu4_2 = eif_bit_or(tu4_1,uu4_1);
				
				tu1_1 = (EIF_NATURAL_8) tu4_2;
				
				uu1_1 = tu1_1;
				ui4_1 = loc2;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2688, "put_natural_8", loc6))(loc6, uu1_1x, ui4_1x);
				
				RTHOOK(29);
				tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 128L);
				
				tu4_2 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 63L);
				
				uu4_1 = tu4_2;
				tu4_2 = eif_bit_and(loc4,uu4_1);
				
				uu4_1 = tu4_2;
				tu4_2 = eif_bit_or(tu4_1,uu4_1);
				
				tu1_1 = (EIF_NATURAL_8) tu4_2;
				
				uu1_1 = tu1_1;
				ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2688, "put_natural_8", loc6))(loc6, uu1_1x, ui4_1x);
				
				RTHOOK(30);
				RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
				
				loc2 += ((EIF_INTEGER_32) 2L);
			} else {
				RTHOOK(31);
				tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 65535L);
				
				if ((EIF_BOOLEAN) (loc4 <= tu4_1)) {
					RTHOOK(32);
					tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 224L);
					
					ui4_1 = ((EIF_INTEGER_32) 12L);
					tu4_2 = eif_bit_shift_right(loc4,ui4_1);
					
					uu4_1 = tu4_2;
					tu4_2 = eif_bit_or(tu4_1,uu4_1);
					
					tu1_1 = (EIF_NATURAL_8) tu4_2;
					
					uu1_1 = tu1_1;
					ui4_1 = loc2;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2688, "put_natural_8", loc6))(loc6, uu1_1x, ui4_1x);
					
					RTHOOK(33);
					tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 128L);
					
					ui4_1 = ((EIF_INTEGER_32) 6L);
					tu4_2 = eif_bit_shift_right(loc4,ui4_1);
					
					tu4_3 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 63L);
					
					uu4_1 = tu4_3;
					tu4_3 = eif_bit_and((tu4_2),uu4_1);
					
					uu4_1 = tu4_3;
					tu4_2 = eif_bit_or(tu4_1,uu4_1);
					
					tu1_1 = (EIF_NATURAL_8) tu4_2;
					
					uu1_1 = tu1_1;
					ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2688, "put_natural_8", loc6))(loc6, uu1_1x, ui4_1x);
					
					RTHOOK(34);
					tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 128L);
					
					tu4_2 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 63L);
					
					uu4_1 = tu4_2;
					tu4_2 = eif_bit_and(loc4,uu4_1);
					
					uu4_1 = tu4_2;
					tu4_2 = eif_bit_or(tu4_1,uu4_1);
					
					tu1_1 = (EIF_NATURAL_8) tu4_2;
					
					uu1_1 = tu1_1;
					ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 2L));
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2688, "put_natural_8", loc6))(loc6, uu1_1x, ui4_1x);
					
					RTHOOK(35);
					RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
					
					loc2 += ((EIF_INTEGER_32) 3L);
				} else {
					if (RTAL & CK_CHECK) {
						RTHOOK(36);
						RTCT("max_4_bytes", EX_CHECK);
						tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1114111L);
						
						if ((EIF_BOOLEAN) (loc4 <= tu4_1)) {
							RTCK;
						} else {
							RTCF;
						}
					}
					RTHOOK(37);
					tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 240L);
					
					ui4_1 = ((EIF_INTEGER_32) 18L);
					tu4_2 = eif_bit_shift_right(loc4,ui4_1);
					
					uu4_1 = tu4_2;
					tu4_2 = eif_bit_or(tu4_1,uu4_1);
					
					tu1_1 = (EIF_NATURAL_8) tu4_2;
					
					uu1_1 = tu1_1;
					ui4_1 = loc2;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2688, "put_natural_8", loc6))(loc6, uu1_1x, ui4_1x);
					
					RTHOOK(38);
					tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 128L);
					
					ui4_1 = ((EIF_INTEGER_32) 12L);
					tu4_2 = eif_bit_shift_right(loc4,ui4_1);
					
					tu4_3 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 63L);
					
					uu4_1 = tu4_3;
					tu4_3 = eif_bit_and((tu4_2),uu4_1);
					
					uu4_1 = tu4_3;
					tu4_2 = eif_bit_or(tu4_1,uu4_1);
					
					tu1_1 = (EIF_NATURAL_8) tu4_2;
					
					uu1_1 = tu1_1;
					ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2688, "put_natural_8", loc6))(loc6, uu1_1x, ui4_1x);
					
					RTHOOK(39);
					tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 128L);
					
					ui4_1 = ((EIF_INTEGER_32) 6L);
					tu4_2 = eif_bit_shift_right(loc4,ui4_1);
					
					tu4_3 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 63L);
					
					uu4_1 = tu4_3;
					tu4_3 = eif_bit_and((tu4_2),uu4_1);
					
					uu4_1 = tu4_3;
					tu4_2 = eif_bit_or(tu4_1,uu4_1);
					
					tu1_1 = (EIF_NATURAL_8) tu4_2;
					
					uu1_1 = tu1_1;
					ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 2L));
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2688, "put_natural_8", loc6))(loc6, uu1_1x, ui4_1x);
					
					RTHOOK(40);
					tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 128L);
					
					tu4_2 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 63L);
					
					uu4_1 = tu4_2;
					tu4_2 = eif_bit_and(loc4,uu4_1);
					
					uu4_1 = tu4_2;
					tu4_2 = eif_bit_or(tu4_1,uu4_1);
					
					tu1_1 = (EIF_NATURAL_8) tu4_2;
					
					uu1_1 = tu1_1;
					ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 3L));
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2688, "put_natural_8", loc6))(loc6, uu1_1x, ui4_1x);
					
					RTHOOK(41);
					RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
					
					loc2 += ((EIF_INTEGER_32) 4L);
				}
			}
		}
		RTHOOK(42);
		RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
		
		loc3++;
	}
	RTHOOK(43);
	ti1_1 = (EIF_INTEGER_8) ((EIF_INTEGER_32) 0L);
	
	ui1_1 = ti1_1;
	ui4_1 = loc2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2692, "put_integer_8", loc6))(loc6, ui1_1x, ui4_1x);
	
	RTHOOK(44);
	up1 = loc1;
	ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
	ub1 = arg2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(8244, dtype))(Current, up1x, ui4_1x, ub1x);
	RTHOOK(45);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(36, dtype))(Current)).it_p);
	up1 = tp1;
	ui4_1 = ((EIF_INTEGER_32) 0L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2668, "set_from_pointer", loc6))(loc6, up1x, ui4_1x);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(46);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(10);
	RTEE;
#undef up1
#undef ui4_1
#undef uu4_1
#undef ui1_1
#undef uu1_1
#undef ub1
#undef arg2
#undef arg1
}

/* {EV_GTK_C_STRING}.set_from_pointer */
void F1195_10694 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "set_from_pointer";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_b
	EIF_POINTER tp1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_b = * (EIF_BOOLEAN *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_BOOL,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1194, Current, 0, 3, 16533);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1194, Current, 16533);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_ptr_not_null", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(36, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("size_valid", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg2 > ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(2653, dtype))(Current);
	RTHOOK(4);
	RTDBGAA(Current, dtype, 8238, 0x10000000, 1); /* string_length */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(8238, dtype)) = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg2 - ((EIF_INTEGER_32) 1L));
	RTHOOK(5);
	RTDBGAA(Current, dtype, 8236, 0x40000000, 1); /* item */
	
	*(EIF_POINTER *)(Current + RTWA(8236, dtype)) = (EIF_POINTER) arg1;
	RTHOOK(6);
	RTDBGAA(Current, dtype, 8235, 0x04000000, 1); /* is_shared */
	
	*(EIF_BOOLEAN *)(Current + RTWA(8235, dtype)) = (EIF_BOOLEAN) arg3;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_GTK_C_STRING}.dispose */
void F1195_10695 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "dispose";
	RTEX;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1194, Current, 0, 0, 16520);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1194, Current, 16520);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = '\0';
	tp1 = *(EIF_POINTER *)(Current + RTWA(8236, dtype));
	tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(36, dtype))(Current)).it_p);
	if ((EIF_BOOLEAN)(tp1 != tp2)) {
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(8235, dtype));
		tb1 = (EIF_BOOLEAN) !tb2;
	}
	if (tb1) {
		RTHOOK(2);
		tp1 = *(EIF_POINTER *)(Current + RTWA(8236, dtype));
		up1 = tp1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5131, 868))(Current, up1x);
		RTHOOK(3);
		RTDBGAA(Current, dtype, 8236, 0x40000000, 1); /* item */
		
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(36, dtype))(Current)).it_p);
		*(EIF_POINTER *)(Current + RTWA(8236, dtype)) = (EIF_POINTER) tp1;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
}

/* {EV_GTK_C_STRING}.c_strlen */
EIF_TYPED_VALUE F1195_10696 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "c_strlen";
	RTEX;
#define arg1 arg1x.it_p
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1194, Current, 0, 1, 16521);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(1194, Current, 16521);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) strlen(((char*) arg1));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef arg1
}

void EIF_Minit1195 (void)
{
	GTCX
	RTOTS (10692,F1195_10692)
}


#ifdef __cplusplus
}
#endif
