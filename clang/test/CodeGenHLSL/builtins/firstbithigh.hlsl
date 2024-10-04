// RUN: %clang_cc1 -finclude-default-header -x hlsl -triple \
// RUN:   dxil-pc-shadermodel6.3-library %s \
// RUN:   -emit-llvm -disable-llvm-passes -o - | FileCheck %s -DTARGET=dx
// RUN: %clang_cc1 -finclude-default-header -x hlsl -triple \
// RUN:   spirv-unknown-vulkan-compute %s \
// RUN: -emit-llvm -disable-llvm-passes \
// RUN:   -o - | FileCheck %s -DTARGET=spv

// CHECK-LABEL: test_firstbithigh_uint
// CHECK: call i32 @llvm.[[TARGET]].firstbituhigh.i32
uint test_firstbithigh_uint(uint p0) {
  return firstbithigh(p0);
}

// CHECK-LABEL: test_firstbithigh_uint2
// CHECK: call <2 x i32> @llvm.[[TARGET]].firstbituhigh.v2i32
uint2 test_firstbithigh_uint2(uint2 p0) {
  return firstbithigh(p0);
}

// CHECK-LABEL: test_firstbithigh_uint3
// CHECK: call <3 x i32> @llvm.[[TARGET]].firstbituhigh.v3i32
uint3 test_firstbithigh_uint3(uint3 p0) {
  return firstbithigh(p0);
}

// CHECK-LABEL: test_firstbithigh_uint4
// CHECK: call <4 x i32> @llvm.[[TARGET]].firstbituhigh.v4i32
uint4 test_firstbithigh_uint4(uint4 p0) {
  return firstbithigh(p0);
}

// CHECK-LABEL: test_firstbithigh_int
// CHECK: call i32 @llvm.[[TARGET]].firstbitshigh.i32
int test_firstbithigh_int(int p0) {
  return firstbithigh(p0);
}

// CHECK-LABEL: test_firstbithigh_int2
// CHECK: call <2 x i32> @llvm.[[TARGET]].firstbitshigh.v2i32
int2 test_firstbithigh_int2(int2 p0) {
  return firstbithigh(p0);
}

// CHECK-LABEL: test_firstbithigh_int3
// CHECK: call <3 x i32> @llvm.[[TARGET]].firstbitshigh.v3i32
int3 test_firstbithigh_int3(int3 p0) {
  return firstbithigh(p0);
}

// CHECK-LABEL: test_firstbithigh_int4
// CHECK: call <4 x i32> @llvm.[[TARGET]].firstbitshigh.v4i32
int4 test_firstbithigh_int4(int4 p0) {
  return firstbithigh(p0);
}
