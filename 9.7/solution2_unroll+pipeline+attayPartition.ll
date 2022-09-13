; ModuleID = 'a.o.3.bc'
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@empty = internal unnamed_addr constant [10 x i8] c"ap_memory\00"
@empty_0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@empty_1 = internal unnamed_addr constant [11 x i8] c"bbgemm_top\00"
@empty_2 = internal unnamed_addr constant [16 x i8] c"VITIS_LOOP_20_1\00"

; Function Attrs: nounwind readnone
declare i13 @llvm.part.select.i13(i13, i32, i32) #0

; Function Attrs: nounwind
define void @bbgemm_top([2048 x i32]* noalias %m1_0, [2048 x i32]* noalias %m1_1, [2048 x i32]* noalias %m2_0, [2048 x i32]* noalias %m2_1, [2048 x i32]* noalias %prod_0, [2048 x i32]* noalias %prod_1) #1 {
  %i = alloca i13, !bitwidth !39
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @empty_1) #1
  call void (...)* @_ssdm_op_SpecInterface([2048 x i32]* %m1_0, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #1
  call void (...)* @_ssdm_op_SpecBitsMap([2048 x i32]* %m1_0) #1, !map !40
  call void (...)* @_ssdm_op_SpecInterface([2048 x i32]* %m1_1, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #1
  call void (...)* @_ssdm_op_SpecBitsMap([2048 x i32]* %m1_1) #1, !map !40
  call void (...)* @_ssdm_op_SpecInterface([2048 x i32]* %m2_0, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #1
  call void (...)* @_ssdm_op_SpecBitsMap([2048 x i32]* %m2_0) #1, !map !40
  call void (...)* @_ssdm_op_SpecInterface([2048 x i32]* %m2_1, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #1
  call void (...)* @_ssdm_op_SpecBitsMap([2048 x i32]* %m2_1) #1, !map !40
  call void (...)* @_ssdm_op_SpecInterface([2048 x i32]* %prod_0, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #1
  call void (...)* @_ssdm_op_SpecBitsMap([2048 x i32]* %prod_0) #1, !map !40
  call void (...)* @_ssdm_op_SpecInterface([2048 x i32]* %prod_1, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #1
  call void (...)* @_ssdm_op_SpecBitsMap([2048 x i32]* %prod_1) #1, !map !40
  store i13 0, i13* %i, !bitwidth !41, !dep_idx !42, !deps !43
  br label %arrayidx43.case.0, !bitwidth !41

arrayidx43.case.0:                                ; preds = %arrayidx43.case.0.split, %0
  %i_1 = load i13* %i, !bitwidth !48, !dep_idx !49, !deps !50
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %i_1, i32 12), !bitwidth !55
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512) #1
  br i1 %tmp, label %1, label %arrayidx43.case.0.split, !llvm.loop !56, !bitwidth !41

arrayidx43.case.0.split:                          ; preds = %arrayidx43.case.0
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 0, i32 0, i32 0, [1 x i8]* @empty_0) #1
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @empty_2) #1
  %lshr_ln = call i11 @_ssdm_op_PartSelect.i11.i13.i32.i32(i13 %i_1, i32 1, i32 11), !bitwidth !60
  %zext_ln30 = zext i11 %lshr_ln to i64, !bitwidth !61
  %m1_0_addr = getelementptr [2048 x i32]* %m1_0, i64 0, i64 %zext_ln30, !bitwidth !7
  %m1_0_load = load i32* %m1_0_addr, align 4, !bitwidth !62
  %m2_0_addr = getelementptr [2048 x i32]* %m2_0, i64 0, i64 %zext_ln30, !bitwidth !7
  %m2_0_load = load i32* %m2_0_addr, align 4, !bitwidth !62
  %add_ln30 = add nsw i32 %m2_0_load, %m1_0_load, !bitwidth !62
  %prod_0_addr = getelementptr [2048 x i32]* %prod_0, i64 0, i64 %zext_ln30, !bitwidth !7
  store i32 %add_ln30, i32* %prod_0_addr, align 4, !bitwidth !41, !dep_idx !63, !deps !64
  %m1_1_addr = getelementptr [2048 x i32]* %m1_1, i64 0, i64 %zext_ln30, !bitwidth !7
  %m1_1_load = load i32* %m1_1_addr, align 4, !bitwidth !62
  %m2_1_addr = getelementptr [2048 x i32]* %m2_1, i64 0, i64 %zext_ln30, !bitwidth !7
  %m2_1_load = load i32* %m2_1_addr, align 4, !bitwidth !62
  %add_ln30_1 = add nsw i32 %m2_1_load, %m1_1_load, !bitwidth !62
  %prod_1_addr = getelementptr [2048 x i32]* %prod_1, i64 0, i64 %zext_ln30, !bitwidth !7
  store i32 %add_ln30_1, i32* %prod_1_addr, align 4, !bitwidth !41, !dep_idx !69, !deps !70
  %or_ln30 = or i11 %lshr_ln, 1, !bitwidth !60
  %zext_ln30_1 = zext i11 %or_ln30 to i64, !bitwidth !61
  %m1_0_addr_1 = getelementptr [2048 x i32]* %m1_0, i64 0, i64 %zext_ln30_1, !bitwidth !7
  %m1_0_load_1 = load i32* %m1_0_addr_1, align 4, !bitwidth !62
  %m2_0_addr_1 = getelementptr [2048 x i32]* %m2_0, i64 0, i64 %zext_ln30_1, !bitwidth !7
  %m2_0_load_1 = load i32* %m2_0_addr_1, align 4, !bitwidth !62
  %add_ln30_2 = add nsw i32 %m2_0_load_1, %m1_0_load_1, !bitwidth !62
  %prod_0_addr_1 = getelementptr [2048 x i32]* %prod_0, i64 0, i64 %zext_ln30_1, !bitwidth !7
  store i32 %add_ln30_2, i32* %prod_0_addr_1, align 4, !bitwidth !41, !dep_idx !74, !deps !75
  %m1_1_addr_1 = getelementptr [2048 x i32]* %m1_1, i64 0, i64 %zext_ln30_1, !bitwidth !7
  %m1_1_load_1 = load i32* %m1_1_addr_1, align 4, !bitwidth !62
  %m2_1_addr_1 = getelementptr [2048 x i32]* %m2_1, i64 0, i64 %zext_ln30_1, !bitwidth !7
  %m2_1_load_1 = load i32* %m2_1_addr_1, align 4, !bitwidth !62
  %add_ln30_3 = add nsw i32 %m2_1_load_1, %m1_1_load_1, !bitwidth !62
  %prod_1_addr_1 = getelementptr [2048 x i32]* %prod_1, i64 0, i64 %zext_ln30_1, !bitwidth !7
  store i32 %add_ln30_3, i32* %prod_1_addr_1, align 4, !bitwidth !41, !dep_idx !77, !deps !78
  %or_ln30_1 = or i11 %lshr_ln, 2, !bitwidth !60
  %zext_ln30_2 = zext i11 %or_ln30_1 to i64, !bitwidth !61
  %m1_0_addr_2 = getelementptr [2048 x i32]* %m1_0, i64 0, i64 %zext_ln30_2, !bitwidth !7
  %m1_0_load_2 = load i32* %m1_0_addr_2, align 4, !bitwidth !62
  %m2_0_addr_2 = getelementptr [2048 x i32]* %m2_0, i64 0, i64 %zext_ln30_2, !bitwidth !7
  %m2_0_load_2 = load i32* %m2_0_addr_2, align 4, !bitwidth !62
  %add_ln30_4 = add nsw i32 %m2_0_load_2, %m1_0_load_2, !bitwidth !62
  %prod_0_addr_2 = getelementptr [2048 x i32]* %prod_0, i64 0, i64 %zext_ln30_2, !bitwidth !7
  store i32 %add_ln30_4, i32* %prod_0_addr_2, align 4, !bitwidth !41, !dep_idx !80, !deps !81
  %m1_1_addr_2 = getelementptr [2048 x i32]* %m1_1, i64 0, i64 %zext_ln30_2, !bitwidth !7
  %m1_1_load_2 = load i32* %m1_1_addr_2, align 4, !bitwidth !62
  %m2_1_addr_2 = getelementptr [2048 x i32]* %m2_1, i64 0, i64 %zext_ln30_2, !bitwidth !7
  %m2_1_load_2 = load i32* %m2_1_addr_2, align 4, !bitwidth !62
  %add_ln30_5 = add nsw i32 %m2_1_load_2, %m1_1_load_2, !bitwidth !62
  %prod_1_addr_2 = getelementptr [2048 x i32]* %prod_1, i64 0, i64 %zext_ln30_2, !bitwidth !7
  store i32 %add_ln30_5, i32* %prod_1_addr_2, align 4, !bitwidth !41, !dep_idx !82, !deps !83
  %or_ln30_2 = or i11 %lshr_ln, 3, !bitwidth !60
  %zext_ln30_3 = zext i11 %or_ln30_2 to i64, !bitwidth !61
  %m1_0_addr_3 = getelementptr [2048 x i32]* %m1_0, i64 0, i64 %zext_ln30_3, !bitwidth !7
  %m1_0_load_3 = load i32* %m1_0_addr_3, align 4, !bitwidth !62
  %m2_0_addr_3 = getelementptr [2048 x i32]* %m2_0, i64 0, i64 %zext_ln30_3, !bitwidth !7
  %m2_0_load_3 = load i32* %m2_0_addr_3, align 4, !bitwidth !62
  %add_ln30_6 = add nsw i32 %m2_0_load_3, %m1_0_load_3, !bitwidth !62
  %prod_0_addr_3 = getelementptr [2048 x i32]* %prod_0, i64 0, i64 %zext_ln30_3, !bitwidth !7
  store i32 %add_ln30_6, i32* %prod_0_addr_3, align 4, !bitwidth !41, !dep_idx !84, !deps !85
  %m1_1_addr_3 = getelementptr [2048 x i32]* %m1_1, i64 0, i64 %zext_ln30_3, !bitwidth !7
  %m1_1_load_3 = load i32* %m1_1_addr_3, align 4, !bitwidth !62
  %m2_1_addr_3 = getelementptr [2048 x i32]* %m2_1, i64 0, i64 %zext_ln30_3, !bitwidth !7
  %m2_1_load_3 = load i32* %m2_1_addr_3, align 4, !bitwidth !62
  %add_ln30_7 = add nsw i32 %m2_1_load_3, %m1_1_load_3, !bitwidth !62
  %prod_1_addr_3 = getelementptr [2048 x i32]* %prod_1, i64 0, i64 %zext_ln30_3, !bitwidth !7
  store i32 %add_ln30_7, i32* %prod_1_addr_3, align 4, !bitwidth !41, !dep_idx !86, !deps !87
  %add_ln20 = add i13 %i_1, 8, !bitwidth !48
  store i13 %add_ln20, i13* %i, !bitwidth !41, !dep_idx !88, !deps !89
  br label %arrayidx43.case.0, !llvm.loop !56, !bitwidth !41

; <label>:1                                       ; preds = %arrayidx43.case.0
  ret void, !bitwidth !41
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; Function Attrs: nounwind readnone
define weak i11 @_ssdm_op_PartSelect.i11.i13.i32.i32(i13, i32, i32) #0 {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2)
  %empty_8 = trunc i13 %empty to i11
  ret i11 %empty_8
}

; Function Attrs: nounwind readnone
define weak i1 @_ssdm_op_BitSelect.i1.i13.i32(i13, i32) #0 {
entry:
  %empty = trunc i32 %1 to i13
  %empty_9 = shl i13 1, %empty
  %empty_10 = and i13 %0, %empty_9
  %empty_11 = icmp ne i13 %empty_10, 0
  ret i1 %empty_11
}

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!blackbox_cfg = !{!1}
!llvm.module.flags = !{!2, !3}
!llvm.map.gv = !{}
!bitwidth_g = !{!4}

!0 = metadata !{metadata !"clang version 7.0.0 "}
!1 = metadata !{}
!2 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!3 = metadata !{i32 7, metadata !"reflow.full.lowering", i32 1}
!4 = metadata !{void ([2048 x i32]*, [2048 x i32]*, [2048 x i32]*, [2048 x i32]*, [2048 x i32]*, [2048 x i32]*)* @bbgemm_top, metadata !5}
!5 = metadata !{metadata !6, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !15, metadata !17, metadata !18, metadata !19, metadata !20, metadata !22, metadata !24, metadata !26, metadata !28, metadata !29, metadata !30, metadata !32, metadata !34, metadata !36, metadata !37}
!6 = metadata !{metadata !"Arg", i32 0, metadata !7}
!7 = metadata !{i32 0, i32 0, i32 32, i32 2}
!8 = metadata !{metadata !"Arg", i32 1, metadata !7}
!9 = metadata !{metadata !"Arg", i32 2, metadata !7}
!10 = metadata !{metadata !"Arg", i32 3, metadata !7}
!11 = metadata !{metadata !"Arg", i32 4, metadata !7}
!12 = metadata !{metadata !"Arg", i32 5, metadata !7}
!13 = metadata !{i32 1, metadata !14}
!14 = metadata !{i32 1, i32 32, i32 0, i32 0}
!15 = metadata !{[11 x i8]* @empty_1, metadata !16}
!16 = metadata !{i32 0, i32 0, i32 8, i32 2}
!17 = metadata !{[10 x i8]* @empty, metadata !16}
!18 = metadata !{i32 0, metadata !14}
!19 = metadata !{[1 x i8]* @empty_0, metadata !16}
!20 = metadata !{i32 -1, metadata !21}
!21 = metadata !{i32 1, i32 32, i32 0, i32 1}
!22 = metadata !{i13 0, metadata !23}
!23 = metadata !{i32 1, i32 13, i32 0, i32 0}
!24 = metadata !{i32 12, metadata !25}
!25 = metadata !{i32 5, i32 32, i32 0, i32 1}
!26 = metadata !{i64 512, metadata !27}
!27 = metadata !{i32 11, i32 64, i32 0, i32 1}
!28 = metadata !{[16 x i8]* @empty_2, metadata !16}
!29 = metadata !{i32 11, metadata !25}
!30 = metadata !{i64 0, metadata !31}
!31 = metadata !{i32 1, i32 64, i32 0, i32 0}
!32 = metadata !{i11 1, metadata !33}
!33 = metadata !{i32 1, i32 11, i32 0, i32 0}
!34 = metadata !{i11 2, metadata !35}
!35 = metadata !{i32 3, i32 11, i32 0, i32 1}
!36 = metadata !{i11 3, metadata !35}
!37 = metadata !{i13 8, metadata !38}
!38 = metadata !{i32 5, i32 13, i32 0, i32 1}
!39 = metadata !{i32 0, i32 0, i32 13, i32 1}
!40 = metadata !{metadata !1}
!41 = metadata !{i32 0, i32 0, i32 0, i32 2}
!42 = metadata !{i32 2}
!43 = metadata !{metadata !44, metadata !46}
!44 = metadata !{i32 0, metadata !45}
!45 = metadata !{metadata !"RAW", metadata !"indep"}
!46 = metadata !{i32 1, metadata !47}
!47 = metadata !{metadata !"WAW", metadata !"indep"}
!48 = metadata !{i32 13, i32 13, i32 0, i32 2}
!49 = metadata !{i32 0}
!50 = metadata !{metadata !51, metadata !53}
!51 = metadata !{i32 2, metadata !52}
!52 = metadata !{metadata !"WAR", metadata !"indep"}
!53 = metadata !{i32 1, metadata !54}
!54 = metadata !{metadata !"WAR", metadata !"indep", i32 1, metadata !"*", i32 -1, i1 true}
!55 = metadata !{i32 1, i32 1, i32 0, i32 2}
!56 = metadata !{metadata !56, metadata !1, metadata !1, metadata !57, metadata !58, metadata !59}
!57 = metadata !{metadata !"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1}
!58 = metadata !{metadata !"llvm.loop.name", metadata !"VITIS_LOOP_20_1"}
!59 = metadata !{metadata !"llvm.loop.unroll.disable"}
!60 = metadata !{i32 11, i32 11, i32 0, i32 2}
!61 = metadata !{i32 64, i32 64, i32 0, i32 0}
!62 = metadata !{i32 32, i32 32, i32 0, i32 2}
!63 = metadata !{i32 9}
!64 = metadata !{metadata !65, metadata !67, metadata !68}
!65 = metadata !{i32 3, metadata !66}
!66 = metadata !{metadata !"WAW", metadata !"indep", i32 1, metadata !"*", i32 -1, i1 true}
!67 = metadata !{i32 4, metadata !66}
!68 = metadata !{i32 5, metadata !66}
!69 = metadata !{i32 10}
!70 = metadata !{metadata !71, metadata !72, metadata !73}
!71 = metadata !{i32 6, metadata !66}
!72 = metadata !{i32 7, metadata !66}
!73 = metadata !{i32 8, metadata !66}
!74 = metadata !{i32 3}
!75 = metadata !{metadata !76, metadata !67, metadata !68}
!76 = metadata !{i32 9, metadata !66}
!77 = metadata !{i32 6}
!78 = metadata !{metadata !79, metadata !72, metadata !73}
!79 = metadata !{i32 10, metadata !66}
!80 = metadata !{i32 4}
!81 = metadata !{metadata !76, metadata !65, metadata !68}
!82 = metadata !{i32 7}
!83 = metadata !{metadata !79, metadata !71, metadata !73}
!84 = metadata !{i32 5}
!85 = metadata !{metadata !76, metadata !65, metadata !67}
!86 = metadata !{i32 8}
!87 = metadata !{metadata !79, metadata !71, metadata !72}
!88 = metadata !{i32 1}
!89 = metadata !{metadata !90, metadata !91}
!90 = metadata !{i32 2, metadata !47}
!91 = metadata !{i32 0, metadata !92}
!92 = metadata !{metadata !"RAW", metadata !"indep", i32 1, metadata !"*", i32 -1, i1 true}
