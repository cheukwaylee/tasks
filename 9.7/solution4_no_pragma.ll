; ModuleID = 'a.o.3.bc'
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer
@empty = internal unnamed_addr constant [10 x i8] c"ap_memory\00"
@empty_0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@empty_1 = internal unnamed_addr constant [11 x i8] c"bbgemm_top\00"
@empty_2 = internal unnamed_addr constant [16 x i8] c"VITIS_LOOP_22_1\00"

; Function Attrs: nounwind
define void @bbgemm_top([4096 x i32]* noalias %m1, [4096 x i32]* noalias %m2, [4096 x i32]* noalias %prod) #0 {
  %i = alloca i13, !bitwidth !30
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @empty_1) #0 
  call void (...)* @_ssdm_op_SpecInterface([4096 x i32]* %m1, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #0
  call void (...)* @_ssdm_op_SpecBitsMap([4096 x i32]* %m1) #0, !map !31
  call void (...)* @_ssdm_op_SpecInterface([4096 x i32]* %m2, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #0
  call void (...)* @_ssdm_op_SpecBitsMap([4096 x i32]* %m2) #0, !map !31
  call void (...)* @_ssdm_op_SpecInterface([4096 x i32]* %prod, [10 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 -1, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) #0
  call void (...)* @_ssdm_op_SpecBitsMap([4096 x i32]* %prod) #0, !map !31
  store i13 0, i13* %i, !bitwidth !32, !dep_idx !33, !deps !34
  br label %1, !bitwidth !32

; <label>:1                                       ; preds = %.split, %0
  %i_1 = load i13* %i, !bitwidth !39, !dep_idx !40, !deps !41
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 0, i32 1, i32 0, [1 x i8]* @p_str) #0
  %icmp_ln22 = icmp eq i13 %i_1, -4096, !bitwidth !46
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096) #0
  %add_ln22 = add i13 %i_1, 1, !bitwidth !39
  br i1 %icmp_ln22, label %2, label %.split, !llvm.loop !47, !bitwidth !32

.split:                                           ; preds = %1
  %i_cast = zext i13 %i_1 to i64, !bitwidth !49
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @empty_2) #0
  %m1_addr = getelementptr [4096 x i32]* %m1, i64 0, i64 %i_cast, !bitwidth !7
  %m1_load = load i32* %m1_addr, align 4, !bitwidth !50
  %m2_addr = getelementptr [4096 x i32]* %m2, i64 0, i64 %i_cast, !bitwidth !7
  %m2_load = load i32* %m2_addr, align 4, !bitwidth !50
  %add_ln32 = add nsw i32 %m2_load, %m1_load, !bitwidth !50
  %prod_addr = getelementptr [4096 x i32]* %prod, i64 0, i64 %i_cast, !bitwidth !7
  store i32 %add_ln32, i32* %prod_addr, align 4, !bitwidth !32
  store i13 %add_ln22, i13* %i, !bitwidth !32, !dep_idx !51, !deps !52
  br label %1, !llvm.loop !47, !bitwidth !32

; <label>:2                                       ; preds = %1
  ret void, !bitwidth !32
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

attributes #0 = { nounwind }

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
!5 = metadata !{metadata !6, metadata !8, metadata !9, metadata !10, metadata !12, metadata !14, metadata !15, metadata !16, metadata !17, metadata !19, metadata !21, metadata !22, metadata !24, metadata !26, metadata !27, metadata !28}
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
!21 = metadata !{[1 x i8]* @p_str, metadata !13}
!22 = metadata !{i13 -4096, metadata !23}
!23 = metadata !{i32 13, i32 13, i32 0, i32 1}
!24 = metadata !{i64 4096, metadata !25}
!25 = metadata !{i32 14, i32 64, i32 0, i32 1}
!26 = metadata !{i13 1, metadata !20}
!27 = metadata !{[16 x i8]* @empty_2, metadata !13}
!28 = metadata !{i64 0, metadata !29}
!29 = metadata !{i32 1, i32 64, i32 0, i32 0}
!30 = metadata !{i32 0, i32 0, i32 13, i32 1}
!31 = metadata !{metadata !1}
!32 = metadata !{i32 0, i32 0, i32 0, i32 2}
!33 = metadata !{i32 2}
!34 = metadata !{metadata !35, metadata !37}
!35 = metadata !{i32 0, metadata !36}
!36 = metadata !{metadata !"RAW", metadata !"indep"}
!37 = metadata !{i32 1, metadata !38}
!38 = metadata !{metadata !"WAW", metadata !"indep"}
!39 = metadata !{i32 13, i32 13, i32 0, i32 2}
!40 = metadata !{i32 0}
!41 = metadata !{metadata !42, metadata !44}
!42 = metadata !{i32 2, metadata !43}
!43 = metadata !{metadata !"WAR", metadata !"indep"}
!44 = metadata !{i32 1, metadata !45}
!45 = metadata !{metadata !"WAR", metadata !"indep", i32 1, metadata !"*", i32 -1, i1 true}
!46 = metadata !{i32 1, i32 1, i32 0, i32 2}
!47 = metadata !{metadata !47, metadata !1, metadata !1, metadata !48}
!48 = metadata !{metadata !"llvm.loop.name", metadata !"VITIS_LOOP_22_1"}
!49 = metadata !{i32 64, i32 64, i32 0, i32 0}
!50 = metadata !{i32 32, i32 32, i32 0, i32 2}
!51 = metadata !{i32 1}
!52 = metadata !{metadata !53, metadata !54}
!53 = metadata !{i32 2, metadata !38}
!54 = metadata !{i32 0, metadata !55}
!55 = metadata !{metadata !"RAW", metadata !"indep", i32 1, metadata !"*", i32 -1, i1 true}
