/* -*- P4_14 -*- */
#ifdef __TARGET_TOFINO__
#include <tofino/constants.p4>
#include <tofino/intrinsic_metadata.p4>
#include <tofino/primitives.p4>
#else
#error This program is intended to compile for Tofino P4 architecture only
#endif
/*************************************************************************
 ***********************  H E A D E R S  *********************************
 *************************************************************************/
header_type ether_hdr_t {
  fields {
    dst : 48;
    src : 48;
    ethertype : 16;
  }
}

header_type ipv4_hdr_t {
  fields {
    vihl : 8;
    tos : 8;
    tot_len : 16;
    id : 16;
    frag_off : 16;
    ttl : 8;
    protocol : 8;
    check : 16;
    saddr : 32;
    daddr : 32;
  }
}

header_type tcp_hdr_t {
  fields {
    source : 16;
    dest : 16;
    seq : 32;
    ack_seq : 32;
    flags : 16;
    window : 16;
    check : 16;
    urg_ptr : 16;
  }
}

header_type udp_hdr_t {
  fields {
    src : 16;
    dest : 16;
    len : 16;
    checksum : 16;
  }
}


/*************************************************************************
 ***********************  M E T A D A T A  *******************************
 *************************************************************************/
header_type meta_t {
  fields {
    meta_sf_7 : 16;
    meta_sf_4 : 32;
    meta_sf_2 : 16;
    meta_sf_1 : 32;
    meta_sf_0 : 32;
    meta_sf_17 : 32;
    meta_sf_11 : 16;
    meta_sf_10 : 32;
    meta_sf_30 : 32;
    meta_sf_28 : 8;
    meta_sf_3 : 16;
    meta_sf_27 : 8;
    meta_sf_16 : 16;
    meta_sf_25 : 32;
    meta_sf_24 : 32;
    meta_sf_21 : 32;
    meta_sf_20 : 32;
    meta_sf_18 : 32;
    meta_sf_39 : 32;
    meta_sf_35 : 32;
    meta_sf_33 : 16;
    meta_sf_32 : 32;
    meta_sf_26 : 8;
    meta_sf_19 : 32;
    meta_sf_43 : 16;
    meta_sf_9 : 32;
    from_bb_66 : 1;
    from_bb_65 : 1;
    from_bb_22 : 1;
    meta_sf_37 : 16;
    from_bb_63 : 1;
    from_bb_25 : 1;
    meta_sf_42 : 16;
    from_bb_85 : 1;
    from_bb_70 : 1;
    from_bb_81 : 1;
    meta_bv16_0 : 16;
    meta_sf_41 : 32;
    from_bb_26 : 1;
    meta_sf_15 : 16;
    meta_sf_34 : 16;
    from_bb_36 : 1;
    from_bb_20 : 1;
    from_bb_68 : 1;
    meta_sf_14 : 32;
    from_bb_54 : 1;
    from_bb_76 : 1;
    meta_sf_44 : 32;
    meta_map_hit_0 : 1;
    from_bb_79 : 1;
    from_bb_29 : 1;
    meta_bv32_1 : 32;
    from_bb_27 : 1;
    from_bb_62 : 1;
    from_bb_38 : 1;
    from_bb_53 : 1;
    from_bb_52 : 1;
    meta_sf_5 : 32;
    from_bb_78 : 1;
    from_bb_23 : 1;
    from_bb_84 : 1;
    meta_sf_36 : 32;
    should_drop : 1;
    from_bb_69 : 1;
    from_bb_77 : 1;
    output_port : 1;
    meta_sf_8 : 32;
    meta_sf_38 : 16;
    from_bb_44 : 1;
    meta_sf_48 : 32;
    from_bb_31 : 1;
    from_bb_50 : 1;
    from_bb_24 : 1;
    vec_idx_0 : 32;
    meta_sf_22 : 32;
    meta_sf_51 : 16;
    meta_sf_47 : 16;
    from_bb_28 : 1;
    meta_sf_40 : 32;
    from_bb_34 : 1;
    __always_1 : 1;
    from_bb_21 : 1;
    meta_sf_12 : 16;
    meta_sf_50 : 16;
    from_bb_73 : 1;
    meta_sf_46 : 16;
    from_bb_35 : 1;
    meta_bv1_2 : 8;
    from_bb_48 : 1;
    from_bb_64 : 1;
    meta_sf_49 : 32;
    from_bb_47 : 1;
    from_bb_49 : 1;
    from_bb_72 : 1;
    from_bb_56 : 1;
    meta_bv1_1 : 8;
    meta_sf_6 : 16;
    meta_sf_45 : 32;
    from_bb_83 : 1;
    from_bb_74 : 1;
    meta_bv1_3 : 8;
    meta_bv32_0 : 32;
    meta_sf_13 : 32;
    from_bb_61 : 1;
    from_bb_82 : 1;
    from_bb_80 : 1;
    from_bb_67 : 1;
    from_bb_75 : 1;
    meta_sf_31 : 32;
    from_bb_37 : 1;
    meta_bv1_0 : 32;
    meta_map_hit_1 : 1;
    meta_bv8_0 : 8;
    meta_bv1_4 : 8;
    from_bb_71 : 1;
    from_bb_57 : 1;
    meta_sf_29 : 8;
    from_bb_86 : 1;
    meta_sf_23 : 32;
    from_bb_32 : 1;
  }
}

header udp_hdr_t udp;
header tcp_hdr_t tcp;
header ipv4_hdr_t ipv4;
header ether_hdr_t ether;
metadata meta_t meta;
/*************************************************************************
 ***********************  P A R S E R  ***********************************
 *************************************************************************/
parser start {
  extract(ether);
  return select(ether.ethertype) {
    0x800 : parser_stage_1;
    default : ingress;
  }
}
parser parser_stage_1 {
  extract(ipv4);
  return select(ipv4.protocol) {
    0x11 : parser_stage_3;
    0x6 : parser_stage_2;
    default : ingress;
  }
}
parser parser_stage_2 {
  extract(tcp);
  return ingress;
}
parser parser_stage_3 {
  extract(udp);
  return ingress;
}

action bb_24() {
  modify_field(meta.meta_bv32_0, meta.meta_sf_19);
  modify_field(meta.from_bb_24, 1);
}
action bb_23() {
  modify_field(meta.meta_bv32_0, meta.meta_sf_18);
  modify_field(meta.from_bb_23, 1);
}
action bb_84() {
  modify_field(tcp.dest, meta.meta_bv16_0);
  modify_field(meta.from_bb_84, 1);
}
action bb_85() {
  modify_field(tcp.source, meta.meta_bv16_0);
  modify_field(meta.from_bb_85, 1);
}
action bb_48() {
  modify_field(meta.meta_bv16_0, meta.meta_sf_6);
  modify_field(meta.from_bb_48, 1);
}
action bb_86() {
  modify_field(ipv4.saddr, meta.meta_bv32_1);
  modify_field(ipv4.daddr, meta.meta_bv32_0);
  modify_field(meta.from_bb_86, 1);
}
action bb_49() {
  modify_field(meta.from_bb_49, 1);
}
action bb_61() {
  modify_field(meta.meta_bv32_0, meta.meta_sf_4);
  modify_field(meta.meta_bv32_1, meta.meta_sf_5);
  modify_field(meta.meta_bv16_0, meta.meta_sf_6);
  modify_field(meta.from_bb_61, 1);
}
action bb_56() {
  modify_field(meta.from_bb_56, 1);
}
action bb_52() {
  modify_field(meta.from_bb_52, 1);
}
action bb_68() {
  modify_field(meta.output_port, meta.meta_bv32_0);
  modify_field(meta.from_bb_68, 1);
}
action bb_83() {
  modify_field(tcp.source, meta.meta_bv16_0);
  modify_field(meta.from_bb_83, 1);
}
action bb_50() {
  modify_field(meta.from_bb_50, 1);
}
action bb_36() {
  modify_field(meta.meta_bv16_0, meta.meta_sf_16);
  modify_field(meta.from_bb_36, 1);
}
action bb_57() {
  modify_field(meta.meta_bv32_1, meta.meta_sf_4);
  modify_field(meta.meta_bv32_0, meta.meta_sf_5);
  modify_field(meta.from_bb_57, 1);
}
action bb_77() {
  modify_field(tcp.source, meta.meta_bv16_0);
  modify_field(meta.from_bb_77, 1);
}
action bb_81() {
  add(meta.meta_bv32_0, meta.meta_bv32_0, 1);
  modify_field(ipv4.daddr, meta.meta_bv32_1);
  modify_field(tcp.dest, meta.meta_bv16_0);
  modify_field(meta.from_bb_81, 1);
}
action bb_53() {
  modify_field(meta.meta_bv32_0, meta.meta_sf_22);
  modify_field(meta.meta_bv32_1, meta.meta_sf_41);
  modify_field(meta.meta_bv16_0, meta.meta_sf_43);
  modify_field(ipv4.saddr, 3735928559);
  modify_field(meta.from_bb_53, 1);
}
action bb_22() {
  modify_field(meta.meta_bv32_0, ipv4.tot_len);
  modify_field(meta.from_bb_22, 1);
}
action bb_28() {
  modify_field(meta.meta_bv8_0, ipv4.protocol);
  modify_field(meta.from_bb_28, 1);
}
action bb_26() {
  modify_field(meta.meta_sf_40, ipv4.saddr);
  modify_field(meta.meta_sf_41, ipv4.daddr);
  modify_field(meta.meta_sf_42, tcp.source);
  modify_field(meta.meta_sf_43, tcp.dest);
  modify_field(meta.meta_bv8_0, ipv4.protocol);
  modify_field(meta.from_bb_26, 1);
}
action bb_80() {
  modify_field(ipv4.saddr, meta.meta_bv32_0);
  modify_field(ipv4.daddr, meta.meta_bv32_1);
  modify_field(tcp.source, meta.meta_bv16_0);
  modify_field(meta.from_bb_80, 1);
}
action bb_73() {
  subtract(meta.meta_bv1_1, meta.meta_bv8_0, 6);
  modify_field(meta.from_bb_73, 1);
}
action bb_64() {
  bit_and(meta.meta_bv16_0, meta.meta_bv16_0, 65311);
  modify_field(meta.from_bb_64, 1);
}
action bb_21() {
  modify_field(meta.meta_bv16_0, ipv4.frag_off);
  modify_field(meta.from_bb_21, 1);
}
action bb_54() {
  modify_field(meta.from_bb_54, 1);
}
action bb_69() {
  subtract(meta.meta_bv1_4, meta.meta_bv8_0, 6);
  modify_field(meta.from_bb_69, 1);
}
action bb_63() {
  subtract(meta.meta_bv1_3, meta.meta_bv8_0, 6);
  subtract(meta.meta_bv1_4, meta.meta_bv8_0, 17);
  modify_field(meta.from_bb_63, 1);
}
action bb_27() {
  modify_field(meta.meta_bv32_0, meta.meta_sf_22);
  modify_field(meta.meta_bv32_1, meta.meta_sf_41);
  modify_field(meta.meta_bv16_0, meta.meta_sf_43);
  modify_field(ipv4.saddr, 3735928559);
  modify_field(meta.meta_bv8_0, ipv4.protocol);
  modify_field(meta.from_bb_27, 1);
}
action bb_67() {
  subtract(meta.meta_bv1_0, meta.meta_bv32_0, 1);
  modify_field(meta.from_bb_67, 1);
}
action map_4_lkup(meta_sf_9, meta_sf_10, meta_sf_11, meta_sf_12, meta_sf_13, meta_sf_14, meta_sf_15, meta_sf_16, meta_sf_17) {
  modify_field(meta.meta_sf_9, meta_sf_9);
  modify_field(meta.meta_sf_10, meta_sf_10);
  modify_field(meta.meta_sf_11, meta_sf_11);
  modify_field(meta.meta_sf_12, meta_sf_12);
  modify_field(meta.meta_sf_13, meta_sf_13);
  modify_field(meta.meta_sf_14, meta_sf_14);
  modify_field(meta.meta_sf_15, meta_sf_15);
  modify_field(meta.meta_sf_16, meta_sf_16);
  modify_field(meta.meta_sf_17, meta_sf_17);
  modify_field(meta.meta_map_hit_0, 1);
}
action vector_2_lkup(meta_sf_18, meta_sf_19, meta_sf_20, meta_sf_21, meta_sf_22, meta_sf_23, meta_sf_24, meta_sf_25, meta_sf_26, meta_sf_27, meta_sf_28, meta_sf_29, meta_sf_30) {
  modify_field(meta.meta_sf_18, meta_sf_18);
  modify_field(meta.meta_sf_19, meta_sf_19);
  modify_field(meta.meta_sf_20, meta_sf_20);
  modify_field(meta.meta_sf_21, meta_sf_21);
  modify_field(meta.meta_sf_22, meta_sf_22);
  modify_field(meta.meta_sf_23, meta_sf_23);
  modify_field(meta.meta_sf_24, meta_sf_24);
  modify_field(meta.meta_sf_25, meta_sf_25);
  modify_field(meta.meta_sf_26, meta_sf_26);
  modify_field(meta.meta_sf_27, meta_sf_27);
  modify_field(meta.meta_sf_28, meta_sf_28);
  modify_field(meta.meta_sf_29, meta_sf_29);
  modify_field(meta.meta_sf_30, meta_sf_30);
}
action bb_82() {
  modify_field(meta.meta_bv16_0, meta.meta_bv32_0);
  modify_field(meta.from_bb_82, 1);
}
action bb_37() {
  modify_field(meta.from_bb_37, 1);
}
action bb_66() {
  subtract(meta.meta_bv1_4, meta.meta_bv32_0, 8);
  modify_field(meta.from_bb_66, 1);
}
action map_3_lkup(meta_sf_0, meta_sf_1, meta_sf_2, meta_sf_3, meta_sf_4, meta_sf_5, meta_sf_6, meta_sf_7, meta_sf_8) {
  modify_field(meta.meta_sf_0, meta_sf_0);
  modify_field(meta.meta_sf_1, meta_sf_1);
  modify_field(meta.meta_sf_2, meta_sf_2);
  modify_field(meta.meta_sf_3, meta_sf_3);
  modify_field(meta.meta_sf_4, meta_sf_4);
  modify_field(meta.meta_sf_5, meta_sf_5);
  modify_field(meta.meta_sf_6, meta_sf_6);
  modify_field(meta.meta_sf_7, meta_sf_7);
  modify_field(meta.meta_sf_8, meta_sf_8);
  modify_field(meta.meta_map_hit_1, 1);
}
action nop_bb() {
}
action bb_44() {
  modify_field(meta.from_bb_44, 1);
}
action bb_25() {
  modify_field(meta.should_drop, 1);
  modify_field(meta.from_bb_25, 1);
}
action bb_47() {
  modify_field(meta.meta_bv16_0, meta.meta_sf_7);
  modify_field(meta.from_bb_47, 1);
}
action bb_38() {
  modify_field(meta.from_bb_38, 1);
}
action bb_32() {
  modify_field(meta.from_bb_32, 1);
}
action bb_74() {
  modify_field(ipv4.saddr, meta.meta_bv32_0);
  modify_field(ipv4.daddr, meta.meta_bv32_1);
  modify_field(tcp.source, meta.meta_bv16_0);
  modify_field(meta.from_bb_74, 1);
}
action bb_62() {
  modify_field(meta.from_bb_62, 1);
}
action bb_70() {
  add(meta.meta_bv32_0, meta.meta_bv32_0, 1);
  modify_field(ipv4.daddr, meta.meta_bv32_1);
  modify_field(tcp.dest, meta.meta_bv16_0);
  subtract(meta.meta_bv1_2, meta.meta_bv8_0, 6);
  modify_field(meta.from_bb_70, 1);
}
action bb_20() {
  modify_field(meta.meta_bv8_0, ipv4.protocol);
  modify_field(meta.from_bb_20, 1);
}
action bb_72() {
  modify_field(tcp.source, meta.meta_bv16_0);
  modify_field(meta.from_bb_72, 1);
}
action bb_29() {
  modify_field(meta.from_bb_29, 1);
}
action bb_71() {
  modify_field(meta.meta_bv16_0, meta.meta_bv32_0);
  modify_field(meta.from_bb_71, 1);
}
action bb_34() {
  modify_field(meta.meta_bv32_1, meta.meta_sf_13);
  modify_field(meta.meta_bv32_0, meta.meta_sf_14);
  modify_field(meta.meta_bv16_0, ipv4.frag_off);
  modify_field(meta.from_bb_34, 1);
}
action bb_31() {
  modify_field(meta.meta_bv32_0, meta.meta_sf_13);
  modify_field(meta.meta_bv32_1, meta.meta_sf_14);
  modify_field(meta.meta_bv16_0, meta.meta_sf_15);
  modify_field(meta.from_bb_31, 1);
}
action bb_79() {
  modify_field(meta.from_bb_79, 1);
}
action bb_75() {
  modify_field(ipv4.saddr, meta.meta_bv32_1);
  modify_field(ipv4.daddr, meta.meta_bv32_0);
  bit_and(meta.meta_bv16_0, meta.meta_bv16_0, 65311);
  modify_field(meta.from_bb_75, 1);
}
action bb_65() {
  subtract(meta.meta_bv1_4, meta.meta_bv16_0, 0);
  modify_field(meta.from_bb_65, 1);
}
action bb_76() {
  subtract(meta.meta_bv1_0, meta.meta_bv16_0, 0);
  modify_field(meta.from_bb_76, 1);
}
action bb_78() {
  modify_field(tcp.dest, meta.meta_bv16_0);
  modify_field(meta.from_bb_78, 1);
}
action bb_35() {
  modify_field(meta.meta_bv16_0, meta.meta_sf_15);
  modify_field(meta.from_bb_35, 1);
}
table stage_bb_direct_ret_1 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : nop_bb();
  size : 1;
}
table stage_bb_25 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_25();
  size : 1;
}
table stage_bb_direct_ret_0 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : nop_bb();
  size : 1;
}
table stage_bb_24 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_24();
  size : 1;
}
table stage_bb_67 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_67();
  size : 1;
}
table stage_bb_75 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_75();
  size : 1;
}
table stage_bb_63 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_63();
  size : 1;
}
table stage_bb_31 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_31();
  size : 1;
}
table stage_bb_51 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : nop_bb();
  size : 1;
}
table stage_bb_37 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_37();
  size : 1;
}
table stage_bb_33 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : nop_bb();
  size : 1;
}
table stage_bb_70 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_70();
  size : 1;
}
table table_stage_2 {
  reads {
  meta.vec_idx_0 : exact;
  }
  actions {
  vector_2_lkup;
  }
  default_action : nop_bb();
  size : 0;
}
table stage_bb_77 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_77();
  size : 1;
}
table stage_bb_78 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_78();
  size : 1;
}
table stage_bb_27 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_27();
  size : 1;
}
table stage_bb_48 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_48();
  size : 1;
}
table stage_bb_41 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : nop_bb();
  size : 1;
}
table stage_bb_38 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_38();
  size : 1;
}
table stage_bb_79 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_79();
  size : 1;
}
table stage_bb_20 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_20();
  size : 1;
}
table stage_bb_28 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_28();
  size : 1;
}
table stage_bb_21 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_21();
  size : 1;
}
table table_stage_1 {
  reads {
  meta.meta_sf_48 : exact;
  meta.meta_sf_49 : exact;
  meta.meta_sf_50 : exact;
  meta.meta_sf_51 : exact;
  }
  actions {
  map_4_lkup;
  }
  default_action : nop_bb();
  size : 0;
}
table stage_bb_65 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_65();
  size : 1;
}
table stage_bb_81 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_81();
  size : 1;
}
table stage_bb_22 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_22();
  size : 1;
}
table table_stage_0 {
  reads {
  meta.meta_sf_44 : exact;
  meta.meta_sf_45 : exact;
  meta.meta_sf_46 : exact;
  meta.meta_sf_47 : exact;
  }
  actions {
  map_3_lkup;
  }
  default_action : nop_bb();
  size : 0;
}
table stage_bb_82 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_82();
  size : 1;
}
table stage_bb_23 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_23();
  size : 1;
}
table stage_bb_35 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_35();
  size : 1;
}
table stage_bb_73 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_73();
  size : 1;
}
table stage_bb_69 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_69();
  size : 1;
}
table stage_bb_32 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_32();
  size : 1;
}
table stage_bb_66 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_66();
  size : 1;
}
table stage_bb_57 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_57();
  size : 1;
}
table stage_bb_68 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_68();
  size : 1;
}
table stage_bb_30 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : nop_bb();
  size : 1;
}
table stage_bb_36 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_36();
  size : 1;
}
table stage_bb_29 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_29();
  size : 1;
}
table stage_bb_26 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_26();
  size : 1;
}
table stage_bb_86 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_86();
  size : 1;
}
table stage_bb_53 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_53();
  size : 1;
}
table stage_bb_76 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_76();
  size : 1;
}
table stage_bb_44 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_44();
  size : 1;
}
table stage_bb_74 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_74();
  size : 1;
}
table stage_bb_71 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_71();
  size : 1;
}
table stage_bb_39 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : nop_bb();
  size : 1;
}
table stage_bb_50 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_50();
  size : 1;
}
table stage_bb_34 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_34();
  size : 1;
}
table stage_bb_49 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_49();
  size : 1;
}
table stage_bb_64 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_64();
  size : 1;
}
table stage_bb_46 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : nop_bb();
  size : 1;
}
table stage_bb_72 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_72();
  size : 1;
}
table stage_bb_52 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_52();
  size : 1;
}
table stage_bb_61 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_61();
  size : 1;
}
table stage_bb_56 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_56();
  size : 1;
}
table stage_bb_80 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_80();
  size : 1;
}
table stage_bb_84 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_84();
  size : 1;
}
table stage_bb_58 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : nop_bb();
  size : 1;
}
table stage_bb_54 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_54();
  size : 1;
}
table stage_bb_83 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_83();
  size : 1;
}
table stage_bb_45 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : nop_bb();
  size : 1;
}
table stage_bb_85 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_85();
  size : 1;
}
table stage_bb_47 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_47();
  size : 1;
}
table stage_bb_62 {
  reads {
  meta.__always_1 : exact;
  }
  actions {
  }
  default_action : bb_62();
  size : 1;
}
/*************************************************************************
 ****************  I N G R E S S   P R O C E S S I N G   *****************
 *************************************************************************/
control ingress {
  apply(table_stage_2);
  apply(stage_bb_20);
  if (((meta.from_bb_20 == 1))) {
    apply(stage_bb_63);
  }
  if (((meta.meta_bv1_3 == 0) and (meta.from_bb_63 == 1)) or ((meta.meta_bv1_4 == 0) and (meta.from_bb_63 == 1))) {
    apply(stage_bb_21);
  }
  if (((meta.from_bb_21 == 1))) {
    apply(stage_bb_64);
  }
  if (((meta.from_bb_64 == 1))) {
    apply(stage_bb_65);
  }
  if (((meta.meta_bv1_4 == 0) and (meta.from_bb_65 == 1))) {
    apply(stage_bb_22);
  }
  if (((meta.from_bb_22 == 1))) {
    apply(stage_bb_66);
  }
  if (((meta.meta_bv1_4 >= 0) and (meta.from_bb_66 == 1))) {
    apply(stage_bb_26);
  }
  if (((meta.from_bb_26 == 1))) {
    apply(stage_bb_69);
  }
  if (((meta.meta_bv1_4 == 0) and (meta.from_bb_69 == 1))) {
    apply(table_stage_1);
  }
  if (((meta.meta_bv1_4 == 0) and (meta.from_bb_69 == 1))) {
    apply(stage_bb_44);
  }
  if (((meta.from_bb_44 == 1))) {
    apply(stage_bb_79);
  }
  if (((meta.meta_map_hit_0 == 1) and (meta.from_bb_79 == 1))) {
    apply(stage_bb_27);
  }
  if (((meta.from_bb_27 == 1))) {
    apply(stage_bb_70);
  }
  if (((meta.from_bb_70 == 1))) {
    apply(stage_bb_71);
  }
  if (((meta.from_bb_71 == 1))) {
    apply(stage_bb_72);
  }
  if (((meta.meta_bv1_2 != 0) and (meta.from_bb_72 == 1))) {
    apply(stage_bb_41);
  }
  if (((meta.meta_map_hit_0 != 1) and (meta.from_bb_79 == 1))) {
    apply(stage_bb_28);
  }
  if (((meta.from_bb_28 == 1))) {
    apply(stage_bb_73);
  }
  if (((meta.meta_bv1_1 == 0) and (meta.from_bb_73 == 1))) {
    apply(stage_bb_29);
  }
  if (((valid(ipv4)  ) and (meta.from_bb_29 == 1))) {
    apply(stage_bb_31);
  }
  if (((meta.from_bb_31 == 1))) {
    apply(stage_bb_74);
  }
  if (((!valid(ipv4)  ) and (meta.from_bb_29 == 1))) {
    apply(stage_bb_30);
  }
  if (((meta.meta_bv1_1 != 0) and (meta.from_bb_73 == 1))) {
    apply(stage_bb_32);
  }
  if (((valid(ipv4)  ) and (meta.from_bb_32 == 1))) {
    apply(stage_bb_34);
  }
  if (((meta.from_bb_34 == 1))) {
    apply(stage_bb_75);
  }
  if (((meta.from_bb_75 == 1))) {
    apply(stage_bb_76);
  }
  if (((meta.meta_bv1_0 == 0) and (meta.from_bb_76 == 1))) {
    apply(stage_bb_35);
  }
  if (((meta.from_bb_35 == 1))) {
    apply(stage_bb_77);
  }
  if (((meta.from_bb_77 == 1)) or ((meta.from_bb_74 == 1))) {
    apply(stage_bb_36);
  }
  if (((meta.from_bb_36 == 1))) {
    apply(stage_bb_78);
  }
  if (((meta.from_bb_78 == 1)) or ((meta.meta_bv1_0 != 0) and (meta.from_bb_76 == 1))) {
    apply(stage_bb_37);
  }
  if (((meta.from_bb_37 == 1)) or ((meta.meta_bv1_2 == 0) and (meta.from_bb_72 == 1))) {
    apply(stage_bb_38);
  }
  if (((meta.from_bb_38 == 1))) {
    apply(stage_bb_39);
  }
  if (((!valid(ipv4)  ) and (meta.from_bb_32 == 1))) {
    apply(stage_bb_33);
  }
  if (((meta.meta_bv1_4 != 0) and (meta.from_bb_69 == 1))) {
    apply(table_stage_0);
  }
  if (((meta.meta_bv1_4 != 0) and (meta.from_bb_69 == 1))) {
    apply(stage_bb_50);
  }
  if (((meta.meta_map_hit_0 == 1) and (meta.from_bb_50 == 1))) {
    apply(stage_bb_53);
  }
  if (((meta.from_bb_53 == 1))) {
    apply(stage_bb_81);
  }
  if (((meta.from_bb_81 == 1))) {
    apply(stage_bb_82);
  }
  if (((meta.from_bb_82 == 1))) {
    apply(stage_bb_83);
  }
  if (((meta.meta_bv1_2 != 0) and (meta.from_bb_83 == 1))) {
    apply(stage_bb_46);
  }
  if (((meta.meta_map_hit_0 != 1) and (meta.from_bb_50 == 1))) {
    apply(stage_bb_52);
  }
  if (((meta.meta_bv1_1 == 0) and (meta.from_bb_52 == 1))) {
    apply(stage_bb_56);
  }
  if (((valid(ipv4)  ) and (meta.from_bb_56 == 1))) {
    apply(stage_bb_61);
  }
  if (((meta.from_bb_61 == 1))) {
    apply(stage_bb_80);
  }
  if (((!valid(ipv4)  ) and (meta.from_bb_56 == 1))) {
    apply(stage_bb_58);
  }
  if (((meta.meta_bv1_1 != 0) and (meta.from_bb_52 == 1))) {
    apply(stage_bb_54);
  }
  if (((valid(ipv4)  ) and (meta.from_bb_54 == 1))) {
    apply(stage_bb_57);
  }
  if (((meta.from_bb_57 == 1))) {
    apply(stage_bb_86);
  }
  if (((meta.meta_bv1_0 == 0) and (meta.from_bb_86 == 1))) {
    apply(stage_bb_48);
  }
  if (((meta.from_bb_48 == 1))) {
    apply(stage_bb_85);
  }
  if (((meta.from_bb_85 == 1)) or ((meta.from_bb_80 == 1))) {
    apply(stage_bb_47);
  }
  if (((meta.from_bb_47 == 1))) {
    apply(stage_bb_84);
  }
  if (((meta.from_bb_84 == 1)) or ((meta.meta_bv1_0 != 0) and (meta.from_bb_86 == 1))) {
    apply(stage_bb_49);
  }
  if (((meta.from_bb_49 == 1)) or ((meta.meta_bv1_2 == 0) and (meta.from_bb_83 == 1))) {
    apply(stage_bb_62);
  }
  if (((meta.from_bb_62 == 1))) {
    apply(stage_bb_45);
  }
  if (((!valid(ipv4)  ) and (meta.from_bb_54 == 1))) {
    apply(stage_bb_51);
  }
  if (((meta.meta_bv1_4 < 0) and (meta.from_bb_66 == 1)) or ((meta.meta_bv1_4 != 0) and (meta.from_bb_65 == 1)) or ((meta.meta_bv1_3 != 0) and (meta.meta_bv1_4 != 0) and (meta.from_bb_63 == 1))) {
    apply(stage_bb_23);
  }
  if (((meta.from_bb_23 == 1))) {
    apply(stage_bb_67);
  }
  if (((meta.meta_bv1_0 == 0) and (meta.from_bb_67 == 1))) {
    apply(stage_bb_24);
  }
  if (((meta.from_bb_24 == 1))) {
    apply(stage_bb_68);
  }
  if (((meta.from_bb_68 == 1))) {
    apply(stage_bb_direct_ret_0);
  }
  if (((meta.meta_bv1_0 != 0) and (meta.from_bb_67 == 1))) {
    apply(stage_bb_25);
  }
  if (((meta.from_bb_25 == 1))) {
    apply(stage_bb_direct_ret_1);
  }
}
/*************************************************************************
 ****************  E G R E S S   P R O C E S S I N G   *******************
 *************************************************************************/
control egress {
}

