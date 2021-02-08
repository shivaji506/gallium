#pragma once
#include "gallium-dpdk.h"
struct MyInputSpec;
struct SizedHashAllocator_535;
struct char_array_559;
struct MyRewriterPattern;
struct IPRewriterHeap_538;
struct libdivide_u32_t_605;
struct IPRewriterBase_534;
struct HashContainer_rep_603;
struct MyIPRewriter;
struct IPRewriterEntry_604;
struct TCPRewriter_base_531;
struct HashContainer_533;
struct HashAllocator__link_598;
struct IPAddress_602;
struct IPFlowID_601;
struct HashAllocator_597;
struct HashAllocator__buffer_599;
struct char_array_26;
struct MyIPRewriterEntry_600;
struct SizedHashAllocator_27;
struct click_ip_616;
struct in_addr_617;

struct char_array_26 {
  uint8_t* f0;
};

struct HashAllocator__buffer_599 {
  struct HashAllocator__buffer_599* f0;
  uint64_t f1;
  uint64_t f2;
};

struct HashAllocator_597 {
  struct HashAllocator__link_598* f0;
  struct HashAllocator__buffer_599* f1;
  uint64_t f2;
};

struct IPAddress_602 {
  uint32_t f0;
};

struct IPFlowID_601 {
  struct IPAddress_602 f0;
  struct IPAddress_602 f1;
  uint16_t f2;
  uint16_t f3;
};

struct MyIPRewriterEntry_600 {
  struct IPFlowID_601 f0;
  struct IPFlowID_601 f1;
  uint32_t f2;
};

struct MyRewriterPattern {
  struct IPAddress_602 f0;
  uint32_t f1;
  struct IPAddress_602 f2;
  uint32_t f3;
  uint32_t f4;
  uint8_t f5;
  uint8_t* f6;
};

struct MyInputSpec {
  uint32_t f0;
  uint32_t f1;
  uint32_t f2;
  struct MyRewriterPattern f3;
  uint32_t f4;
};

struct libdivide_u32_t_605 {
  uint32_t f0;
  uint8_t f1;
};

struct HashContainer_rep_603 {
  struct IPRewriterEntry_604** f0;
  uint32_t f1;
  uint32_t f2;
  uint64_t f3;
  struct libdivide_u32_t_605 f4;
};

struct SizedHashAllocator_535 {
  struct HashAllocator_597 f0;
};

struct char_array_559 {
  uint8_t* f0;
};

struct SizedHashAllocator_27 {
  struct HashAllocator_597 f0;
};

struct IPRewriterEntry_604 {
  struct IPFlowID_601 f0;
  uint8_t* f1;
  uint8_t f2;
  struct IPRewriterEntry_604* f3;
};

struct HashContainer_533 {
  struct HashContainer_rep_603 f0;
};

struct IPRewriterBase_534 {
  struct base_state f0;
  struct HashContainer_533 f1;
  struct vector_t f2;
  struct IPRewriterHeap_538* f3;
  uint32_t* f4;
  uint32_t f5;
  struct Timer f6;
};

struct in_addr_617 {
  uint32_t f0;
};

struct click_ip_616 {
  uint8_t f0;
  uint8_t f1;
  uint16_t f2;
  uint16_t f3;
  uint16_t f4;
  uint8_t f5;
  uint8_t f6;
  uint16_t f7;
  struct in_addr_617 f8;
  struct in_addr_617 f9;
};

struct IPRewriterHeap_538 {
  struct vector_t* f0;
  uint32_t f1;
  uint32_t f2;
};

struct TCPRewriter_base_531 {
  struct IPRewriterBase_534 f0;
  struct SizedHashAllocator_535 f1;
  uint32_t f2;
  uint32_t f3;
  uint32_t f4;
};

struct MyIPRewriter {
  struct TCPRewriter_base_531 f0;
  uint8_t* f1;
  struct vector_t f2;
  struct map_t f3;
  struct map_t f4;
  struct HashContainer_533 f5;
  struct SizedHashAllocator_27 f6;
  uint32_t* f7;
  uint32_t f8;
  uint8_t* f9;
};

struct HashAllocator__link_598 {
  struct HashAllocator__link_598* f0;
};

