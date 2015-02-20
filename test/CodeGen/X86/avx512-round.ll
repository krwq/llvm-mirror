; RUN: llc < %s -mtriple=x86_64-apple-darwin -mcpu=knl --show-mc-encoding| FileCheck %s

define <16 x float> @floor_v16f32(<16 x float> %a) {
; CHECK-LABEL: floor_v16f32
; CHECK: vrndscaleps $1, {{.*}}encoding: [0x62,0xf3,0x7d,0x48,0x08,0xc0,0x01]
  %res = call <16 x float> @llvm.floor.v16f32(<16 x float> %a)
  ret <16 x float> %res
}
declare <16 x float> @llvm.floor.v16f32(<16 x float> %p)

define <8 x double> @floor_v8f64(<8 x double> %a) {
; CHECK-LABEL: floor_v8f64
; CHECK: vrndscalepd $1, {{.*}}encoding: [0x62,0xf3,0xfd,0x48,0x09,0xc0,0x01]
  %res = call <8 x double> @llvm.floor.v8f64(<8 x double> %a)
  ret <8 x double> %res
}
declare <8 x double> @llvm.floor.v8f64(<8 x double> %p)

define <16 x float> @ceil_v16f32(<16 x float> %a) {
; CHECK-LABEL: ceil_v16f32
; CHECK: vrndscaleps $2, {{.*}}encoding: [0x62,0xf3,0x7d,0x48,0x08,0xc0,0x02]
  %res = call <16 x float> @llvm.ceil.v16f32(<16 x float> %a)
  ret <16 x float> %res
}
declare <16 x float> @llvm.ceil.v16f32(<16 x float> %p)

define <8 x double> @ceil_v8f64(<8 x double> %a) {
; CHECK-LABEL: ceil_v8f64
; CHECK: vrndscalepd $2, {{.*}}encoding: [0x62,0xf3,0xfd,0x48,0x09,0xc0,0x02]
  %res = call <8 x double> @llvm.ceil.v8f64(<8 x double> %a)
  ret <8 x double> %res
}
declare <8 x double> @llvm.ceil.v8f64(<8 x double> %p)

define <16 x float> @trunc_v16f32(<16 x float> %a) {
; CHECK-LABEL: trunc_v16f32
; CHECK: vrndscaleps $3, {{.*}}encoding: [0x62,0xf3,0x7d,0x48,0x08,0xc0,0x03]
  %res = call <16 x float> @llvm.trunc.v16f32(<16 x float> %a)
  ret <16 x float> %res
}
declare <16 x float> @llvm.trunc.v16f32(<16 x float> %p)

define <8 x double> @trunc_v8f64(<8 x double> %a) {
; CHECK-LABEL: trunc_v8f64
; CHECK: vrndscalepd $3, {{.*}}encoding: [0x62,0xf3,0xfd,0x48,0x09,0xc0,0x03]
  %res = call <8 x double> @llvm.trunc.v8f64(<8 x double> %a)
  ret <8 x double> %res
}
declare <8 x double> @llvm.trunc.v8f64(<8 x double> %p)

define <16 x float> @rint_v16f32(<16 x float> %a) {
; CHECK-LABEL: rint_v16f32
; CHECK: vrndscaleps $4, {{.*}}encoding: [0x62,0xf3,0x7d,0x48,0x08,0xc0,0x04]
  %res = call <16 x float> @llvm.rint.v16f32(<16 x float> %a)
  ret <16 x float> %res
}
declare <16 x float> @llvm.rint.v16f32(<16 x float> %p)

define <8 x double> @rint_v8f64(<8 x double> %a) {
; CHECK-LABEL: rint_v8f64
; CHECK: vrndscalepd $4, {{.*}}encoding: [0x62,0xf3,0xfd,0x48,0x09,0xc0,0x04]
  %res = call <8 x double> @llvm.rint.v8f64(<8 x double> %a)
  ret <8 x double> %res
}
declare <8 x double> @llvm.rint.v8f64(<8 x double> %p)

define <16 x float> @nearbyint_v16f32(<16 x float> %a) {
; CHECK-LABEL: nearbyint_v16f32
; CHECK: vrndscaleps $12, {{.*}}encoding: [0x62,0xf3,0x7d,0x48,0x08,0xc0,0x0c]
  %res = call <16 x float> @llvm.nearbyint.v16f32(<16 x float> %a)
  ret <16 x float> %res
}
declare <16 x float> @llvm.nearbyint.v16f32(<16 x float> %p)

define <8 x double> @nearbyint_v8f64(<8 x double> %a) {
; CHECK-LABEL: nearbyint_v8f64
; CHECK: vrndscalepd $12, {{.*}}encoding: [0x62,0xf3,0xfd,0x48,0x09,0xc0,0x0c]
  %res = call <8 x double> @llvm.nearbyint.v8f64(<8 x double> %a)
  ret <8 x double> %res
}
declare <8 x double> @llvm.nearbyint.v8f64(<8 x double> %p)
