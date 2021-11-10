; ModuleID = '/home/klee/examples/samples/recursive_func_1.bc'
source_filename = "recursive_func_1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @random(i32 %i, i32 %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i32, i32* %j.addr, align 4
  %2 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %1, %2
  %shr = ashr i32 %sub, 1
  %add = add nsw i32 %0, %shr
  ret i32 %add
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @exchange(i32* %_x, i32* %_y) #0 {
entry:
  %_x.addr = alloca i32*, align 8
  %_y.addr = alloca i32*, align 8
  %z = alloca i32, align 4
  store i32* %_x, i32** %_x.addr, align 8
  store i32* %_y, i32** %_y.addr, align 8
  %0 = load i32*, i32** %_x.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %z, align 4
  %2 = load i32*, i32** %_y.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %_x.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %z, align 4
  %6 = load i32*, i32** %_y.addr, align 8
  store i32 %5, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @partition(i32* %a, i32 %m, i32 %n, i32* %_i, i32* %_j) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %_i.addr = alloca i32*, align 8
  %_j.addr = alloca i32*, align 8
  %x = alloca i32, align 4
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %_i, i32** %_i.addr, align 8
  store i32* %_j, i32** %_j.addr, align 8
  %0 = load i32, i32* %m.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %call = call i32 @random(i32 %0, i32 %1)
  store i32 %call, i32* %f, align 4
  %2 = load i32*, i32** %a.addr, align 8
  %3 = load i32, i32* %f, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %x, align 4
  %5 = load i32, i32* %m.addr, align 4
  store i32 %5, i32* %i, align 4
  %6 = load i32, i32* %n.addr, align 4
  store i32 %6, i32* %j, align 4
  br label %up

up:                                               ; preds = %if.then15, %entry
  %7 = load i32, i32* %i, align 4
  store i32 %7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %up
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %x, align 4
  %11 = load i32*, i32** %a.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %12 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %11, i64 %idxprom1
  %13 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp ult i32 %10, %13
  br i1 %cmp3, label %down, label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %n.addr, align 4
  store i32 %15, i32* %i, align 4
  br label %down

down:                                             ; preds = %for.body, %for.end
  %16 = load i32, i32* %j, align 4
  store i32 %16, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc12, %down
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %m.addr, align 4
  %cmp5 = icmp sge i32 %17, %18
  br i1 %cmp5, label %for.body6, label %for.end13

for.body6:                                        ; preds = %for.cond4
  %19 = load i32*, i32** %a.addr, align 8
  %20 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %20 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %19, i64 %idxprom7
  %21 = load i32, i32* %arrayidx8, align 4
  %22 = load i32, i32* %x, align 4
  %cmp9 = icmp ult i32 %21, %22
  br i1 %cmp9, label %change, label %for.inc12

for.inc12:                                        ; preds = %for.body6
  %23 = load i32, i32* %j, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond4

for.end13:                                        ; preds = %for.cond4
  %24 = load i32, i32* %m.addr, align 4
  store i32 %24, i32* %j, align 4
  br label %change

change:                                           ; preds = %for.body6, %for.end13
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %j, align 4
  %cmp14 = icmp slt i32 %25, %26
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %change
  %27 = load i32*, i32** %a.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %28 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %27, i64 %idxprom16
  %29 = load i32*, i32** %a.addr, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %30 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %29, i64 %idxprom18
  call void @exchange(i32* %arrayidx17, i32* %arrayidx19)
  %31 = load i32, i32* %i, align 4
  %add = add nsw i32 %31, 1
  store i32 %add, i32* %i, align 4
  %32 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %32, 1
  store i32 %sub, i32* %j, align 4
  br label %up

if.else:                                          ; preds = %change
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %f, align 4
  %cmp20 = icmp slt i32 %33, %34
  br i1 %cmp20, label %if.then21, label %if.else27

if.then21:                                        ; preds = %if.else
  %35 = load i32*, i32** %a.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %36 to i64
  %arrayidx23 = getelementptr inbounds i32, i32* %35, i64 %idxprom22
  %37 = load i32*, i32** %a.addr, align 8
  %38 = load i32, i32* %f, align 4
  %idxprom24 = sext i32 %38 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %37, i64 %idxprom24
  call void @exchange(i32* %arrayidx23, i32* %arrayidx25)
  %39 = load i32, i32* %i, align 4
  %add26 = add nsw i32 %39, 1
  store i32 %add26, i32* %i, align 4
  br label %if.end37

if.else27:                                        ; preds = %if.else
  %40 = load i32, i32* %f, align 4
  %41 = load i32, i32* %j, align 4
  %cmp28 = icmp slt i32 %40, %41
  br i1 %cmp28, label %if.then29, label %if.end37

if.then29:                                        ; preds = %if.else27
  %42 = load i32*, i32** %a.addr, align 8
  %43 = load i32, i32* %f, align 4
  %idxprom30 = sext i32 %43 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %42, i64 %idxprom30
  %44 = load i32*, i32** %a.addr, align 8
  %45 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %45 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %44, i64 %idxprom32
  call void @exchange(i32* %arrayidx31, i32* %arrayidx33)
  %46 = load i32, i32* %j, align 4
  %sub34 = sub nsw i32 %46, 1
  store i32 %sub34, i32* %j, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then21, %if.then29, %if.else27
  %47 = load i32, i32* %i, align 4
  %48 = load i32*, i32** %_i.addr, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %j, align 4
  %50 = load i32*, i32** %_j.addr, align 8
  store i32 %49, i32* %50, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @quicksort(i32* %a, i32 %m, i32 %n) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %a.addr, align 8
  %3 = load i32, i32* %m.addr, align 4
  %4 = load i32, i32* %n.addr, align 4
  call void @partition(i32* %2, i32 %3, i32 %4, i32* %i, i32* %j)
  %5 = load i32*, i32** %a.addr, align 8
  %6 = load i32, i32* %m.addr, align 4
  %7 = load i32, i32* %j, align 4
  call void @quicksort(i32* %5, i32 %6, i32 %7)
  %8 = load i32*, i32** %a.addr, align 8
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n.addr, align 4
  call void @quicksort(i32* %8, i32 %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 0
  %0 = bitcast i32* %arraydecay to i8*
  call void @klee_make_symbolic(i8* %0, i64 400, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %1 = bitcast i32* %m to i8*
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %2 = bitcast i32* %n to i8*
  call void @klee_make_symbolic(i8* %2, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %3 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %3, 50
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  call void @klee_assume(i64 %conv1)
  %4 = load i32, i32* %n, align 4
  %cmp2 = icmp slt i32 %4, 100
  %conv3 = zext i1 %cmp2 to i32
  %5 = load i32, i32* %n, align 4
  %6 = load i32, i32* %m, align 4
  %cmp4 = icmp sgt i32 %5, %6
  %conv5 = zext i1 %cmp4 to i32
  %and = and i32 %conv3, %conv5
  %conv6 = sext i32 %and to i64
  call void @klee_assume(i64 %conv6)
  %arraydecay7 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 0
  %7 = load i32, i32* %m, align 4
  %8 = load i32, i32* %n, align 4
  call void @quicksort(i32* %arraydecay7, i32 %7, i32 %8)
  ret i32 0
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #1

declare dso_local void @klee_assume(i64) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
