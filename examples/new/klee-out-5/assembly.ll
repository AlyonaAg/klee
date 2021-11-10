; ModuleID = '/home/klee/examples/new/if_my.bc'
source_filename = "if_my.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ifs(i32 %a, i32 %b) #0 !dbg !7 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !13, metadata !DIExpression()), !dbg !14
  %0 = load i32, i32* %a.addr, align 4, !dbg !15
  %1 = load i32, i32* %b.addr, align 4, !dbg !17
  %cmp = icmp eq i32 %0, %1, !dbg !18
  br i1 %cmp, label %if.then, label %if.else, !dbg !19

if.then:                                          ; preds = %entry
  store i32 1, i32* %a.addr, align 4, !dbg !20
  br label %if.end, !dbg !21

if.else:                                          ; preds = %entry
  store i32 2, i32* %a.addr, align 4, !dbg !22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !23
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !24 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i8, align 1
  %b = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i8* %a, metadata !27, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i8* %b, metadata !30, metadata !DIExpression()), !dbg !31
  call void @klee_make_symbolic(i8* %a, i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !32
  call void @klee_make_symbolic(i8* %b, i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !33
  %0 = load i8, i8* %a, align 1, !dbg !34
  %conv = sext i8 %0 to i32, !dbg !34
  %1 = load i8, i8* %b, align 1, !dbg !35
  %conv1 = sext i8 %1 to i32, !dbg !35
  call void @ifs(i32 %conv, i32 %conv1), !dbg !36
  ret i32 0, !dbg !37
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "if_my.c", directory: "/home/klee/examples/new")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!7 = distinct !DISubprogram(name: "ifs", scope: !1, file: !1, line: 4, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 14, scope: !7)
!13 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 4, type: !10)
!14 = !DILocation(line: 4, column: 21, scope: !7)
!15 = !DILocation(line: 6, column: 6, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 6)
!17 = !DILocation(line: 6, column: 11, scope: !16)
!18 = !DILocation(line: 6, column: 8, scope: !16)
!19 = !DILocation(line: 6, column: 6, scope: !7)
!20 = !DILocation(line: 7, column: 5, scope: !16)
!21 = !DILocation(line: 7, column: 3, scope: !16)
!22 = !DILocation(line: 9, column: 5, scope: !16)
!23 = !DILocation(line: 10, column: 1, scope: !7)
!24 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !25, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{!10}
!27 = !DILocalVariable(name: "a", scope: !24, file: !1, line: 14, type: !28)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !DILocation(line: 14, column: 7, scope: !24)
!30 = !DILocalVariable(name: "b", scope: !24, file: !1, line: 15, type: !28)
!31 = !DILocation(line: 15, column: 7, scope: !24)
!32 = !DILocation(line: 16, column: 2, scope: !24)
!33 = !DILocation(line: 17, column: 2, scope: !24)
!34 = !DILocation(line: 18, column: 6, scope: !24)
!35 = !DILocation(line: 18, column: 9, scope: !24)
!36 = !DILocation(line: 18, column: 2, scope: !24)
!37 = !DILocation(line: 19, column: 2, scope: !24)
