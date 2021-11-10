; ModuleID = '/home/klee/examples/new/free_test.bc'
source_filename = "free_test.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.str_n2 = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"aa\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bb\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"n2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare(i32* %n1, i32* %n2) #0 {
entry:
  %retval = alloca i32, align 4
  %n1.addr = alloca i32*, align 8
  %n2.addr = alloca i32*, align 8
  store i32* %n1, i32** %n1.addr, align 8
  store i32* %n2, i32** %n2.addr, align 8
  %0 = load i32*, i32** %n1.addr, align 8
  store i32 15, i32* %0, align 4
  %1 = load i32*, i32** %n1.addr, align 8
  %2 = load i32, i32* %1, align 4
  %3 = load i32*, i32** %n2.addr, align 8
  %4 = load i32, i32* %3, align 4
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n1 = alloca i32*, align 8
  %n2 = alloca %struct.str_n2, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias i8* @malloc(i64 4) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %n1, align 8
  %1 = bitcast %struct.str_n2* %n2 to i8*
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %2 = load i32*, i32** %n1, align 8
  store i32 15, i32* %2, align 4
  %3 = load i32*, i32** %n1, align 8
  %uiRet = getelementptr inbounds %struct.str_n2, %struct.str_n2* %n2, i32 0, i32 0
  %call1 = call i32 @compare(i32* %3, i32* %uiRet)
  %4 = load i32*, i32** %n1, align 8
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5) #3
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
