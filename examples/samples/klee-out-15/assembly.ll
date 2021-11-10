; ModuleID = '/home/klee/examples/samples/mix_loop.bc'
source_filename = "mix_loop.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calc_fac(i32* %a, i32 %L, i64 %n) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %L.addr = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %b = alloca i64, align 8
  %c = alloca i64, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  store i64 %n, i64* %n.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  store i32 1, i32* %arrayidx, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %L.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %a.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 0, i32* %arrayidx1, align 4
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end
  %6 = load i64, i64* %n.addr, align 8
  %tobool = icmp ne i64 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i64 0, i64* %c, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.body5, %while.body
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %l, align 4
  %cmp3 = icmp slt i32 %7, %8
  %9 = load i64, i64* %c, align 8
  %tobool4 = icmp ne i64 %9, 0
  %10 = select i1 %cmp3, i1 true, i1 %tobool4
  br i1 %10, label %for.body5, label %for.end14

for.body5:                                        ; preds = %for.cond2
  %11 = load i64, i64* %n.addr, align 8
  %12 = load i32*, i32** %a.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 %idxprom6
  %14 = load i32, i32* %arrayidx7, align 4
  %conv = zext i32 %14 to i64
  %mul = mul i64 %11, %conv
  %15 = load i64, i64* %c, align 8
  %add = add i64 %mul, %15
  store i64 %add, i64* %b, align 8
  %16 = load i64, i64* %b, align 8
  %div = udiv i64 %16, 100000000
  store i64 %div, i64* %c, align 8
  %17 = load i64, i64* %b, align 8
  %18 = load i64, i64* %c, align 8
  %mul8 = mul i64 %18, 100000000
  %sub = sub i64 %17, %mul8
  %conv9 = trunc i64 %sub to i32
  %19 = load i32*, i32** %a.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %19, i64 %idxprom10
  store i32 %conv9, i32* %arrayidx11, align 4
  %21 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %21, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond2

for.end14:                                        ; preds = %for.cond2
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %l, align 4
  %cmp15 = icmp sgt i32 %22, %23
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.end14
  %24 = load i32, i32* %i, align 4
  store i32 %24, i32* %l, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end14
  %25 = load i64, i64* %n.addr, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %n.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load i32, i32* %l, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_digits(i32 %n, i32 %c, i8* %r) #0 {
entry:
  %n.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %r.addr = alloca i8*, align 8
  %d = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i8* %r, i8** %r.addr, align 8
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.end3, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %1, 10
  %2 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %2, 1
  %3 = load i8*, i8** %r.addr, align 8
  call void @print_digits(i32 %div, i32 %sub, i8* %3)
  %4 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %4, 10
  store i32 %rem, i32* %d, align 4
  %5 = load i32, i32* @h, align 4
  %tobool = icmp ne i32 %5, 0
  %6 = load i32, i32* %d, align 4
  %tobool1 = icmp ne i32 %6, 0
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %7 = load i32, i32* %d, align 4
  %add = add nsw i32 48, %7
  %8 = load i8*, i8** %r.addr, align 8
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %r.addr, align 8
  store i32 1, i32* @h, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry, %if.then2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @under_test(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a = alloca i32*, align 8
  %m = alloca i32, align 4
  %L = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %L, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %for.end13, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  store i32 %1, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %2 = load i32, i32* %m, align 4
  %tobool = icmp ne i32 %2, 0
  %3 = load i32, i32* %L, align 4
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %L, align 4
  %4 = load i32, i32* %m, align 4
  %div = sdiv i32 %4, 10
  store i32 %div, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 %3, %5
  %div1 = sdiv i32 %mul, 6
  %add = add nsw i32 %div1, 1
  store i32 %add, i32* %L, align 4
  %6 = load i32, i32* %L, align 4
  %conv = sext i32 %6 to i64
  %mul2 = mul i64 %conv, 4
  %call = call i8* @malloc(i64 %mul2)
  %7 = bitcast i8* %call to i32*
  store i32* %7, i32** %a, align 8
  %8 = load i32*, i32** %a, align 8
  %tobool3 = icmp ne i32* %8, null
  br i1 %tobool3, label %if.end5, label %for.end13

if.end5:                                          ; preds = %for.end
  %9 = load i32*, i32** %a, align 8
  %10 = load i32, i32* %L, align 4
  %11 = load i32, i32* %n.addr, align 4
  %conv6 = sext i32 %11 to i64
  %call7 = call i32 @calc_fac(i32* %9, i32 %10, i64 %conv6)
  store i32 %call7, i32* %L, align 4
  %12 = load i32, i32* %L, align 4
  %sub = sub nsw i32 %12, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.body11, %if.end5
  %13 = load i32, i32* %i, align 4
  %cmp9 = icmp sge i32 %13, 0
  br i1 %cmp9, label %for.body11, label %for.end13

for.body11:                                       ; preds = %for.cond8
  %14 = load i32*, i32** %a, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds i32, i32* %14, i64 %idxprom
  %16 = load i32, i32* %arrayidx, align 4
  %17 = load i8*, i8** %s, align 8
  call void @print_digits(i32 %16, i32 6, i8* %17)
  %18 = load i32, i32* %i, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond8

for.end13:                                        ; preds = %for.end, %entry, %for.cond8
  ret void
}

declare dso_local i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %0 = bitcast i32* %n to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %1 = load i32, i32* %n, align 4
  %cmp = icmp sge i32 %1, -1
  %conv = zext i1 %cmp to i32
  %2 = load i32, i32* %n, align 4
  %cmp1 = icmp sle i32 %2, 14
  %conv2 = zext i1 %cmp1 to i32
  %and = and i32 %conv, %conv2
  %conv3 = sext i32 %and to i64
  call void @klee_assume(i64 %conv3)
  %3 = load i32, i32* %n, align 4
  call void @under_test(i32 %3)
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
