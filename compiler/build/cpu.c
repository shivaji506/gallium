#include "cpu.h"
void MyIPRewriter__push(struct MyIPRewriter* gs, uint32_t _arg_1, struct packet* _arg_2) {
  uint1_t v_68_2;
  uint32_t v_66_2;
  uint8_t* v_60_2;
  uint8_t* v_60_3;
  uint1_t v_68_3;
  uint1_t v_68_1;
  uint32_t v_66_3;
  uint32_t v_66_1;
  uint1_t v_68_0;
  uint32_t v_66_0;
  uint8_t* v_60_1;
  uint8_t* v_60_0;
  uint8_t* v_33_0;
bb_20:
  if (switch_cond_00) {
    goto bb_21;
  }
  if (switch_cond_11) {
    goto bb_21;
  }
  goto bb_23;
  
bb_21:
  if (v_16_0) {
    goto bb_22;
  }
  goto bb_23;
  
bb_22:
  if (v_20_0) {
    goto bb_23;
  }
  goto bb_26;
  
bb_26:
  v_33_0 = (uint8_t*)v_5_0;
  if (v_35_0) {
    goto bb_44;
  }
  goto bb_50;
  
bb_44:
  if (v_40_0) {
    goto bb_27;
  }
  goto bb_28;
  
bb_27:
  (*v_9_0).f3.f1 = v_44_0;
  if (v_58_0) {
    goto bb_40;
  }
  goto bb_43;
  
bb_40:
  v_60_0 = (uint8_t*)v_4_0;
  gallium_memcpy(v_60_0, v_33_0, 12, 0);
  (*v_4_0).f1.f0.f0 = 3735928559;
  (*v_4_0).f1.f1.f0 = v_47_0;
  (*v_4_0).f1.f2 = v_45_0;
  (*v_4_0).f1.f3 = v_49_0;
  v_66_0 = (*v_9_0).f1;
  (*v_4_0).f2 = v_66_0;
  v_68_0 = (uint1_t)hashmap_insert(&(gs->f4), v_5_0, v_4_0);
  goto bb_38;
  
bb_43:
  v_60_1 = (uint8_t*)v_4_0;
  gallium_memcpy(v_60_1, v_33_0, 12, 0);
  (*v_4_0).f1.f0.f0 = 3735928559;
  (*v_4_0).f1.f1.f0 = v_47_0;
  (*v_4_0).f1.f2 = v_45_0;
  (*v_4_0).f1.f3 = v_49_0;
  v_66_1 = (*v_9_0).f1;
  (*v_4_0).f2 = v_66_1;
  v_68_1 = (uint1_t)hashmap_insert(&(gs->f3), v_5_0, v_4_0);
  goto bb_41;
  
bb_41:
  return;
  
bb_28:
  if (v_71_0) {
    goto bb_29;
  }
  goto bb_32;
  
bb_29:
  if (v_72_0) {
    goto bb_36;
  }
  goto bb_30;
  
bb_30:
  assert_fail();
  assert(false);
  assert(false);
  
bb_32:
  if (v_72_0) {
    goto bb_34;
  }
  goto bb_33;
  
bb_34:
  if (v_100_0) {
    goto bb_36;
  }
  goto bb_37;
  
bb_36:
  goto bb_37;
  
bb_37:
  goto bb_38;
  
bb_38:
  goto bb_39;
  
bb_33:
  assert_fail();
  assert(false);
  assert(false);
  
bb_50:
  if (v_40_0) {
    goto bb_53;
  }
  goto bb_52;
  
bb_53:
  (*v_9_0).f3.f1 = v_44_1;
  if (v_58_0) {
    goto bb_60;
  }
  goto bb_55;
  
bb_60:
  v_60_3 = (uint8_t*)v_4_0;
  gallium_memcpy(v_60_3, v_33_0, 12, 0);
  (*v_4_0).f1.f0.f0 = 3735928559;
  (*v_4_0).f1.f1.f0 = v_47_1;
  (*v_4_0).f1.f2 = v_45_1;
  (*v_4_0).f1.f3 = v_49_1;
  v_66_3 = (*v_9_0).f1;
  (*v_4_0).f2 = v_66_3;
  v_68_3 = (uint1_t)hashmap_insert(&(gs->f4), v_5_0, v_4_0);
  goto bb_62;
  
bb_55:
  v_60_2 = (uint8_t*)v_4_0;
  gallium_memcpy(v_60_2, v_33_0, 12, 0);
  (*v_4_0).f1.f0.f0 = 3735928559;
  (*v_4_0).f1.f1.f0 = v_47_1;
  (*v_4_0).f1.f2 = v_45_1;
  (*v_4_0).f1.f3 = v_49_1;
  v_66_2 = (*v_9_0).f1;
  (*v_4_0).f2 = v_66_2;
  v_68_2 = (uint1_t)hashmap_insert(&(gs->f3), v_5_0, v_4_0);
  goto bb_46;
  
bb_46:
  return;
  
bb_52:
  if (v_71_0) {
    goto bb_56;
  }
  goto bb_54;
  
bb_56:
  if (v_72_0) {
    goto bb_47;
  }
  goto bb_58;
  
bb_58:
  assert_fail();
  assert(false);
  assert(false);
  
bb_54:
  if (v_72_0) {
    goto bb_57;
  }
  goto bb_51;
  
bb_57:
  if (v_100_0) {
    goto bb_47;
  }
  goto bb_49;
  
bb_47:
  goto bb_49;
  
bb_49:
  goto bb_62;
  
bb_62:
  goto bb_45;
  
bb_45:
  return;
  
bb_51:
  assert_fail();
  assert(false);
  assert(false);
  
bb_23:
  goto bb_39;
  
bb_39:
  return;
  
}
