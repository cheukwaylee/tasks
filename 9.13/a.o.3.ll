; ModuleID = 'a.o.3.bc'
source_filename = "a.o.3.bc"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

$_ssdm_op_SpecTopModule = comdat any

$_ssdm_op_SpecPipeline = comdat any

$_ssdm_op_SpecLoopTripCount = comdat any

$_ssdm_op_SpecLoopName = comdat any

$_ssdm_op_SpecInterface = comdat any

$_ssdm_op_SpecBitsMap = comdat any

$_ssdm_op_SpecBRAMWithByteEnable = comdat any

$_ssdm_op_PartSet.i256.i256.i8.i32.i32 = comdat any

$_ssdm_op_PartSelect.i9.i13.i32.i32 = comdat any

$_ssdm_op_PartSelect.i8.i256.i32.i32 = comdat any

$_ssdm_op_PartSelect.i32.i256.i32.i32 = comdat any

$_ssdm_op_BitSelect.i1.i32.i32 = comdat any

$_ssdm_op_BitSelect.i1.i13.i32 = comdat any

$_ssdm_op_BitConcatenate.i8.i3.i5 = comdat any

$_ssdm_op_BitConcatenate.i5.i3.i2 = comdat any

$_ssdm_op_BitConcatenate.i256.i32.i32.i32.i32.i32.i32.i32.i32 = comdat any

@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer
@empty = internal unnamed_addr constant [10 x i8] c"ap_memory\00"
@empty_0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@empty_1 = internal unnamed_addr constant [11 x i8] c"bbgemm_top\00"
@empty_2 = internal unnamed_addr constant [9 x i8] c"loop_add\00"

; Function Attrs: nounwind readnone
declare i256 @llvm.part.set.i256.i8(i256, i8, i32, i32) #0

; Function Attrs: nounwind readnone
declare i256 @llvm.part.select.i256(i256, i32, i32) #0

; Function Attrs: nounwind readnone
declare i13 @llvm.part.select.i13(i13, i32, i32) #0

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define internal void @bbgemm_top_Pipeline_loop_add([512 x i256]* %m1_loc, [512 x i256]* %m2_loc, [512 x i256]* %prod_loc) #2 {
newFuncRoot:
  %i = alloca i13, !bitwidth !79
  call void (...) @_ssdm_op_SpecBRAMWithByteEnable([512 x i256]* %m1_loc) #2
  call void (...) @_ssdm_op_SpecBRAMWithByteEnable([512 x i256]* %m2_loc) #2
  store i13 0, i13* %i, !bitwidth !80, !dep_idx !81, !deps !82
  br label %memcpy-split1, !bitwidth !80

load-store-loop.preheader.exitStub:               ; preds = %memcpy-split1
  ret void, !bitwidth !80

memcpy-split1:                                    ; preds = %.split, %newFuncRoot
  %i_1 = load i13, i13* %i, !bitwidth !87, !dep_idx !88, !deps !89
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %i_1, i32 12), !bitwidth !94
  %empty = call i32 (...) @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512) #2
  br i1 %tmp, label %load-store-loop.preheader.exitStub, label %.split, !llvm.loop !95, !bitwidth !80

.split:                                           ; preds = %memcpy-split1
  call void (...) @_ssdm_op_SpecPipeline(i32 1, i32 0, i32 0, i32 0, [1 x i8]* @empty_0) #2
  call void (...) @_ssdm_op_SpecLoopName([9 x i8]* @empty_2) #2
  %lshr_ln = call i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13 %i_1, i32 3, i32 11), !bitwidth !99
  %zext_ln36 = zext i9 %lshr_ln to i64, !bitwidth !100
  %m1_loc_addr = getelementptr [512 x i256], [512 x i256]* %m1_loc, i64 0, i64 %zext_ln36, !bitwidth !7
  %m1_loc_load = load i256, i256* %m1_loc_addr, align 32, !bitwidth !101
  %trunc_ln36 = trunc i256 %m1_loc_load to i32, !bitwidth !102
  %m2_loc_addr = getelementptr [512 x i256], [512 x i256]* %m2_loc, i64 0, i64 %zext_ln36, !bitwidth !7
  %m2_loc_load = load i256, i256* %m2_loc_addr, align 32, !bitwidth !101
  %trunc_ln36_1 = trunc i256 %m2_loc_load to i32, !bitwidth !102
  %add_ln36 = add nsw i32 %trunc_ln36_1, %trunc_ln36, !bitwidth !102
  %prod_loc_addr = getelementptr [512 x i256], [512 x i256]* %prod_loc, i64 0, i64 %zext_ln36, !bitwidth !7
  %tmp_4 = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %m1_loc_load, i32 32, i32 63), !bitwidth !102
  %tmp_5 = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %m2_loc_load, i32 32, i32 63), !bitwidth !102
  %add_ln36_1 = add nsw i32 %tmp_5, %tmp_4, !bitwidth !102
  %tmp_6 = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %m1_loc_load, i32 64, i32 95), !bitwidth !102
  %tmp_7 = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %m2_loc_load, i32 64, i32 95), !bitwidth !102
  %add_ln36_2 = add nsw i32 %tmp_7, %tmp_6, !bitwidth !102
  %tmp_8 = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %m1_loc_load, i32 96, i32 127), !bitwidth !102
  %tmp_9 = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %m2_loc_load, i32 96, i32 127), !bitwidth !102
  %add_ln36_3 = add nsw i32 %tmp_9, %tmp_8, !bitwidth !102
  %tmp_s = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %m1_loc_load, i32 128, i32 159), !bitwidth !102
  %tmp_1 = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %m2_loc_load, i32 128, i32 159), !bitwidth !102
  %add_ln36_4 = add nsw i32 %tmp_1, %tmp_s, !bitwidth !102
  %tmp_2 = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %m1_loc_load, i32 160, i32 191), !bitwidth !102
  %tmp_3 = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %m2_loc_load, i32 160, i32 191), !bitwidth !102
  %add_ln36_5 = add nsw i32 %tmp_3, %tmp_2, !bitwidth !102
  %tmp_10 = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %m1_loc_load, i32 192, i32 223), !bitwidth !102
  %tmp_11 = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %m2_loc_load, i32 192, i32 223), !bitwidth !102
  %add_ln36_6 = add nsw i32 %tmp_11, %tmp_10, !bitwidth !102
  %tmp_12 = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %m1_loc_load, i32 224, i32 255), !bitwidth !102
  %tmp_13 = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %m2_loc_load, i32 224, i32 255), !bitwidth !102
  %add_ln36_7 = add nsw i32 %tmp_13, %tmp_12, !bitwidth !102
  %or_ln36_6 = call i256 @_ssdm_op_BitConcatenate.i256.i32.i32.i32.i32.i32.i32.i32.i32(i32 %add_ln36_7, i32 %add_ln36_6, i32 %add_ln36_5, i32 %add_ln36_4, i32 %add_ln36_3, i32 %add_ln36_2, i32 %add_ln36_1, i32 %add_ln36), !bitwidth !101
  store i256 %or_ln36_6, i256* %prod_loc_addr, align 32, !bitwidth !80
  %add_ln33 = add i13 %i_1, 8, !bitwidth !87
  store i13 %add_ln33, i13* %i, !bitwidth !80, !dep_idx !103, !deps !104
  br label %memcpy-split1, !llvm.loop !95, !bitwidth !80
}

; Function Attrs: nounwind
define internal void @bbgemm_top_Pipeline_4([512 x i256]* %prod_loc, [4096 x i32]* %prod) #2 {
newFuncRoot:
  %loop_index = alloca i13, !bitwidth !79
  call void (...) @_ssdm_op_SpecInterface([4096 x i32]* %prod, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #2
  store i13 0, i13* %loop_index, !bitwidth !80, !dep_idx !108, !deps !109
  br label %load-store-loop, !bitwidth !80

memcpy-split.exitStub:                            ; preds = %load-store-loop
  ret void, !bitwidth !80

load-store-loop:                                  ; preds = %load-store-loop.split, %newFuncRoot
  %loop_index_load = load i13, i13* %loop_index, !bitwidth !87, !dep_idx !112, !deps !113
  call void (...) @_ssdm_op_SpecPipeline(i32 -1, i32 0, i32 1, i32 0, [1 x i8]* @p_str) #2
  %exitcond18 = icmp eq i13 %loop_index_load, -4096, !bitwidth !94
  %empty = call i32 (...) @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096) #2
  %empty_13 = add i13 %loop_index_load, 1, !bitwidth !87
  br i1 %exitcond18, label %memcpy-split.exitStub, label %load-store-loop.split, !llvm.loop !116, !bitwidth !80

load-store-loop.split:                            ; preds = %load-store-loop
  %loop_index_cast12 = zext i13 %loop_index_load to i64, !bitwidth !100
  %empty_14 = trunc i13 %loop_index_load to i3, !bitwidth !118
  %tmp_s = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %empty_14, i5 0), !bitwidth !119
  %tmp_14 = call i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13 %loop_index_load, i32 3, i32 11), !bitwidth !99
  %p_cast13 = zext i9 %tmp_14 to i64, !bitwidth !100
  %prod_loc_addr = getelementptr [512 x i256], [512 x i256]* %prod_loc, i64 0, i64 %p_cast13, !bitwidth !7
  %prod_loc_load = load i256, i256* %prod_loc_addr, align 32, !bitwidth !101
  %empty_15 = or i8 %tmp_s, 31, !bitwidth !119
  %empty_16 = icmp ugt i8 %tmp_s, %empty_15, !bitwidth !94
  %empty_17 = zext i8 %tmp_s to i9, !bitwidth !120
  %empty_18 = zext i8 %empty_15 to i9, !bitwidth !120
  %tmp = call i256 @llvm.part.select.i256(i256 %prod_loc_load, i32 255, i32 0), !bitwidth !101
  %empty_19 = sub i9 %empty_17, %empty_18, !bitwidth !64
  %empty_20 = xor i9 %empty_17, 255, !bitwidth !99
  %empty_21 = sub i9 %empty_18, %empty_17, !bitwidth !64
  %empty_22 = select i1 %empty_16, i9 %empty_19, i9 %empty_21, !bitwidth !99
  %empty_23 = select i1 %empty_16, i256 %tmp, i256 %prod_loc_load, !bitwidth !101
  %empty_24 = select i1 %empty_16, i9 %empty_20, i9 %empty_17, !bitwidth !99
  %empty_25 = sub i9 255, %empty_22, !bitwidth !99
  %empty_26 = zext i9 %empty_24 to i256, !bitwidth !121
  %empty_27 = zext i9 %empty_25 to i256, !bitwidth !121
  %empty_28 = lshr i256 %empty_23, %empty_26, !bitwidth !101
  %empty_29 = lshr i256 -1, %empty_27, !bitwidth !101
  %empty_30 = and i256 %empty_28, %empty_29, !bitwidth !101
  %empty_31 = trunc i256 %empty_30 to i32, !bitwidth !102
  %prod_addr = getelementptr [4096 x i32], [4096 x i32]* %prod, i64 0, i64 %loop_index_cast12, !bitwidth !49
  store i32 %empty_31, i32* %prod_addr, align 4, !bitwidth !80
  store i13 %empty_13, i13* %loop_index, !bitwidth !80, !dep_idx !122, !deps !123
  br label %load-store-loop, !llvm.loop !116, !bitwidth !80
}

; Function Attrs: nounwind
define internal void @bbgemm_top_Pipeline_2([4096 x i32]* %m2, [512 x i256]* %m2_loc) #2 {
newFuncRoot:
  %loop_index3 = alloca i13, !bitwidth !79
  call void (...) @_ssdm_op_SpecInterface([4096 x i32]* %m2, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #2
  store i13 0, i13* %loop_index3, !bitwidth !80, !dep_idx !126, !deps !127
  br label %load-store-loop2, !bitwidth !80

memcpy-split1.preheader.exitStub:                 ; preds = %load-store-loop2
  ret void, !bitwidth !80

load-store-loop2:                                 ; preds = %load-store-loop2.split, %newFuncRoot
  %loop_index3_load = load i13, i13* %loop_index3, !bitwidth !87, !dep_idx !130, !deps !131
  call void (...) @_ssdm_op_SpecPipeline(i32 -1, i32 0, i32 1, i32 0, [1 x i8]* @p_str) #2
  %exitcond1520 = icmp eq i13 %loop_index3_load, -4096, !bitwidth !94
  %empty = call i32 (...) @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096) #2
  %empty_32 = add i13 %loop_index3_load, 1, !bitwidth !87
  br i1 %exitcond1520, label %memcpy-split1.preheader.exitStub, label %load-store-loop2.split, !llvm.loop !134, !bitwidth !80

load-store-loop2.split:                           ; preds = %load-store-loop2
  %loop_index3_cast6 = zext i13 %loop_index3_load to i64, !bitwidth !100
  %m2_addr = getelementptr [4096 x i32], [4096 x i32]* %m2, i64 0, i64 %loop_index3_cast6, !bitwidth !49
  %m2_load = load i32, i32* %m2_addr, align 4, !bitwidth !102
  %empty_33 = trunc i13 %loop_index3_load to i3, !bitwidth !118
  %tmp_s = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %empty_33, i5 0), !bitwidth !119
  %tmp_15 = call i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13 %loop_index3_load, i32 3, i32 11), !bitwidth !99
  %p_cast9 = zext i9 %tmp_15 to i64, !bitwidth !100
  %m2_loc_addr = getelementptr [512 x i256], [512 x i256]* %m2_loc, i64 0, i64 %p_cast9, !bitwidth !7
  %empty_34 = or i8 %tmp_s, 31, !bitwidth !119
  %empty_35 = icmp ugt i8 %tmp_s, %empty_34, !bitwidth !94
  %empty_36 = zext i8 %tmp_s to i9, !bitwidth !120
  %empty_37 = zext i8 %empty_34 to i9, !bitwidth !120
  %empty_38 = zext i32 %m2_load to i256, !bitwidth !121
  %empty_39 = xor i9 %empty_36, 255, !bitwidth !99
  %empty_40 = select i1 %empty_35, i9 %empty_36, i9 %empty_37, !bitwidth !135
  %empty_41 = select i1 %empty_35, i9 %empty_37, i9 %empty_36, !bitwidth !135
  %empty_42 = select i1 %empty_35, i9 %empty_39, i9 %empty_36, !bitwidth !99
  %empty_43 = xor i9 %empty_40, 255, !bitwidth !99
  %empty_44 = zext i9 %empty_42 to i256, !bitwidth !121
  %empty_45 = zext i9 %empty_41 to i256, !bitwidth !121
  %empty_46 = zext i9 %empty_43 to i256, !bitwidth !121
  %empty_47 = shl i256 %empty_38, %empty_44, !bitwidth !101
  %tmp = call i256 @llvm.part.select.i256(i256 %empty_47, i32 255, i32 0), !bitwidth !101
  %empty_48 = select i1 %empty_35, i256 %tmp, i256 %empty_47, !bitwidth !101
  %empty_49 = shl i256 -1, %empty_45, !bitwidth !101
  %empty_50 = lshr i256 -1, %empty_46, !bitwidth !101
  %p_demorgan = and i256 %empty_49, %empty_50, !bitwidth !101
  %empty_51 = and i256 %empty_48, %p_demorgan, !bitwidth !101
  call void (...) @_ssdm_op_SpecBRAMWithByteEnable([512 x i256]* %m2_loc) #2
  %tmp_1 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %empty_33, i2 0), !bitwidth !136
  %udiv = zext i5 %tmp_1 to i32, !bitwidth !137
  %mask = shl i32 15, %udiv, !bitwidth !102
  call void @_ssdm_op_Write.bram.i256(i256* %m2_loc_addr, i256 %empty_51, i32 %mask) #2, !bitwidth !80
  store i13 %empty_32, i13* %loop_index3, !bitwidth !80, !dep_idx !138, !deps !139
  br label %load-store-loop2, !llvm.loop !134, !bitwidth !80
}

; Function Attrs: nounwind
define internal void @bbgemm_top_Pipeline_1([4096 x i32]* %m1, [512 x i256]* %m1_loc) #2 {
newFuncRoot:
  %loop_index6 = alloca i13, !bitwidth !79
  call void (...) @_ssdm_op_SpecInterface([4096 x i32]* %m1, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #2
  store i13 0, i13* %loop_index6, !bitwidth !80, !dep_idx !142, !deps !143
  br label %load-store-loop5, !bitwidth !80

load-store-loop2.preheader.exitStub:              ; preds = %load-store-loop5
  ret void, !bitwidth !80

load-store-loop5:                                 ; preds = %load-store-loop5.split, %newFuncRoot
  %loop_index6_load = load i13, i13* %loop_index6, !bitwidth !87, !dep_idx !146, !deps !147
  call void (...) @_ssdm_op_SpecPipeline(i32 -1, i32 0, i32 1, i32 0, [1 x i8]* @p_str) #2
  %exitcond1621 = icmp eq i13 %loop_index6_load, -4096, !bitwidth !94
  %empty = call i32 (...) @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096) #2
  %empty_52 = add i13 %loop_index6_load, 1, !bitwidth !87
  br i1 %exitcond1621, label %load-store-loop2.preheader.exitStub, label %load-store-loop5.split, !llvm.loop !150, !bitwidth !80

load-store-loop5.split:                           ; preds = %load-store-loop5
  %loop_index6_cast5 = zext i13 %loop_index6_load to i64, !bitwidth !100
  %m1_addr = getelementptr [4096 x i32], [4096 x i32]* %m1, i64 0, i64 %loop_index6_cast5, !bitwidth !49
  %m1_load = load i32, i32* %m1_addr, align 4, !bitwidth !102
  %empty_53 = trunc i13 %loop_index6_load to i3, !bitwidth !118
  %tmp_s = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %empty_53, i5 0), !bitwidth !119
  %tmp_16 = call i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13 %loop_index6_load, i32 3, i32 11), !bitwidth !99
  %p_cast = zext i9 %tmp_16 to i64, !bitwidth !100
  %m1_loc_addr = getelementptr [512 x i256], [512 x i256]* %m1_loc, i64 0, i64 %p_cast, !bitwidth !7
  %empty_54 = or i8 %tmp_s, 31, !bitwidth !119
  %empty_55 = icmp ugt i8 %tmp_s, %empty_54, !bitwidth !94
  %empty_56 = zext i8 %tmp_s to i9, !bitwidth !120
  %empty_57 = zext i8 %empty_54 to i9, !bitwidth !120
  %empty_58 = zext i32 %m1_load to i256, !bitwidth !121
  %empty_59 = xor i9 %empty_56, 255, !bitwidth !99
  %empty_60 = select i1 %empty_55, i9 %empty_56, i9 %empty_57, !bitwidth !135
  %empty_61 = select i1 %empty_55, i9 %empty_57, i9 %empty_56, !bitwidth !135
  %empty_62 = select i1 %empty_55, i9 %empty_59, i9 %empty_56, !bitwidth !99
  %empty_63 = xor i9 %empty_60, 255, !bitwidth !99
  %empty_64 = zext i9 %empty_62 to i256, !bitwidth !121
  %empty_65 = zext i9 %empty_61 to i256, !bitwidth !121
  %empty_66 = zext i9 %empty_63 to i256, !bitwidth !121
  %empty_67 = shl i256 %empty_58, %empty_64, !bitwidth !101
  %tmp = call i256 @llvm.part.select.i256(i256 %empty_67, i32 255, i32 0), !bitwidth !101
  %empty_68 = select i1 %empty_55, i256 %tmp, i256 %empty_67, !bitwidth !101
  %empty_69 = shl i256 -1, %empty_65, !bitwidth !101
  %empty_70 = lshr i256 -1, %empty_66, !bitwidth !101
  %p_demorgan = and i256 %empty_69, %empty_70, !bitwidth !101
  %empty_71 = and i256 %empty_68, %p_demorgan, !bitwidth !101
  call void (...) @_ssdm_op_SpecBRAMWithByteEnable([512 x i256]* %m1_loc) #2
  %tmp_2 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %empty_53, i2 0), !bitwidth !136
  %udiv = zext i5 %tmp_2 to i32, !bitwidth !137
  %mask = shl i32 15, %udiv, !bitwidth !102
  call void @_ssdm_op_Write.bram.i256(i256* %m1_loc_addr, i256 %empty_71, i32 %mask) #2, !bitwidth !80
  store i13 %empty_52, i13* %loop_index6, !bitwidth !80, !dep_idx !151, !deps !152
  br label %load-store-loop5, !llvm.loop !150, !bitwidth !80
}

; Function Attrs: nounwind
define void @bbgemm_top([4096 x i32]* noalias %m1, [4096 x i32]* noalias %m2, [4096 x i32]* noalias %prod) #2 {
codeRepl:
  call void (...) @_ssdm_op_SpecTopModule([11 x i8]* @empty_1) #2
  call void (...) @_ssdm_op_SpecInterface([4096 x i32]* %m1, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #2
  call void (...) @_ssdm_op_SpecBitsMap([4096 x i32]* %m1) #2, !map !155
  call void (...) @_ssdm_op_SpecInterface([4096 x i32]* %m2, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #2
  call void (...) @_ssdm_op_SpecBitsMap([4096 x i32]* %m2) #2, !map !155
  call void (...) @_ssdm_op_SpecInterface([4096 x i32]* %prod, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #2
  call void (...) @_ssdm_op_SpecBitsMap([4096 x i32]* %prod) #2, !map !155
  %m1_loc = alloca [512 x i256], i64 1, align 512, !bitwidth !7
  call void (...) @_ssdm_op_SpecBRAMWithByteEnable([512 x i256]* %m1_loc) #2
  %m2_loc = alloca [512 x i256], i64 1, align 512, !bitwidth !7
  call void (...) @_ssdm_op_SpecBRAMWithByteEnable([512 x i256]* %m2_loc) #2
  %prod_loc = alloca [512 x i256], i64 1, align 512, !bitwidth !7
  call void @bbgemm_top_Pipeline_1([4096 x i32]* %m1, [512 x i256]* %m1_loc), !bitwidth !80, !dep_idx !156, !deps !157
  call void @bbgemm_top_Pipeline_2([4096 x i32]* %m2, [512 x i256]* %m2_loc), !bitwidth !80, !dep_idx !159, !deps !157
  call void @bbgemm_top_Pipeline_loop_add([512 x i256]* %m1_loc, [512 x i256]* %m2_loc, [512 x i256]* %prod_loc), !bitwidth !80, !dep_idx !160, !deps !161
  call void @bbgemm_top_Pipeline_4([512 x i256]* %prod_loc, [4096 x i32]* %prod), !bitwidth !80, !dep_idx !165, !deps !166
  ret void, !bitwidth !80
}

define void @_ssdm_op_Write.bram.i256(i256*, i256, i32) {
entry:
  br label %head

head:                                             ; preds = %merge, %entry
  %Idx = phi i32 [ 0, %entry ], [ %IdxAdd, %merge ]
  %icmp = icmp eq i32 %Idx, 32
  %empty = call i32 (...) @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32)
  br i1 %icmp, label %exit, label %body

body:                                             ; preds = %head
  %Bit = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %2, i32 %Idx)
  %empty_72 = icmp eq i1 %Bit, true
  br i1 %empty_72, label %branch, label %merge

branch:                                           ; preds = %body
  %Lo = mul i32 %Idx, 8
  %Hi = add i32 %Lo, 7
  %PartSelect = call i8 @_ssdm_op_PartSelect.i8.i256.i32.i32(i256 %1, i32 %Lo, i32 %Hi)
  %PortVal = load i256, i256* %0, !dep_idx !168, !deps !169
  %PartSet = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %PortVal, i8 %PartSelect, i32 %Lo, i32 %Hi)
  store i256 %PartSet, i256* %0, !dep_idx !171, !deps !172
  br label %merge

merge:                                            ; preds = %branch, %body
  %IdxAdd = add i32 %Idx, 1
  br label %head

exit:                                             ; preds = %head
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) comdat {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) comdat {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) comdat {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) comdat {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) comdat {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) comdat {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBRAMWithByteEnable(...) comdat {
entry:
  ret void
}

; Function Attrs: nounwind readnone
define weak i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256, i8, i32, i32) #0 comdat {
entry:
  %empty = call i256 @llvm.part.set.i256.i8(i256 %0, i8 %1, i32 %2, i32 %3)
  ret i256 %empty
}

; Function Attrs: nounwind readnone
define weak i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13, i32, i32) #0 comdat {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2)
  %empty_73 = trunc i13 %empty to i9
  ret i9 %empty_73
}

; Function Attrs: nounwind readnone
define weak i8 @_ssdm_op_PartSelect.i8.i256.i32.i32(i256, i32, i32) #0 comdat {
entry:
  %empty = call i256 @llvm.part.select.i256(i256 %0, i32 %1, i32 %2)
  %empty_74 = trunc i256 %empty to i8
  ret i8 %empty_74
}

; Function Attrs: nounwind readnone
define weak i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256, i32, i32) #0 comdat {
entry:
  %empty = call i256 @llvm.part.select.i256(i256 %0, i32 %1, i32 %2)
  %empty_75 = trunc i256 %empty to i32
  ret i32 %empty_75
}

; Function Attrs: nounwind readnone
declare i3 @_ssdm_op_PartSelect.i3.i13.i32.i32(i13, i32, i32) #0

; Function Attrs: nounwind readnone
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) #0 comdat {
entry:
  %empty = shl i32 1, %1
  %empty_76 = and i32 %0, %empty
  %empty_77 = icmp ne i32 %empty_76, 0
  ret i1 %empty_77
}

; Function Attrs: nounwind readnone
define weak i1 @_ssdm_op_BitSelect.i1.i13.i32(i13, i32) #0 comdat {
entry:
  %empty = trunc i32 %1 to i13
  %empty_78 = shl i13 1, %empty
  %empty_79 = and i13 %0, %empty_78
  %empty_80 = icmp ne i13 %empty_79, 0
  ret i1 %empty_80
}

; Function Attrs: nounwind readnone
define weak i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3, i5) #0 comdat {
entry:
  %empty = zext i3 %0 to i8
  %empty_81 = zext i5 %1 to i8
  %empty_82 = shl i8 %empty, 5
  %empty_83 = or i8 %empty_82, %empty_81
  ret i8 %empty_83
}

; Function Attrs: nounwind readnone
define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) #0 comdat {
entry:
  %empty = zext i3 %0 to i5
  %empty_84 = zext i2 %1 to i5
  %empty_85 = shl i5 %empty, 2
  %empty_86 = or i5 %empty_85, %empty_84
  ret i5 %empty_86
}

; Function Attrs: nounwind readnone
define weak i256 @_ssdm_op_BitConcatenate.i256.i32.i32.i32.i32.i32.i32.i32.i32(i32, i32, i32, i32, i32, i32, i32, i32) #0 comdat {
entry:
  %empty = zext i32 %6 to i64
  %empty_87 = zext i32 %7 to i64
  %empty_88 = shl i64 %empty, 32
  %empty_89 = or i64 %empty_88, %empty_87
  %empty_90 = zext i32 %5 to i96
  %empty_91 = zext i64 %empty_89 to i96
  %empty_92 = shl i96 %empty_90, 64
  %empty_93 = or i96 %empty_92, %empty_91
  %empty_94 = zext i32 %4 to i128
  %empty_95 = zext i96 %empty_93 to i128
  %empty_96 = shl i128 %empty_94, 96
  %empty_97 = or i128 %empty_96, %empty_95
  %empty_98 = zext i32 %3 to i160
  %empty_99 = zext i128 %empty_97 to i160
  %empty_100 = shl i160 %empty_98, 128
  %empty_101 = or i160 %empty_100, %empty_99
  %empty_102 = zext i32 %2 to i192
  %empty_103 = zext i160 %empty_101 to i192
  %empty_104 = shl i192 %empty_102, 160
  %empty_105 = or i192 %empty_104, %empty_103
  %empty_106 = zext i32 %1 to i224
  %empty_107 = zext i192 %empty_105 to i224
  %empty_108 = shl i224 %empty_106, 192
  %empty_109 = or i224 %empty_108, %empty_107
  %empty_110 = zext i32 %0 to i256
  %empty_111 = zext i224 %empty_109 to i256
  %empty_112 = shl i256 %empty_110, 224
  %empty_113 = or i256 %empty_112, %empty_111
  ret i256 %empty_113
}

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!blackbox_cfg = !{!1}
!llvm.module.flags = !{!2, !3}
!llvm.map.gv = !{}
!bitwidth_g = !{!4, !46, !67, !73, !74}

!0 = !{!"clang version 7.0.0 "}
!1 = !{}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"reflow.full.lowering", i32 1}
!4 = !{void ([512 x i256]*, [512 x i256]*, [512 x i256]*)* @bbgemm_top_Pipeline_loop_add, !5}
!5 = !{!6, !8, !9, !10, !12, !14, !16, !18, !19, !21, !22, !24, !25, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !6}
!6 = !{!"Arg", i32 0, !7}
!7 = !{i32 0, i32 0, i32 256, i32 2}
!8 = !{!"Arg", i32 1, !7}
!9 = !{!"Arg", i32 2, !7}
!10 = !{i32 1, !11}
!11 = !{i32 1, i32 32, i32 0, i32 0}
!12 = !{i13 0, !13}
!13 = !{i32 1, i32 13, i32 0, i32 0}
!14 = !{i32 12, !15}
!15 = !{i32 5, i32 32, i32 0, i32 1}
!16 = !{i64 512, !17}
!17 = !{i32 11, i32 64, i32 0, i32 1}
!18 = !{i32 0, !11}
!19 = !{[1 x i8]* @empty_0, !20}
!20 = !{i32 0, i32 0, i32 8, i32 2}
!21 = !{[9 x i8]* @empty_2, !20}
!22 = !{i32 3, !23}
!23 = !{i32 3, i32 32, i32 0, i32 1}
!24 = !{i32 11, !15}
!25 = !{i64 0, !26}
!26 = !{i32 1, i32 64, i32 0, i32 0}
!27 = !{i32 32, !28}
!28 = !{i32 7, i32 32, i32 0, i32 1}
!29 = !{i32 63, !28}
!30 = !{i32 64, !31}
!31 = !{i32 8, i32 32, i32 0, i32 1}
!32 = !{i32 95, !31}
!33 = !{i32 96, !31}
!34 = !{i32 127, !31}
!35 = !{i32 128, !36}
!36 = !{i32 9, i32 32, i32 0, i32 1}
!37 = !{i32 159, !36}
!38 = !{i32 160, !36}
!39 = !{i32 191, !36}
!40 = !{i32 192, !36}
!41 = !{i32 223, !36}
!42 = !{i32 224, !36}
!43 = !{i32 255, !36}
!44 = !{i13 8, !45}
!45 = !{i32 5, i32 13, i32 0, i32 1}
!46 = !{void ([512 x i256]*, [4096 x i32]*)* @bbgemm_top_Pipeline_4, !47}
!47 = !{!6, !48, !10, !50, !18, !19, !51, !12, !53, !54, !56, !58, !59, !22, !24, !25, !61, !43, !63, !65}
!48 = !{!"Arg", i32 1, !49}
!49 = !{i32 0, i32 0, i32 32, i32 2}
!50 = !{[10 x i8]* @empty, !20}
!51 = !{i32 -1, !52}
!52 = !{i32 1, i32 32, i32 0, i32 1}
!53 = !{[1 x i8]* @p_str, !20}
!54 = !{i13 -4096, !55}
!55 = !{i32 13, i32 13, i32 0, i32 1}
!56 = !{i64 4096, !57}
!57 = !{i32 14, i32 64, i32 0, i32 1}
!58 = !{i13 1, !13}
!59 = !{i5 0, !60}
!60 = !{i32 1, i32 5, i32 0, i32 0}
!61 = !{i8 31, !62}
!62 = !{i32 6, i32 8, i32 0, i32 1}
!63 = !{i9 255, !64}
!64 = !{i32 9, i32 9, i32 0, i32 1}
!65 = !{i256 -1, !66}
!66 = !{i32 1, i32 256, i32 0, i32 1}
!67 = !{void ([4096 x i32]*, [512 x i256]*)* @bbgemm_top_Pipeline_2, !68}
!68 = !{!69, !8, !10, !50, !18, !19, !51, !12, !53, !54, !56, !58, !25, !59, !22, !24, !61, !63, !43, !65, !70, !72}
!69 = !{!"Arg", i32 0, !49}
!70 = !{i2 0, !71}
!71 = !{i32 1, i32 2, i32 0, i32 0}
!72 = !{i32 15, !15}
!73 = !{void ([4096 x i32]*, [512 x i256]*)* @bbgemm_top_Pipeline_1, !68}
!74 = !{void ([4096 x i32]*, [4096 x i32]*, [4096 x i32]*)* @bbgemm_top, !75}
!75 = !{!69, !48, !76, !77, !50, !18, !19, !51, !78}
!76 = !{!"Arg", i32 2, !49}
!77 = !{[11 x i8]* @empty_1, !20}
!78 = !{i64 1, !26}
!79 = !{i32 0, i32 0, i32 13, i32 1}
!80 = !{i32 0, i32 0, i32 0, i32 2}
!81 = !{i32 15}
!82 = !{!83, !85}
!83 = !{i32 13, !84}
!84 = !{!"RAW", !"indep"}
!85 = !{i32 14, !86}
!86 = !{!"WAW", !"indep"}
!87 = !{i32 13, i32 13, i32 0, i32 2}
!88 = !{i32 13}
!89 = !{!90, !92}
!90 = !{i32 15, !91}
!91 = !{!"WAR", !"indep"}
!92 = !{i32 14, !93}
!93 = !{!"WAR", !"indep", i32 1, !"*", i32 -1, i1 true}
!94 = !{i32 1, i32 1, i32 0, i32 2}
!95 = distinct !{!95, !1, !1, !96, !97, !98}
!96 = !{!"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1}
!97 = !{!"llvm.loop.name", !"loop_add"}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = !{i32 9, i32 9, i32 0, i32 2}
!100 = !{i32 64, i32 64, i32 0, i32 0}
!101 = !{i32 256, i32 256, i32 0, i32 2}
!102 = !{i32 32, i32 32, i32 0, i32 2}
!103 = !{i32 14}
!104 = !{!105, !106}
!105 = !{i32 15, !86}
!106 = !{i32 13, !107}
!107 = !{!"RAW", !"indep", i32 1, !"*", i32 -1, i1 true}
!108 = !{i32 12}
!109 = !{!110, !111}
!110 = !{i32 10, !84}
!111 = !{i32 11, !86}
!112 = !{i32 10}
!113 = !{!114, !115}
!114 = !{i32 12, !91}
!115 = !{i32 11, !93}
!116 = distinct !{!116, !117}
!117 = !{!"llvm.loop.rotate.enable"}
!118 = !{i32 3, i32 3, i32 0, i32 2}
!119 = !{i32 8, i32 8, i32 0, i32 2}
!120 = !{i32 9, i32 9, i32 0, i32 0}
!121 = !{i32 256, i32 256, i32 0, i32 0}
!122 = !{i32 11}
!123 = !{!124, !125}
!124 = !{i32 12, !86}
!125 = !{i32 10, !107}
!126 = !{i32 9}
!127 = !{!128, !129}
!128 = !{i32 7, !84}
!129 = !{i32 8, !86}
!130 = !{i32 7}
!131 = !{!132, !133}
!132 = !{i32 9, !91}
!133 = !{i32 8, !93}
!134 = distinct !{!134, !117}
!135 = !{i32 8, i32 9, i32 0, i32 0}
!136 = !{i32 5, i32 5, i32 0, i32 2}
!137 = !{i32 32, i32 32, i32 0, i32 0}
!138 = !{i32 8}
!139 = !{!140, !141}
!140 = !{i32 9, !86}
!141 = !{i32 7, !107}
!142 = !{i32 6}
!143 = !{!144, !145}
!144 = !{i32 4, !84}
!145 = !{i32 5, !86}
!146 = !{i32 4}
!147 = !{!148, !149}
!148 = !{i32 6, !91}
!149 = !{i32 5, !93}
!150 = distinct !{!150, !117}
!151 = !{i32 5}
!152 = !{!153, !154}
!153 = !{i32 6, !86}
!154 = !{i32 4, !107}
!155 = !{!1}
!156 = !{i32 1}
!157 = !{!158}
!158 = !{i32 0, !84}
!159 = !{i32 2}
!160 = !{i32 0}
!161 = !{!162, !163, !164}
!162 = !{i32 1, !91}
!163 = !{i32 2, !91}
!164 = !{i32 3, !84}
!165 = !{i32 3}
!166 = !{!167}
!167 = !{i32 0, !91}
!168 = !{i32 17}
!169 = !{!170}
!170 = !{i32 16, !93}
!171 = !{i32 16}
!172 = !{!173}
!173 = !{i32 17, !107}
