; ModuleID = '/home/klee/examples/new/free_test.bc'
source_filename = "free_test.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"aa\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bb\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"n2\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compare(i32* %n1, i32 %n2) #0 !dbg !10 {
entry:
  %retval = alloca i32, align 4
  %n1.addr = alloca i32*, align 8
  %n2.addr = alloca i32, align 4
  store i32* %n1, i32** %n1.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n1.addr, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 %n2, i32* %n2.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n2.addr, metadata !15, metadata !DIExpression()), !dbg !16
  %0 = load i32*, i32** %n1.addr, align 8, !dbg !17
  store i32 15, i32* %0, align 4, !dbg !18
  %1 = load i32*, i32** %n1.addr, align 8, !dbg !19
  %2 = load i32, i32* %1, align 4, !dbg !21
  %3 = load i32, i32* %n2.addr, align 4, !dbg !22
  %cmp = icmp eq i32 %2, %3, !dbg !23
  br i1 %cmp, label %if.then, label %if.else, !dbg !24

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !25
  store i32 1, i32* %retval, align 4, !dbg !27
  br label %return, !dbg !27

if.else:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !28
  store i32 2, i32* %retval, align 4, !dbg !30
  br label %return, !dbg !30

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !31
  ret i32 %4, !dbg !31
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !32 {
entry:
  %retval = alloca i32, align 4
  %n1 = alloca i32*, align 8
  %n2 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32** %n1, metadata !35, metadata !DIExpression()), !dbg !36
  %call = call noalias i8* @malloc(i64 4) #4, !dbg !37
  %0 = bitcast i8* %call to i32*, !dbg !38
  store i32* %0, i32** %n1, align 8, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %n2, metadata !39, metadata !DIExpression()), !dbg !40
  %1 = bitcast i32* %n2 to i8*, !dbg !41
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !42
  %2 = load i32*, i32** %n1, align 8, !dbg !43
  store i32 15, i32* %2, align 4, !dbg !44
  %3 = load i32*, i32** %n1, align 8, !dbg !45
  %4 = load i32, i32* %n2, align 4, !dbg !46
  %call1 = call i32 @compare(i32* %3, i32 %4), !dbg !47
  %5 = load i32*, i32** %n1, align 8, !dbg !48
  %6 = bitcast i32* %5 to i8*, !dbg !48
  call void @free(i8* %6) #4, !dbg !49
  ret i32 0, !dbg !50
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "free_test.c", directory: "/home/klee/examples/new")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!10 = distinct !DISubprogram(name: "compare", scope: !1, file: !1, line: 6, type: !11, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!5, !4, !5}
!13 = !DILocalVariable(name: "n1", arg: 1, scope: !10, file: !1, line: 6, type: !4)
!14 = !DILocation(line: 6, column: 19, scope: !10)
!15 = !DILocalVariable(name: "n2", arg: 2, scope: !10, file: !1, line: 6, type: !5)
!16 = !DILocation(line: 6, column: 27, scope: !10)
!17 = !DILocation(line: 9, column: 3, scope: !10)
!18 = !DILocation(line: 9, column: 6, scope: !10)
!19 = !DILocation(line: 10, column: 7, scope: !20)
!20 = distinct !DILexicalBlock(scope: !10, file: !1, line: 10, column: 6)
!21 = !DILocation(line: 10, column: 6, scope: !20)
!22 = !DILocation(line: 10, column: 13, scope: !20)
!23 = !DILocation(line: 10, column: 10, scope: !20)
!24 = !DILocation(line: 10, column: 6, scope: !10)
!25 = !DILocation(line: 12, column: 3, scope: !26)
!26 = distinct !DILexicalBlock(scope: !20, file: !1, line: 11, column: 2)
!27 = !DILocation(line: 13, column: 3, scope: !26)
!28 = !DILocation(line: 17, column: 3, scope: !29)
!29 = distinct !DILexicalBlock(scope: !20, file: !1, line: 16, column: 2)
!30 = !DILocation(line: 18, column: 3, scope: !29)
!31 = !DILocation(line: 20, column: 1, scope: !10)
!32 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 22, type: !33, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!33 = !DISubroutineType(types: !34)
!34 = !{!5}
!35 = !DILocalVariable(name: "n1", scope: !32, file: !1, line: 24, type: !4)
!36 = !DILocation(line: 24, column: 7, scope: !32)
!37 = !DILocation(line: 24, column: 19, scope: !32)
!38 = !DILocation(line: 24, column: 12, scope: !32)
!39 = !DILocalVariable(name: "n2", scope: !32, file: !1, line: 25, type: !5)
!40 = !DILocation(line: 25, column: 6, scope: !32)
!41 = !DILocation(line: 26, column: 21, scope: !32)
!42 = !DILocation(line: 26, column: 2, scope: !32)
!43 = !DILocation(line: 27, column: 3, scope: !32)
!44 = !DILocation(line: 27, column: 6, scope: !32)
!45 = !DILocation(line: 28, column: 10, scope: !32)
!46 = !DILocation(line: 28, column: 14, scope: !32)
!47 = !DILocation(line: 28, column: 2, scope: !32)
!48 = !DILocation(line: 31, column: 7, scope: !32)
!49 = !DILocation(line: 31, column: 2, scope: !32)
!50 = !DILocation(line: 33, column: 2, scope: !32)
