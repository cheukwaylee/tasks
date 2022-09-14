; Intrinsic Functions ; https://releases.llvm.org/2.0/docs/LangRef.html
; these 3 function: functionality implemented and return value needed
; Function Attrs: nounwind readnone
declare i256 @llvm.part.set.i256.i8(i256, i8, i32, i32) #0

; https://releases.llvm.org/2.0/docs/LangRef.html#int_part_select
; The 'llvm.part.select' family of intrinsic functions selects a range of bits from an integer value 
; and returns them in the same bit width as the original value.
; Function Attrs: nounwind readnone
declare i256 @llvm.part.select.i256(i256, i32, i32) #0
; Function Attrs: nounwind readnone
declare i13 @llvm.part.select.i13(i13, i32, i32) #0

; the following 2 never used
; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, i64, metadata) #1 ; skiped
; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata) #1 ; skiped


; these 7 are empty function: NO functionality implemented, NO return value needed
$_ssdm_op_SpecTopModule = comdat any
$_ssdm_op_SpecPipeline = comdat any
$_ssdm_op_SpecLoopTripCount = comdat any
$_ssdm_op_SpecLoopName = comdat any
$_ssdm_op_SpecInterface = comdat any
$_ssdm_op_SpecBitsMap = comdat any
$_ssdm_op_SpecBRAMWithByteEnable = comdat any

; the following are PartSet x1; PartSelect x3; BitSelect x2; BitConcatenate x3; with implement
$_ssdm_op_PartSet.i256.i256.i8.i32.i32 = comdat any

$_ssdm_op_PartSelect.i9.i13.i32.i32 = comdat any ;ed
$_ssdm_op_PartSelect.i8.i256.i32.i32 = comdat any
$_ssdm_op_PartSelect.i32.i256.i32.i32 = comdat any ;ed

$_ssdm_op_BitSelect.i1.i32.i32 = comdat any
$_ssdm_op_BitSelect.i1.i13.i32 = comdat any ;ed

$_ssdm_op_BitConcatenate.i8.i3.i5 = comdat any ;ed
$_ssdm_op_BitConcatenate.i5.i3.i2 = comdat any ;ed
$_ssdm_op_BitConcatenate.i256.i32.i32.i32.i32.i32.i32.i32.i32 = comdat any ;ed