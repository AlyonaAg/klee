; ModuleID = '/home/klee/examples/new/loop_my.bc'
source_filename = "loop_my.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @loop(i32 %a, i32 %b) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !13, metadata !DIExpression()), !dbg !14
  br label %while.cond, !dbg !15

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %a.addr, align 4, !dbg !16
  %cmp = icmp slt i32 %0, 50, !dbg !17
  br i1 %cmp, label %while.body, label %while.end, !dbg !15

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %a.addr, align 4, !dbg !18
  %inc = add nsw i32 %1, 1, !dbg !18
  store i32 %inc, i32* %a.addr, align 4, !dbg !18
  br label %while.cond, !dbg !15, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %2 = load i32, i32* %retval, align 4, !dbg !20
  ret i32 %2, !dbg !20
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !21 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i8, align 1
  %b = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i8* %a, metadata !24, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i8* %b, metadata !27, metadata !DIExpression()), !dbg !28
  call void @klee_make_symbolic(i8* %a, i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !29
  call void @klee_make_symbolic(i8* %b, i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !30
  %0 = load i8, i8* %a, align 1, !dbg !31
  %conv = sext i8 %0 to i32, !dbg !31
  %1 = load i8, i8* %b, align 1, !dbg !32
  %conv1 = sext i8 %1 to i32, !dbg !32
  %call = call i32 @loop(i32 %conv, i32 %conv1), !dbg !33
  ret i32 0, !dbg !34
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "loop_my.c", directory: "/home/klee/examples/new")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!7 = distinct !DISubprogram(name: "loop", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!12 = !DILocation(line: 3, column: 14, scope: !7)
!13 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 3, type: !10)
!14 = !DILocation(line: 3, column: 21, scope: !7)
!15 = !DILocation(line: 5, column: 2, scope: !7)
!16 = !DILocation(line: 5, column: 9, scope: !7)
!17 = !DILocation(line: 5, column: 11, scope: !7)
!18 = !DILocation(line: 6, column: 4, scope: !7)
!19 = distinct !{!19, !15, !18}
!20 = !DILocation(line: 8, column: 1, scope: !7)
!21 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !22, scopeLine: 11, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!22 = !DISubroutineType(types: !23)
!23 = !{!10}
!24 = !DILocalVariable(name: "a", scope: !21, file: !1, line: 12, type: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DILocation(line: 12, column: 7, scope: !21)
!27 = !DILocalVariable(name: "b", scope: !21, file: !1, line: 13, type: !25)
!28 = !DILocation(line: 13, column: 7, scope: !21)
!29 = !DILocation(line: 14, column: 2, scope: !21)
!30 = !DILocation(line: 15, column: 2, scope: !21)
!31 = !DILocation(line: 16, column: 7, scope: !21)
!32 = !DILocation(line: 16, column: 10, scope: !21)
!33 = !DILocation(line: 16, column: 2, scope: !21)
!34 = !DILocation(line: 17, column: 2, scope: !21)
