; ModuleID = 'a.o.3.bc'
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@empty = internal unnamed_addr constant [10 x i8] c"ap_memory\00"
@empty_0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@empty_1 = internal unnamed_addr constant [11 x i8] c"bbgemm_top\00"
@empty_2 = internal unnamed_addr constant [16 x i8] c"VITIS_LOOP_20_1\00"

; Function Attrs: nounwind
define void @bbgemm_top([4096 x i32]* noalias %m1, [4096 x i32]* noalias %m2, [4096 x i32]* noalias %prod) #0 {
  %i = alloca i13, !bitwidth !40
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @empty_1) #0
  call void (...)* @_ssdm_op_SpecInterface([4096 x i32]* %m1, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #0
  call void (...)* @_ssdm_op_SpecBitsMap([4096 x i32]* %m1) #0, !map !41
  call void (...)* @_ssdm_op_SpecInterface([4096 x i32]* %m2, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #0
  call void (...)* @_ssdm_op_SpecBitsMap([4096 x i32]* %m2) #0, !map !41
  call void (...)* @_ssdm_op_SpecInterface([4096 x i32]* %prod, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #0
  call void (...)* @_ssdm_op_SpecBitsMap([4096 x i32]* %prod) #0, !map !41
  store i13 0, i13* %i, !bitwidth !42, !dep_idx !43, !deps !44
  br label %1, !bitwidth !42

; <label>:1                                       ; preds = %.split, %0
  %i_1 = load i13* %i, !bitwidth !49, !dep_idx !50, !deps !51
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %i_1, i32 12), !bitwidth !56
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512) #0
  br i1 %tmp, label %2, label %.split, !llvm.loop !57, !bitwidth !42

.split:                                           ; preds = %1
  %zext_ln20 = zext i13 %i_1 to i64, !bitwidth !61
  %trunc_ln20 = trunc i13 %i_1 to i12, !bitwidth !62
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 0, i32 0, i32 0, [1 x i8]* @empty_0) #0
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @empty_2) #0
  %m1_addr = getelementptr [4096 x i32]* %m1, i64 0, i64 %zext_ln20, !bitwidth !7
  %m1_load = load i32* %m1_addr, align 4, !bitwidth !63
  %m2_addr = getelementptr [4096 x i32]* %m2, i64 0, i64 %zext_ln20, !bitwidth !7
  %m2_load = load i32* %m2_addr, align 4, !bitwidth !63
  %add_ln25 = add nsw i32 %m2_load, %m1_load, !bitwidth !63
  %prod_addr = getelementptr [4096 x i32]* %prod, i64 0, i64 %zext_ln20, !bitwidth !7
  store i32 %add_ln25, i32* %prod_addr, align 4, !bitwidth !42
  %or_ln20 = or i12 %trunc_ln20, 1, !bitwidth !62
  %zext_ln25 = zext i12 %or_ln20 to i64, !bitwidth !61
  %m1_addr_1 = getelementptr [4096 x i32]* %m1, i64 0, i64 %zext_ln25, !bitwidth !7
  %m1_load_1 = load i32* %m1_addr_1, align 4, !bitwidth !63
  %m2_addr_1 = getelementptr [4096 x i32]* %m2, i64 0, i64 %zext_ln25, !bitwidth !7
  %m2_load_1 = load i32* %m2_addr_1, align 4, !bitwidth !63
  %add_ln25_1 = add nsw i32 %m2_load_1, %m1_load_1, !bitwidth !63
  %prod_addr_1 = getelementptr [4096 x i32]* %prod, i64 0, i64 %zext_ln25, !bitwidth !7
  store i32 %add_ln25_1, i32* %prod_addr_1, align 4, !bitwidth !42
  %or_ln20_1 = or i12 %trunc_ln20, 2, !bitwidth !62
  %zext_ln25_1 = zext i12 %or_ln20_1 to i64, !bitwidth !61
  %m1_addr_2 = getelementptr [4096 x i32]* %m1, i64 0, i64 %zext_ln25_1, !bitwidth !7
  %m1_load_2 = load i32* %m1_addr_2, align 4, !bitwidth !63
  %m2_addr_2 = getelementptr [4096 x i32]* %m2, i64 0, i64 %zext_ln25_1, !bitwidth !7
  %m2_load_2 = load i32* %m2_addr_2, align 4, !bitwidth !63
  %add_ln25_2 = add nsw i32 %m2_load_2, %m1_load_2, !bitwidth !63
  %prod_addr_2 = getelementptr [4096 x i32]* %prod, i64 0, i64 %zext_ln25_1, !bitwidth !7
  store i32 %add_ln25_2, i32* %prod_addr_2, align 4, !bitwidth !42
  %or_ln20_2 = or i12 %trunc_ln20, 3, !bitwidth !62
  %zext_ln25_2 = zext i12 %or_ln20_2 to i64, !bitwidth !61
  %m1_addr_3 = getelementptr [4096 x i32]* %m1, i64 0, i64 %zext_ln25_2, !bitwidth !7
  %m1_load_3 = load i32* %m1_addr_3, align 4, !bitwidth !63
  %m2_addr_3 = getelementptr [4096 x i32]* %m2, i64 0, i64 %zext_ln25_2, !bitwidth !7
  %m2_load_3 = load i32* %m2_addr_3, align 4, !bitwidth !63
  %add_ln25_3 = add nsw i32 %m2_load_3, %m1_load_3, !bitwidth !63
  %prod_addr_3 = getelementptr [4096 x i32]* %prod, i64 0, i64 %zext_ln25_2, !bitwidth !7
  store i32 %add_ln25_3, i32* %prod_addr_3, align 4, !bitwidth !42
  %or_ln20_3 = or i12 %trunc_ln20, 4, !bitwidth !62
  %zext_ln25_3 = zext i12 %or_ln20_3 to i64, !bitwidth !61
  %m1_addr_4 = getelementptr [4096 x i32]* %m1, i64 0, i64 %zext_ln25_3, !bitwidth !7
  %m1_load_4 = load i32* %m1_addr_4, align 4, !bitwidth !63
  %m2_addr_4 = getelementptr [4096 x i32]* %m2, i64 0, i64 %zext_ln25_3, !bitwidth !7
  %m2_load_4 = load i32* %m2_addr_4, align 4, !bitwidth !63
  %add_ln25_4 = add nsw i32 %m2_load_4, %m1_load_4, !bitwidth !63
  %prod_addr_4 = getelementptr [4096 x i32]* %prod, i64 0, i64 %zext_ln25_3, !bitwidth !7
  store i32 %add_ln25_4, i32* %prod_addr_4, align 4, !bitwidth !42
  %or_ln20_4 = or i12 %trunc_ln20, 5, !bitwidth !62
  %zext_ln25_4 = zext i12 %or_ln20_4 to i64, !bitwidth !61
  %m1_addr_5 = getelementptr [4096 x i32]* %m1, i64 0, i64 %zext_ln25_4, !bitwidth !7
  %m1_load_5 = load i32* %m1_addr_5, align 4, !bitwidth !63
  %m2_addr_5 = getelementptr [4096 x i32]* %m2, i64 0, i64 %zext_ln25_4, !bitwidth !7
  %m2_load_5 = load i32* %m2_addr_5, align 4, !bitwidth !63
  %add_ln25_5 = add nsw i32 %m2_load_5, %m1_load_5, !bitwidth !63
  %prod_addr_5 = getelementptr [4096 x i32]* %prod, i64 0, i64 %zext_ln25_4, !bitwidth !7
  store i32 %add_ln25_5, i32* %prod_addr_5, align 4, !bitwidth !42
  %or_ln20_5 = or i12 %trunc_ln20, 6, !bitwidth !62
  %zext_ln25_5 = zext i12 %or_ln20_5 to i64, !bitwidth !61
  %m1_addr_6 = getelementptr [4096 x i32]* %m1, i64 0, i64 %zext_ln25_5, !bitwidth !7
  %m1_load_6 = load i32* %m1_addr_6, align 4, !bitwidth !63
  %m2_addr_6 = getelementptr [4096 x i32]* %m2, i64 0, i64 %zext_ln25_5, !bitwidth !7
  %m2_load_6 = load i32* %m2_addr_6, align 4, !bitwidth !63
  %add_ln25_6 = add nsw i32 %m2_load_6, %m1_load_6, !bitwidth !63
  %prod_addr_6 = getelementptr [4096 x i32]* %prod, i64 0, i64 %zext_ln25_5, !bitwidth !7
  store i32 %add_ln25_6, i32* %prod_addr_6, align 4, !bitwidth !42
  %or_ln20_6 = or i12 %trunc_ln20, 7, !bitwidth !62
  %zext_ln25_6 = zext i12 %or_ln20_6 to i64, !bitwidth !61
  %m1_addr_7 = getelementptr [4096 x i32]* %m1, i64 0, i64 %zext_ln25_6, !bitwidth !7
  %m1_load_7 = load i32* %m1_addr_7, align 4, !bitwidth !63
  %m2_addr_7 = getelementptr [4096 x i32]* %m2, i64 0, i64 %zext_ln25_6, !bitwidth !7
  %m2_load_7 = load i32* %m2_addr_7, align 4, !bitwidth !63
  %add_ln25_7 = add nsw i32 %m2_load_7, %m1_load_7, !bitwidth !63
  %prod_addr_7 = getelementptr [4096 x i32]* %prod, i64 0, i64 %zext_ln25_6, !bitwidth !7
  store i32 %add_ln25_7, i32* %prod_addr_7, align 4, !bitwidth !42
  %add_ln20 = add i13 %i_1, 8, !bitwidth !49
  store i13 %add_ln20, i13* %i, !bitwidth !42, !dep_idx !64, !deps !65
  br label %1, !llvm.loop !57, !bitwidth !42

; <label>:2                                       ; preds = %1
  ret void, !bitwidth !42
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
declare i12 @_ssdm_op_PartSelect.i12.i13.i32.i32(i13, i32, i32) #1

; Function Attrs: nounwind readnone
define weak i1 @_ssdm_op_BitSelect.i1.i13.i32(i13, i32) #1 {
entry:
  %empty = trunc i32 %1 to i13
  %empty_6 = shl i13 1, %empty
  %empty_7 = and i13 %0, %empty_6
  %empty_8 = icmp ne i13 %empty_7, 0
  ret i1 %empty_8
}

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!blackbox_cfg = !{!1}
!llvm.module.flags = !{!2, !3}
!llvm.map.gv = !{}
!bitwidth_g = !{!4}

!0 = metadata !{metadata !"clang version 7.0.0 "}
!1 = metadata !{}
!2 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!3 = metadata !{i32 7, metadata !"reflow.full.lowering", i32 1}
!4 = metadata !{void ([4096 x i32]*, [4096 x i32]*, [4096 x i32]*)* @bbgemm_top, metadata !5}
!5 = metadata !{metadata !6, metadata !8, metadata !9, metadata !10, metadata !12, metadata !14, metadata !15, metadata !16, metadata !17, metadata !19, metadata !21, metadata !23, metadata !25, metadata !26, metadata !28, metadata !30, metadata !32, metadata !33, metadata !35, metadata !36, metadata !37, metadata !38}
!6 = metadata !{metadata !"Arg", i32 0, metadata !7}
!7 = metadata !{i32 0, i32 0, i32 32, i32 2}
!8 = metadata !{metadata !"Arg", i32 1, metadata !7}
!9 = metadata !{metadata !"Arg", i32 2, metadata !7}
!10 = metadata !{i32 1, metadata !11}
!11 = metadata !{i32 1, i32 32, i32 0, i32 0}
!12 = metadata !{[11 x i8]* @empty_1, metadata !13}
!13 = metadata !{i32 0, i32 0, i32 8, i32 2}
!14 = metadata !{[10 x i8]* @empty, metadata !13}
!15 = metadata !{i32 0, metadata !11}
!16 = metadata !{[1 x i8]* @empty_0, metadata !13}
!17 = metadata !{i32 -1, metadata !18}
!18 = metadata !{i32 1, i32 32, i32 0, i32 1}
!19 = metadata !{i13 0, metadata !20}
!20 = metadata !{i32 1, i32 13, i32 0, i32 0}
!21 = metadata !{i32 12, metadata !22}
!22 = metadata !{i32 5, i32 32, i32 0, i32 1}
!23 = metadata !{i64 512, metadata !24}
!24 = metadata !{i32 11, i32 64, i32 0, i32 1}
!25 = metadata !{[16 x i8]* @empty_2, metadata !13}
!26 = metadata !{i64 0, metadata !27}
!27 = metadata !{i32 1, i32 64, i32 0, i32 0}
!28 = metadata !{i12 1, metadata !29}
!29 = metadata !{i32 1, i32 12, i32 0, i32 0}
!30 = metadata !{i12 2, metadata !31}
!31 = metadata !{i32 3, i32 12, i32 0, i32 1}
!32 = metadata !{i12 3, metadata !31}
!33 = metadata !{i12 4, metadata !34}
!34 = metadata !{i32 4, i32 12, i32 0, i32 1}
!35 = metadata !{i12 5, metadata !34}
!36 = metadata !{i12 6, metadata !34}
!37 = metadata !{i12 7, metadata !34}
!38 = metadata !{i13 8, metadata !39}
!39 = metadata !{i32 5, i32 13, i32 0, i32 1}
!40 = metadata !{i32 0, i32 0, i32 13, i32 1}
!41 = metadata !{metadata !1}
!42 = metadata !{i32 0, i32 0, i32 0, i32 2}
!43 = metadata !{i32 2}
!44 = metadata !{metadata !45, metadata !47}
!45 = metadata !{i32 0, metadata !46}
!46 = metadata !{metadata !"RAW", metadata !"indep"}
!47 = metadata !{i32 1, metadata !48}
!48 = metadata !{metadata !"WAW", metadata !"indep"}
!49 = metadata !{i32 13, i32 13, i32 0, i32 2}
!50 = metadata !{i32 0}
!51 = metadata !{metadata !52, metadata !54}
!52 = metadata !{i32 2, metadata !53}
!53 = metadata !{metadata !"WAR", metadata !"indep"}
!54 = metadata !{i32 1, metadata !55}
!55 = metadata !{metadata !"WAR", metadata !"indep", i32 1, metadata !"*", i32 -1, i1 true}
!56 = metadata !{i32 1, i32 1, i32 0, i32 2}
!57 = metadata !{metadata !57, metadata !1, metadata !1, metadata !58, metadata !59, metadata !60}
!58 = metadata !{metadata !"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1}
!59 = metadata !{metadata !"llvm.loop.name", metadata !"VITIS_LOOP_20_1"}
!60 = metadata !{metadata !"llvm.loop.unroll.disable"}
!61 = metadata !{i32 64, i32 64, i32 0, i32 0}
!62 = metadata !{i32 12, i32 12, i32 0, i32 2}
!63 = metadata !{i32 32, i32 32, i32 0, i32 2}
!64 = metadata !{i32 1}
!65 = metadata !{metadata !66, metadata !67}
!66 = metadata !{i32 2, metadata !48}
!67 = metadata !{i32 0, metadata !68}
!68 = metadata !{metadata !"RAW", metadata !"indep", i32 1, metadata !"*", i32 -1, i1 true}
