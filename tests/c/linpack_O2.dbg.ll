; ModuleID = 'tests/c/linpack.c'
source_filename = "tests/c/linpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.6 = private unnamed_addr constant [37 x i8] c"  Matrix order N               = %d\0A\00", align 1, !dbg !0
@.str.7 = private unnamed_addr constant [37 x i8] c"  Leading matrix dimension LDA = %d\0A\00", align 1, !dbg !7
@.str.12 = private unnamed_addr constant [5 x i8] c"%14f\00", align 1, !dbg !9
@.str.13 = private unnamed_addr constant [7 x i8] c"  %14f\00", align 1, !dbg !14
@.str.14 = private unnamed_addr constant [9 x i8] c"  %14e  \00", align 1, !dbg !19
@.str.15 = private unnamed_addr constant [7 x i8] c"%14f  \00", align 1, !dbg !24
@.str.16 = private unnamed_addr constant [6 x i8] c"%14f\0A\00", align 1, !dbg !26
@.str.18 = private unnamed_addr constant [6 x i8] c"  %9f\00", align 1, !dbg !31
@.str.19 = private unnamed_addr constant [8 x i8] c"  %9f  \00", align 1, !dbg !33
@.str.20 = private unnamed_addr constant [6 x i8] c"%9f  \00", align 1, !dbg !38
@.str.21 = private unnamed_addr constant [5 x i8] c"%9f\0A\00", align 1, !dbg !40
@str.23 = private unnamed_addr constant [12 x i8] c"  C version\00", align 1
@str.24 = private unnamed_addr constant [25 x i8] c"  The LINPACK benchmark.\00", align 1
@str.25 = private unnamed_addr constant [14 x i8] c"  Language: C\00", align 1
@str.26 = private unnamed_addr constant [34 x i8] c"  Datatype: Double precision real\00", align 1
@str.27 = private unnamed_addr constant [72 x i8] c"     Norm. Resid      Resid           MACHEP         X[1]          X[N]\00", align 1
@str.28 = private unnamed_addr constant [72 x i8] c"      Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio\00", align 1
@str.29 = private unnamed_addr constant [14 x i8] c"LINPACK_BENCH\00", align 1
@str.30 = private unnamed_addr constant [27 x i8] c"  Normal end of execution.\00", align 1
@str.31 = private unnamed_addr constant [29 x i8] c"LINPACK_BENCH - Fatal error!\00", align 1
@str.32 = private unnamed_addr constant [39 x i8] c"  The matrix A is apparently singular.\00", align 1
@str.33 = private unnamed_addr constant [29 x i8] c"  Abnormal end of execution.\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 !dbg !111 {
  tail call void @llvm.dbg.value(metadata double 5.600000e-02, metadata !119, metadata !DIExpression()), !dbg !137
  %1 = tail call i32 @putchar(i32 10), !dbg !138
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29), !dbg !139
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23), !dbg !140
  %4 = tail call i32 @putchar(i32 10), !dbg !141
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24), !dbg !142
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25), !dbg !143
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26), !dbg !144
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 200), !dbg !145
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 201), !dbg !146
  tail call void @llvm.dbg.value(metadata double 0x4154A67555555555, metadata !126, metadata !DIExpression()), !dbg !137
  %10 = tail call ptr @r8mat_gen(i32 noundef 201, i32 noundef 200), !dbg !147
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !115, metadata !DIExpression()), !dbg !137
  %11 = tail call noalias dereferenceable_or_null(1600) ptr @malloc(i64 noundef 1600) #15, !dbg !148
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !117, metadata !DIExpression()), !dbg !137
  %12 = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #15, !dbg !149
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !123, metadata !DIExpression()), !dbg !137
  %13 = tail call noalias dereferenceable_or_null(1600) ptr @malloc(i64 noundef 1600) #15, !dbg !150
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !127, metadata !DIExpression()), !dbg !137
  %14 = tail call noalias dereferenceable_or_null(1600) ptr @malloc(i64 noundef 1600) #15, !dbg !151
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !130, metadata !DIExpression()), !dbg !137
  %15 = tail call noalias dereferenceable_or_null(1600) ptr @malloc(i64 noundef 1600) #15, !dbg !152
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !136, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !116, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 0, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 0, metadata !121, metadata !DIExpression()), !dbg !137
  br label %16, !dbg !153

16:                                               ; preds = %0, %63
  %17 = phi i64 [ 0, %0 ], [ %64, %63 ]
  %18 = phi double [ 0.000000e+00, %0 ], [ %60, %63 ]
  tail call void @llvm.dbg.value(metadata double %18, metadata !116, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !124, metadata !DIExpression()), !dbg !137
  %19 = mul nuw nsw i64 %17, 201
  tail call void @llvm.dbg.value(metadata i32 0, metadata !121, metadata !DIExpression()), !dbg !137
  %20 = getelementptr double, ptr %10, i64 %19, !dbg !155
  br label %39, !dbg !155

21:                                               ; preds = %63, %21
  %22 = phi i64 [ %37, %21 ], [ 0, %63 ], !dbg !159
  %23 = getelementptr inbounds double, ptr %15, i64 %22, !dbg !162
  %24 = getelementptr inbounds double, ptr %23, i64 2, !dbg !164
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %23, align 8, !dbg !164, !tbaa !165
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %24, align 8, !dbg !164, !tbaa !165
  %25 = getelementptr double, ptr %15, i64 %22, !dbg !162
  %26 = getelementptr double, ptr %25, i64 4, !dbg !162
  %27 = getelementptr double, ptr %25, i64 6, !dbg !164
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %26, align 8, !dbg !164, !tbaa !165
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %27, align 8, !dbg !164, !tbaa !165
  %28 = getelementptr double, ptr %15, i64 %22, !dbg !162
  %29 = getelementptr double, ptr %28, i64 8, !dbg !162
  %30 = getelementptr double, ptr %28, i64 10, !dbg !164
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %29, align 8, !dbg !164, !tbaa !165
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %30, align 8, !dbg !164, !tbaa !165
  %31 = getelementptr double, ptr %15, i64 %22, !dbg !162
  %32 = getelementptr double, ptr %31, i64 12, !dbg !162
  %33 = getelementptr double, ptr %31, i64 14, !dbg !164
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %32, align 8, !dbg !164, !tbaa !165
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %33, align 8, !dbg !164, !tbaa !165
  %34 = getelementptr double, ptr %15, i64 %22, !dbg !162
  %35 = getelementptr double, ptr %34, i64 16, !dbg !162
  %36 = getelementptr double, ptr %34, i64 18, !dbg !164
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %35, align 8, !dbg !164, !tbaa !165
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %36, align 8, !dbg !164, !tbaa !165
  %37 = add nuw nsw i64 %22, 20, !dbg !159
  %38 = icmp eq i64 %37, 200, !dbg !159
  br i1 %38, label %66, label %21, !dbg !159, !llvm.loop !169

39:                                               ; preds = %39, %16
  %40 = phi i64 [ 0, %16 ], [ %61, %39 ]
  %41 = phi double [ %18, %16 ], [ %60, %39 ]
  tail call void @llvm.dbg.value(metadata double %41, metadata !116, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !121, metadata !DIExpression()), !dbg !137
  %42 = getelementptr double, ptr %20, i64 %40, !dbg !175
  %43 = load double, ptr %42, align 8, !dbg !175, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %41, metadata !178, metadata !DIExpression()), !dbg !185
  tail call void @llvm.dbg.value(metadata double %43, metadata !183, metadata !DIExpression()), !dbg !185
  %44 = fcmp olt double %43, %41, !dbg !187
  %45 = select i1 %44, double %41, double %43
  tail call void @llvm.dbg.value(metadata double %45, metadata !184, metadata !DIExpression()), !dbg !185
  tail call void @llvm.dbg.value(metadata double %45, metadata !116, metadata !DIExpression()), !dbg !137
  %46 = or disjoint i64 %40, 1, !dbg !189
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !121, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %45, metadata !116, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !121, metadata !DIExpression()), !dbg !137
  %47 = getelementptr double, ptr %20, i64 %46, !dbg !175
  %48 = load double, ptr %47, align 8, !dbg !175, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %45, metadata !178, metadata !DIExpression()), !dbg !185
  tail call void @llvm.dbg.value(metadata double %48, metadata !183, metadata !DIExpression()), !dbg !185
  %49 = fcmp olt double %48, %45, !dbg !187
  %50 = select i1 %49, double %45, double %48
  tail call void @llvm.dbg.value(metadata double %50, metadata !184, metadata !DIExpression()), !dbg !185
  tail call void @llvm.dbg.value(metadata double %50, metadata !116, metadata !DIExpression()), !dbg !137
  %51 = or disjoint i64 %40, 2, !dbg !189
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !121, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %50, metadata !116, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !121, metadata !DIExpression()), !dbg !137
  %52 = getelementptr double, ptr %20, i64 %51, !dbg !175
  %53 = load double, ptr %52, align 8, !dbg !175, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %50, metadata !178, metadata !DIExpression()), !dbg !185
  tail call void @llvm.dbg.value(metadata double %53, metadata !183, metadata !DIExpression()), !dbg !185
  %54 = fcmp olt double %53, %50, !dbg !187
  %55 = select i1 %54, double %50, double %53
  tail call void @llvm.dbg.value(metadata double %55, metadata !184, metadata !DIExpression()), !dbg !185
  tail call void @llvm.dbg.value(metadata double %55, metadata !116, metadata !DIExpression()), !dbg !137
  %56 = or disjoint i64 %40, 3, !dbg !189
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !121, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %55, metadata !116, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !121, metadata !DIExpression()), !dbg !137
  %57 = getelementptr double, ptr %20, i64 %56, !dbg !175
  %58 = load double, ptr %57, align 8, !dbg !175, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %55, metadata !178, metadata !DIExpression()), !dbg !185
  tail call void @llvm.dbg.value(metadata double %58, metadata !183, metadata !DIExpression()), !dbg !185
  %59 = fcmp olt double %58, %55, !dbg !187
  %60 = select i1 %59, double %55, double %58
  tail call void @llvm.dbg.value(metadata double %60, metadata !184, metadata !DIExpression()), !dbg !185
  tail call void @llvm.dbg.value(metadata double %60, metadata !116, metadata !DIExpression()), !dbg !137
  %61 = add nuw nsw i64 %40, 4, !dbg !189
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !121, metadata !DIExpression()), !dbg !137
  %62 = icmp eq i64 %61, 200, !dbg !190
  br i1 %62, label %63, label %39, !dbg !155, !llvm.loop !191

63:                                               ; preds = %39
  %64 = add nuw nsw i64 %17, 1, !dbg !193
  tail call void @llvm.dbg.value(metadata double %60, metadata !116, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %64, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 0, metadata !121, metadata !DIExpression()), !dbg !137
  %65 = icmp eq i64 %64, 200, !dbg !194
  br i1 %65, label %21, label %16, !dbg !153, !llvm.loop !195

66:                                               ; preds = %21, %102
  %67 = phi i64 [ %103, %102 ], [ 0, %21 ]
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !121, metadata !DIExpression()), !dbg !137
  %68 = getelementptr inbounds double, ptr %11, i64 %67, !dbg !197
  tail call void @llvm.dbg.value(metadata i32 0, metadata !124, metadata !DIExpression()), !dbg !137
  %69 = getelementptr double, ptr %10, i64 %67, !dbg !201
  br label %70, !dbg !201

70:                                               ; preds = %70, %66
  %71 = phi i64 [ 0, %66 ], [ %100, %70 ]
  %72 = phi double [ 0.000000e+00, %66 ], [ %99, %70 ]
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !124, metadata !DIExpression()), !dbg !137
  %73 = mul nuw nsw i64 %71, 201, !dbg !203
  %74 = getelementptr double, ptr %69, i64 %73, !dbg !206
  %75 = load double, ptr %74, align 8, !dbg !206, !tbaa !165
  %76 = getelementptr inbounds double, ptr %15, i64 %71, !dbg !207
  %77 = load double, ptr %76, align 8, !dbg !207, !tbaa !165
  %78 = tail call double @llvm.fmuladd.f64(double %75, double %77, double %72), !dbg !208
  %79 = or disjoint i64 %71, 1, !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !124, metadata !DIExpression()), !dbg !137
  %80 = mul nuw nsw i64 %79, 201, !dbg !203
  %81 = getelementptr double, ptr %69, i64 %80, !dbg !206
  %82 = load double, ptr %81, align 8, !dbg !206, !tbaa !165
  %83 = getelementptr inbounds double, ptr %15, i64 %79, !dbg !207
  %84 = load double, ptr %83, align 8, !dbg !207, !tbaa !165
  %85 = tail call double @llvm.fmuladd.f64(double %82, double %84, double %78), !dbg !208
  %86 = or disjoint i64 %71, 2, !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !124, metadata !DIExpression()), !dbg !137
  %87 = mul nuw nsw i64 %86, 201, !dbg !203
  %88 = getelementptr double, ptr %69, i64 %87, !dbg !206
  %89 = load double, ptr %88, align 8, !dbg !206, !tbaa !165
  %90 = getelementptr inbounds double, ptr %15, i64 %86, !dbg !207
  %91 = load double, ptr %90, align 8, !dbg !207, !tbaa !165
  %92 = tail call double @llvm.fmuladd.f64(double %89, double %91, double %85), !dbg !208
  %93 = or disjoint i64 %71, 3, !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %93, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %93, metadata !124, metadata !DIExpression()), !dbg !137
  %94 = mul nuw nsw i64 %93, 201, !dbg !203
  %95 = getelementptr double, ptr %69, i64 %94, !dbg !206
  %96 = load double, ptr %95, align 8, !dbg !206, !tbaa !165
  %97 = getelementptr inbounds double, ptr %15, i64 %93, !dbg !207
  %98 = load double, ptr %97, align 8, !dbg !207, !tbaa !165
  %99 = tail call double @llvm.fmuladd.f64(double %96, double %98, double %92), !dbg !208
  %100 = add nuw nsw i64 %71, 4, !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !124, metadata !DIExpression()), !dbg !137
  %101 = icmp eq i64 %100, 200, !dbg !210
  br i1 %101, label %102, label %70, !dbg !201, !llvm.loop !211

102:                                              ; preds = %70
  store double %99, ptr %68, align 8, !dbg !213, !tbaa !165
  %103 = add nuw nsw i64 %67, 1, !dbg !214
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !121, metadata !DIExpression()), !dbg !137
  %104 = icmp eq i64 %103, 200, !dbg !215
  br i1 %104, label %105, label %66, !dbg !216, !llvm.loop !217

105:                                              ; preds = %102
  %106 = tail call i64 @clock() #16, !dbg !219
  call void @llvm.dbg.value(metadata double poison, metadata !224, metadata !DIExpression()), !dbg !226
  tail call void @llvm.dbg.value(metadata double poison, metadata !131, metadata !DIExpression()), !dbg !137
  %107 = tail call i32 @dgefa(ptr noundef nonnull %10, i32 noundef 201, i32 noundef 200, ptr noundef %12), !dbg !227
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !122, metadata !DIExpression()), !dbg !137
  %108 = icmp eq i32 %107, 0, !dbg !228
  br i1 %108, label %114, label %109, !dbg !230

109:                                              ; preds = %105
  %110 = tail call i32 @putchar(i32 10), !dbg !231
  %111 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31), !dbg !233
  %112 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32), !dbg !234
  %113 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.33), !dbg !235
  tail call void @exit(i32 noundef 1) #17, !dbg !236
  unreachable, !dbg !236

114:                                              ; preds = %105
  call void @llvm.dbg.value(metadata double poison, metadata !224, metadata !DIExpression()), !dbg !226
  tail call void @llvm.dbg.value(metadata double poison, metadata !131, metadata !DIExpression()), !dbg !137
  %115 = tail call i64 @clock() #16, !dbg !237
  call void @llvm.dbg.value(metadata double poison, metadata !224, metadata !DIExpression()), !dbg !239
  tail call void @llvm.dbg.value(metadata double poison, metadata !132, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double poison, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !137
  %116 = tail call i64 @clock() #16, !dbg !240
  call void @llvm.dbg.value(metadata double poison, metadata !224, metadata !DIExpression()), !dbg !242
  tail call void @llvm.dbg.value(metadata i32 0, metadata !125, metadata !DIExpression()), !dbg !137
  tail call void @dgesl(ptr noundef nonnull %10, i32 noundef 201, i32 noundef 200, ptr noundef %12, ptr noundef nonnull %11, i32 noundef 0), !dbg !243
  %117 = tail call i64 @clock() #16, !dbg !244
  call void @llvm.dbg.value(metadata double poison, metadata !224, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata double poison, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !137
  tail call void @llvm.dbg.value(metadata double poison, metadata !135, metadata !DIExpression()), !dbg !137
  tail call void @free(ptr noundef nonnull %10) #16, !dbg !247
  %118 = tail call ptr @r8mat_gen(i32 noundef 201, i32 noundef 200), !dbg !248
  tail call void @llvm.dbg.value(metadata ptr %118, metadata !115, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 0, metadata !121, metadata !DIExpression()), !dbg !137
  br label %119, !dbg !249

119:                                              ; preds = %119, %114
  %120 = phi i64 [ 0, %114 ], [ %135, %119 ], !dbg !251
  %121 = getelementptr inbounds double, ptr %15, i64 %120, !dbg !253
  %122 = getelementptr inbounds double, ptr %121, i64 2, !dbg !255
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %121, align 8, !dbg !255, !tbaa !165
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %122, align 8, !dbg !255, !tbaa !165
  %123 = getelementptr double, ptr %15, i64 %120, !dbg !253
  %124 = getelementptr double, ptr %123, i64 4, !dbg !253
  %125 = getelementptr double, ptr %123, i64 6, !dbg !255
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %124, align 8, !dbg !255, !tbaa !165
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %125, align 8, !dbg !255, !tbaa !165
  %126 = getelementptr double, ptr %15, i64 %120, !dbg !253
  %127 = getelementptr double, ptr %126, i64 8, !dbg !253
  %128 = getelementptr double, ptr %126, i64 10, !dbg !255
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %127, align 8, !dbg !255, !tbaa !165
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %128, align 8, !dbg !255, !tbaa !165
  %129 = getelementptr double, ptr %15, i64 %120, !dbg !253
  %130 = getelementptr double, ptr %129, i64 12, !dbg !253
  %131 = getelementptr double, ptr %129, i64 14, !dbg !255
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %130, align 8, !dbg !255, !tbaa !165
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %131, align 8, !dbg !255, !tbaa !165
  %132 = getelementptr double, ptr %15, i64 %120, !dbg !253
  %133 = getelementptr double, ptr %132, i64 16, !dbg !253
  %134 = getelementptr double, ptr %132, i64 18, !dbg !255
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %133, align 8, !dbg !255, !tbaa !165
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %134, align 8, !dbg !255, !tbaa !165
  %135 = add nuw nsw i64 %120, 20, !dbg !251
  %136 = icmp eq i64 %135, 200, !dbg !251
  br i1 %136, label %137, label %119, !dbg !251, !llvm.loop !256

137:                                              ; preds = %119, %173
  %138 = phi i64 [ %174, %173 ], [ 0, %119 ]
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !121, metadata !DIExpression()), !dbg !137
  %139 = getelementptr inbounds double, ptr %14, i64 %138, !dbg !258
  tail call void @llvm.dbg.value(metadata i32 0, metadata !124, metadata !DIExpression()), !dbg !137
  %140 = getelementptr double, ptr %118, i64 %138, !dbg !262
  br label %141, !dbg !262

141:                                              ; preds = %141, %137
  %142 = phi i64 [ 0, %137 ], [ %171, %141 ]
  %143 = phi double [ 0.000000e+00, %137 ], [ %170, %141 ]
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !124, metadata !DIExpression()), !dbg !137
  %144 = mul nuw nsw i64 %142, 201, !dbg !264
  %145 = getelementptr double, ptr %140, i64 %144, !dbg !267
  %146 = load double, ptr %145, align 8, !dbg !267, !tbaa !165
  %147 = getelementptr inbounds double, ptr %15, i64 %142, !dbg !268
  %148 = load double, ptr %147, align 8, !dbg !268, !tbaa !165
  %149 = tail call double @llvm.fmuladd.f64(double %146, double %148, double %143), !dbg !269
  %150 = or disjoint i64 %142, 1, !dbg !270
  tail call void @llvm.dbg.value(metadata i64 %150, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %150, metadata !124, metadata !DIExpression()), !dbg !137
  %151 = mul nuw nsw i64 %150, 201, !dbg !264
  %152 = getelementptr double, ptr %140, i64 %151, !dbg !267
  %153 = load double, ptr %152, align 8, !dbg !267, !tbaa !165
  %154 = getelementptr inbounds double, ptr %15, i64 %150, !dbg !268
  %155 = load double, ptr %154, align 8, !dbg !268, !tbaa !165
  %156 = tail call double @llvm.fmuladd.f64(double %153, double %155, double %149), !dbg !269
  %157 = or disjoint i64 %142, 2, !dbg !270
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !124, metadata !DIExpression()), !dbg !137
  %158 = mul nuw nsw i64 %157, 201, !dbg !264
  %159 = getelementptr double, ptr %140, i64 %158, !dbg !267
  %160 = load double, ptr %159, align 8, !dbg !267, !tbaa !165
  %161 = getelementptr inbounds double, ptr %15, i64 %157, !dbg !268
  %162 = load double, ptr %161, align 8, !dbg !268, !tbaa !165
  %163 = tail call double @llvm.fmuladd.f64(double %160, double %162, double %156), !dbg !269
  %164 = or disjoint i64 %142, 3, !dbg !270
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !124, metadata !DIExpression()), !dbg !137
  %165 = mul nuw nsw i64 %164, 201, !dbg !264
  %166 = getelementptr double, ptr %140, i64 %165, !dbg !267
  %167 = load double, ptr %166, align 8, !dbg !267, !tbaa !165
  %168 = getelementptr inbounds double, ptr %15, i64 %164, !dbg !268
  %169 = load double, ptr %168, align 8, !dbg !268, !tbaa !165
  %170 = tail call double @llvm.fmuladd.f64(double %167, double %169, double %163), !dbg !269
  %171 = add nuw nsw i64 %142, 4, !dbg !270
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !124, metadata !DIExpression()), !dbg !137
  %172 = icmp eq i64 %171, 200, !dbg !271
  br i1 %172, label %173, label %141, !dbg !262, !llvm.loop !272

173:                                              ; preds = %141
  store double %170, ptr %139, align 8, !dbg !274, !tbaa !165
  %174 = add nuw nsw i64 %138, 1, !dbg !275
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !121, metadata !DIExpression()), !dbg !137
  %175 = icmp eq i64 %174, 200, !dbg !276
  br i1 %175, label %176, label %137, !dbg !277, !llvm.loop !278

176:                                              ; preds = %173, %215
  %177 = phi i64 [ %216, %215 ], [ 0, %173 ]
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !121, metadata !DIExpression()), !dbg !137
  %178 = getelementptr inbounds double, ptr %14, i64 %177, !dbg !280
  %179 = load double, ptr %178, align 8, !dbg !280, !tbaa !165
  %180 = fneg double %179, !dbg !284
  %181 = getelementptr inbounds double, ptr %13, i64 %177, !dbg !285
  tail call void @llvm.dbg.value(metadata i32 0, metadata !124, metadata !DIExpression()), !dbg !137
  %182 = getelementptr double, ptr %118, i64 %177, !dbg !286
  br label %183, !dbg !286

183:                                              ; preds = %183, %176
  %184 = phi i64 [ 0, %176 ], [ %213, %183 ]
  %185 = phi double [ %180, %176 ], [ %212, %183 ]
  tail call void @llvm.dbg.value(metadata i64 %184, metadata !124, metadata !DIExpression()), !dbg !137
  %186 = mul nuw nsw i64 %184, 201, !dbg !288
  %187 = getelementptr double, ptr %182, i64 %186, !dbg !291
  %188 = load double, ptr %187, align 8, !dbg !291, !tbaa !165
  %189 = getelementptr inbounds double, ptr %11, i64 %184, !dbg !292
  %190 = load double, ptr %189, align 8, !dbg !292, !tbaa !165
  %191 = tail call double @llvm.fmuladd.f64(double %188, double %190, double %185), !dbg !293
  %192 = or disjoint i64 %184, 1, !dbg !294
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !124, metadata !DIExpression()), !dbg !137
  %193 = mul nuw nsw i64 %192, 201, !dbg !288
  %194 = getelementptr double, ptr %182, i64 %193, !dbg !291
  %195 = load double, ptr %194, align 8, !dbg !291, !tbaa !165
  %196 = getelementptr inbounds double, ptr %11, i64 %192, !dbg !292
  %197 = load double, ptr %196, align 8, !dbg !292, !tbaa !165
  %198 = tail call double @llvm.fmuladd.f64(double %195, double %197, double %191), !dbg !293
  %199 = or disjoint i64 %184, 2, !dbg !294
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !124, metadata !DIExpression()), !dbg !137
  %200 = mul nuw nsw i64 %199, 201, !dbg !288
  %201 = getelementptr double, ptr %182, i64 %200, !dbg !291
  %202 = load double, ptr %201, align 8, !dbg !291, !tbaa !165
  %203 = getelementptr inbounds double, ptr %11, i64 %199, !dbg !292
  %204 = load double, ptr %203, align 8, !dbg !292, !tbaa !165
  %205 = tail call double @llvm.fmuladd.f64(double %202, double %204, double %198), !dbg !293
  %206 = or disjoint i64 %184, 3, !dbg !294
  tail call void @llvm.dbg.value(metadata i64 %206, metadata !124, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %206, metadata !124, metadata !DIExpression()), !dbg !137
  %207 = mul nuw nsw i64 %206, 201, !dbg !288
  %208 = getelementptr double, ptr %182, i64 %207, !dbg !291
  %209 = load double, ptr %208, align 8, !dbg !291, !tbaa !165
  %210 = getelementptr inbounds double, ptr %11, i64 %206, !dbg !292
  %211 = load double, ptr %210, align 8, !dbg !292, !tbaa !165
  %212 = tail call double @llvm.fmuladd.f64(double %209, double %211, double %205), !dbg !293
  %213 = add nuw nsw i64 %184, 4, !dbg !294
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !124, metadata !DIExpression()), !dbg !137
  %214 = icmp eq i64 %213, 200, !dbg !295
  br i1 %214, label %215, label %183, !dbg !286, !llvm.loop !296

215:                                              ; preds = %183
  store double %212, ptr %181, align 8, !dbg !298, !tbaa !165
  %216 = add nuw nsw i64 %177, 1, !dbg !299
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !121, metadata !DIExpression()), !dbg !137
  %217 = icmp eq i64 %216, 200, !dbg !300
  br i1 %217, label %218, label %176, !dbg !301, !llvm.loop !302

218:                                              ; preds = %215, %218
  %219 = phi i64 [ %236, %218 ], [ 0, %215 ]
  %220 = phi double [ %235, %218 ], [ 0.000000e+00, %215 ]
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !121, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %220, metadata !128, metadata !DIExpression()), !dbg !137
  %221 = getelementptr inbounds double, ptr %13, i64 %219, !dbg !304
  %222 = load double, ptr %221, align 8, !dbg !304, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %222, metadata !308, metadata !DIExpression()), !dbg !314
  %223 = fcmp ult double %222, 0.000000e+00, !dbg !316
  %224 = fneg double %222, !dbg !318
  %225 = select i1 %223, double %224, double %222, !dbg !318
  tail call void @llvm.dbg.value(metadata double %225, metadata !313, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata double %220, metadata !178, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata double %225, metadata !183, metadata !DIExpression()), !dbg !319
  %226 = fcmp olt double %225, %220, !dbg !321
  %227 = select i1 %226, double %220, double %225
  tail call void @llvm.dbg.value(metadata double %227, metadata !184, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata double %227, metadata !128, metadata !DIExpression()), !dbg !137
  %228 = or disjoint i64 %219, 1, !dbg !322
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !121, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !121, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %227, metadata !128, metadata !DIExpression()), !dbg !137
  %229 = getelementptr inbounds double, ptr %13, i64 %228, !dbg !304
  %230 = load double, ptr %229, align 8, !dbg !304, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %230, metadata !308, metadata !DIExpression()), !dbg !314
  %231 = fcmp ult double %230, 0.000000e+00, !dbg !316
  %232 = fneg double %230, !dbg !318
  %233 = select i1 %231, double %232, double %230, !dbg !318
  tail call void @llvm.dbg.value(metadata double %233, metadata !313, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata double %227, metadata !178, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata double %233, metadata !183, metadata !DIExpression()), !dbg !319
  %234 = fcmp olt double %233, %227, !dbg !321
  %235 = select i1 %234, double %227, double %233
  tail call void @llvm.dbg.value(metadata double %235, metadata !184, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata double %235, metadata !128, metadata !DIExpression()), !dbg !137
  %236 = add nuw nsw i64 %219, 2, !dbg !322
  tail call void @llvm.dbg.value(metadata i64 %236, metadata !121, metadata !DIExpression()), !dbg !137
  %237 = icmp eq i64 %236, 200, !dbg !323
  br i1 %237, label %238, label %218, !dbg !324, !llvm.loop !325

238:                                              ; preds = %218, %238
  %239 = phi i64 [ %256, %238 ], [ 0, %218 ]
  %240 = phi double [ %255, %238 ], [ 0.000000e+00, %218 ]
  tail call void @llvm.dbg.value(metadata double %240, metadata !118, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %239, metadata !121, metadata !DIExpression()), !dbg !137
  %241 = getelementptr inbounds double, ptr %11, i64 %239, !dbg !327
  %242 = load double, ptr %241, align 8, !dbg !327, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %242, metadata !308, metadata !DIExpression()), !dbg !331
  %243 = fcmp ult double %242, 0.000000e+00, !dbg !333
  %244 = fneg double %242, !dbg !334
  %245 = select i1 %243, double %244, double %242, !dbg !334
  tail call void @llvm.dbg.value(metadata double %245, metadata !313, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata double %240, metadata !178, metadata !DIExpression()), !dbg !335
  tail call void @llvm.dbg.value(metadata double %245, metadata !183, metadata !DIExpression()), !dbg !335
  %246 = fcmp olt double %245, %240, !dbg !337
  %247 = select i1 %246, double %240, double %245
  tail call void @llvm.dbg.value(metadata double %247, metadata !184, metadata !DIExpression()), !dbg !335
  tail call void @llvm.dbg.value(metadata double %247, metadata !118, metadata !DIExpression()), !dbg !137
  %248 = or disjoint i64 %239, 1, !dbg !338
  tail call void @llvm.dbg.value(metadata i64 %248, metadata !121, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %247, metadata !118, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %248, metadata !121, metadata !DIExpression()), !dbg !137
  %249 = getelementptr inbounds double, ptr %11, i64 %248, !dbg !327
  %250 = load double, ptr %249, align 8, !dbg !327, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %250, metadata !308, metadata !DIExpression()), !dbg !331
  %251 = fcmp ult double %250, 0.000000e+00, !dbg !333
  %252 = fneg double %250, !dbg !334
  %253 = select i1 %251, double %252, double %250, !dbg !334
  tail call void @llvm.dbg.value(metadata double %253, metadata !313, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata double %247, metadata !178, metadata !DIExpression()), !dbg !335
  tail call void @llvm.dbg.value(metadata double %253, metadata !183, metadata !DIExpression()), !dbg !335
  %254 = fcmp olt double %253, %247, !dbg !337
  %255 = select i1 %254, double %247, double %253
  tail call void @llvm.dbg.value(metadata double %255, metadata !184, metadata !DIExpression()), !dbg !335
  tail call void @llvm.dbg.value(metadata double %255, metadata !118, metadata !DIExpression()), !dbg !137
  %256 = add nuw nsw i64 %239, 2, !dbg !338
  tail call void @llvm.dbg.value(metadata i64 %256, metadata !121, metadata !DIExpression()), !dbg !137
  %257 = icmp eq i64 %256, 200, !dbg !339
  br i1 %257, label %258, label %238, !dbg !340, !llvm.loop !341

258:                                              ; preds = %238
  %259 = insertelement <2 x i64> poison, i64 %115, i64 0, !dbg !343
  %260 = insertelement <2 x i64> %259, i64 %106, i64 1, !dbg !343
  %261 = sitofp <2 x i64> %260 to <2 x double>, !dbg !343
  call void @llvm.dbg.value(metadata double undef, metadata !224, metadata !DIExpression()), !dbg !239
  tail call void @llvm.dbg.value(metadata double undef, metadata !132, metadata !DIExpression()), !dbg !137
  %262 = fdiv <2 x double> %261, <double 1.000000e+06, double 1.000000e+06>, !dbg !344
  call void @llvm.dbg.value(metadata double undef, metadata !224, metadata !DIExpression()), !dbg !226
  tail call void @llvm.dbg.value(metadata double undef, metadata !131, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !137
  %263 = insertelement <2 x i64> poison, i64 %117, i64 0, !dbg !345
  %264 = insertelement <2 x i64> %263, i64 %116, i64 1, !dbg !345
  %265 = sitofp <2 x i64> %264 to <2 x double>, !dbg !345
  call void @llvm.dbg.value(metadata double undef, metadata !224, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata double undef, metadata !132, metadata !DIExpression()), !dbg !137
  %266 = fdiv <2 x double> %265, <double 1.000000e+06, double 1.000000e+06>, !dbg !346
  call void @llvm.dbg.value(metadata double undef, metadata !224, metadata !DIExpression()), !dbg !242
  tail call void @llvm.dbg.value(metadata double undef, metadata !131, metadata !DIExpression()), !dbg !137
  %267 = shufflevector <2 x double> %262, <2 x double> %266, <2 x i32> <i32 0, i32 2>, !dbg !347
  %268 = shufflevector <2 x double> %262, <2 x double> %266, <2 x i32> <i32 1, i32 3>, !dbg !347
  %269 = fsub <2 x double> %267, %268, !dbg !347
  tail call void @llvm.dbg.value(metadata double undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !137
  %270 = extractelement <2 x double> %269, i64 0, !dbg !348
  %271 = extractelement <2 x double> %269, i64 1, !dbg !348
  %272 = fadd double %270, %271, !dbg !348
  tail call void @llvm.dbg.value(metadata double %272, metadata !135, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !120, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double poison, metadata !129, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %272, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !137
  %273 = fcmp ogt double %272, 0.000000e+00, !dbg !349
  %274 = fmul double %272, 1.000000e+06, !dbg !351
  %275 = fdiv double 0x4154A67555555555, %274, !dbg !351
  %276 = select i1 %273, double %275, double -1.000000e+00, !dbg !351
  %277 = fdiv double %235, 2.000000e+02, !dbg !352
  %278 = fdiv double %277, %60, !dbg !353
  %279 = fdiv double %278, %255, !dbg !354
  %280 = fmul double %279, 0x4330000000000000, !dbg !355
  tail call void @llvm.dbg.value(metadata double %280, metadata !129, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %276, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !137
  %281 = fdiv double 2.000000e+00, %276, !dbg !356
  tail call void @llvm.dbg.value(metadata double %281, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !137
  %282 = fdiv double %272, 5.600000e-02, !dbg !357
  tail call void @llvm.dbg.value(metadata double %282, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !137
  %283 = tail call i32 @putchar(i32 10), !dbg !358
  %284 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27), !dbg !359
  %285 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %280), !dbg !360
  %286 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %235), !dbg !361
  %287 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef 0x3CB0000000000000), !dbg !362
  %288 = load double, ptr %11, align 8, !dbg !363, !tbaa !165
  %289 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %288), !dbg !364
  %290 = getelementptr inbounds double, ptr %11, i64 199, !dbg !365
  %291 = load double, ptr %290, align 8, !dbg !365, !tbaa !165
  %292 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %291), !dbg !366
  %293 = tail call i32 @putchar(i32 10), !dbg !367
  %294 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28), !dbg !368
  %295 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, double noundef %270), !dbg !369
  %296 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, double noundef %271), !dbg !370
  %297 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %272), !dbg !371
  %298 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, double noundef %276), !dbg !372
  %299 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, double noundef %281), !dbg !373
  %300 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, double noundef %282), !dbg !374
  tail call void @free(ptr noundef %118) #16, !dbg !375
  tail call void @free(ptr noundef nonnull %11) #16, !dbg !376
  tail call void @free(ptr noundef %12) #16, !dbg !377
  tail call void @free(ptr noundef %13) #16, !dbg !378
  tail call void @free(ptr noundef %14) #16, !dbg !379
  tail call void @free(ptr noundef %15) #16, !dbg !380
  %301 = tail call i32 @putchar(i32 10), !dbg !381
  %302 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29), !dbg !382
  %303 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30), !dbg !383
  %304 = tail call i32 @putchar(i32 10), !dbg !384
  tail call void @exit(i32 noundef 0) #17, !dbg !385
  unreachable, !dbg !385
}

; Function Attrs: nofree nounwind
declare !dbg !386 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @r8mat_gen(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 !dbg !393 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !397, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !398, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 1, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 2, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 3, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 1325, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !406
  %3 = mul nsw i32 %1, %0, !dbg !407
  %4 = sext i32 %3 to i64, !dbg !408
  %5 = shl nsw i64 %4, 3, !dbg !409
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #15, !dbg !410
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !399, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 1, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 1, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 2, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 3, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 1325, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !406
  %7 = icmp slt i32 %1, 1, !dbg !411
  br i1 %7, label %73, label %8, !dbg !414

8:                                                ; preds = %2
  %9 = add nuw i32 %1, 1, !dbg !414
  %10 = zext i32 %9 to i64
  br label %11, !dbg !414

11:                                               ; preds = %70, %8
  %12 = phi i32 [ 1, %8 ], [ %71, %70 ]
  %13 = phi i32 [ 1, %8 ], [ %54, %70 ]
  %14 = phi i32 [ 2, %8 ], [ %45, %70 ]
  %15 = phi i32 [ 3, %8 ], [ %36, %70 ]
  %16 = phi i32 [ 1325, %8 ], [ %29, %70 ]
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 1, metadata !400, metadata !DIExpression()), !dbg !406
  %17 = add nsw i32 %12, -1
  %18 = mul nsw i32 %17, %0
  %19 = add i32 %18, -1
  br label %20, !dbg !415

20:                                               ; preds = %11, %20
  %21 = phi i64 [ 1, %11 ], [ %68, %20 ]
  %22 = phi i32 [ %13, %11 ], [ %54, %20 ]
  %23 = phi i32 [ %14, %11 ], [ %45, %20 ]
  %24 = phi i32 [ %15, %11 ], [ %36, %20 ]
  %25 = phi i32 [ %16, %11 ], [ %29, %20 ]
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !400, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !406
  call void @llvm.dbg.value(metadata ptr undef, metadata !418, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i32 4096, metadata !423, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i32 494, metadata !428, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i32 322, metadata !429, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i32 2508, metadata !430, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i32 2549, metadata !431, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !432, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata double 0x3F30000000000000, metadata !433, metadata !DIExpression()), !dbg !435
  %26 = mul nsw i32 %25, 2549, !dbg !439
  call void @llvm.dbg.value(metadata i32 %26, metadata !427, metadata !DIExpression()), !dbg !435
  %27 = sdiv i32 %26, 4096, !dbg !440
  call void @llvm.dbg.value(metadata i32 %27, metadata !426, metadata !DIExpression()), !dbg !435
  %28 = shl nsw i32 %27, 12, !dbg !441
  %29 = sub nsw i32 %26, %28, !dbg !442
  call void @llvm.dbg.value(metadata i32 %29, metadata !427, metadata !DIExpression()), !dbg !435
  %30 = mul nsw i32 %24, 2549, !dbg !443
  %31 = mul nsw i32 %25, 2508, !dbg !444
  %32 = add i32 %30, %31, !dbg !445
  %33 = add i32 %32, %27, !dbg !446
  call void @llvm.dbg.value(metadata i32 %33, metadata !426, metadata !DIExpression()), !dbg !435
  %34 = sdiv i32 %33, 4096, !dbg !447
  call void @llvm.dbg.value(metadata i32 %34, metadata !425, metadata !DIExpression()), !dbg !435
  %35 = shl nsw i32 %34, 12, !dbg !448
  %36 = sub nsw i32 %33, %35, !dbg !449
  call void @llvm.dbg.value(metadata i32 %36, metadata !426, metadata !DIExpression()), !dbg !435
  %37 = mul nsw i32 %23, 2549, !dbg !450
  %38 = mul nsw i32 %24, 2508, !dbg !451
  %39 = mul nsw i32 %25, 322, !dbg !452
  %40 = add i32 %38, %39, !dbg !453
  %41 = add i32 %40, %37, !dbg !454
  %42 = add i32 %41, %34, !dbg !455
  call void @llvm.dbg.value(metadata i32 %42, metadata !425, metadata !DIExpression()), !dbg !435
  %43 = sdiv i32 %42, 4096, !dbg !456
  call void @llvm.dbg.value(metadata i32 %43, metadata !424, metadata !DIExpression()), !dbg !435
  %44 = shl nsw i32 %43, 12, !dbg !457
  %45 = sub nsw i32 %42, %44, !dbg !458
  call void @llvm.dbg.value(metadata i32 %45, metadata !425, metadata !DIExpression()), !dbg !435
  %46 = mul nsw i32 %22, 2549, !dbg !459
  %47 = mul nsw i32 %23, 2508, !dbg !460
  %48 = mul nsw i32 %24, 322, !dbg !461
  %49 = mul nsw i32 %25, 494, !dbg !462
  %50 = add i32 %48, %49, !dbg !463
  %51 = add i32 %50, %47, !dbg !464
  %52 = add i32 %51, %46, !dbg !465
  %53 = add i32 %52, %43, !dbg !466
  call void @llvm.dbg.value(metadata i32 %53, metadata !424, metadata !DIExpression()), !dbg !435
  %54 = srem i32 %53, 4096, !dbg !467
  call void @llvm.dbg.value(metadata i32 %54, metadata !424, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !406
  %55 = sitofp i32 %54 to double, !dbg !468
  %56 = sitofp i32 %45 to double, !dbg !469
  %57 = sitofp i32 %36 to double, !dbg !470
  %58 = sitofp i32 %29 to double, !dbg !471
  %59 = tail call double @llvm.fmuladd.f64(double %58, double 0x3F30000000000000, double %57), !dbg !472
  %60 = tail call double @llvm.fmuladd.f64(double %59, double 0x3F30000000000000, double %56), !dbg !473
  %61 = tail call double @llvm.fmuladd.f64(double %60, double 0x3F30000000000000, double %55), !dbg !474
  %62 = fmul double %61, 0x3F30000000000000, !dbg !475
  call void @llvm.dbg.value(metadata double %62, metadata !434, metadata !DIExpression()), !dbg !435
  %63 = fadd double %62, -5.000000e-01, !dbg !476
  %64 = trunc i64 %21 to i32, !dbg !477
  %65 = add i32 %19, %64, !dbg !477
  %66 = sext i32 %65 to i64, !dbg !478
  %67 = getelementptr inbounds double, ptr %6, i64 %66, !dbg !478
  store double %63, ptr %67, align 8, !dbg !479, !tbaa !165
  %68 = add nuw nsw i64 %21, 1, !dbg !480
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !400, metadata !DIExpression()), !dbg !406
  %69 = icmp eq i64 %68, %10, !dbg !481
  br i1 %69, label %70, label %20, !dbg !415, !llvm.loop !482

70:                                               ; preds = %20
  %71 = add nuw i32 %12, 1, !dbg !484
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !405, metadata !DIExpression()), !dbg !406
  %72 = icmp eq i32 %12, %1, !dbg !411
  br i1 %72, label %73, label %11, !dbg !414, !llvm.loop !485

73:                                               ; preds = %70, %2
  ret ptr %6, !dbg !487
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !488 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @r8_max(double noundef %0, double noundef %1) local_unnamed_addr #4 !dbg !179 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !178, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double %1, metadata !183, metadata !DIExpression()), !dbg !496
  %3 = fcmp olt double %1, %0, !dbg !497
  %4 = select i1 %3, double %0, double %1
  tail call void @llvm.dbg.value(metadata double %4, metadata !184, metadata !DIExpression()), !dbg !496
  ret double %4, !dbg !498
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @dgefa(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #6 !dbg !499 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !503, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !504, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !505, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !506, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata i32 0, metadata !507, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata i32 1, metadata !509, metadata !DIExpression()), !dbg !512
  %5 = icmp sgt i32 %2, 1, !dbg !513
  br i1 %5, label %6, label %598, !dbg !516

6:                                                ; preds = %4
  %7 = sext i32 %1 to i64, !dbg !516
  %8 = zext nneg i32 %2 to i64, !dbg !516
  %9 = zext nneg i32 %2 to i64, !dbg !513
  %10 = shl nsw i64 %7, 3, !dbg !516
  %11 = add nsw i64 %10, 8, !dbg !516
  %12 = add nuw i32 %2, 3, !dbg !516
  %13 = zext i32 %12 to i64, !dbg !516
  %14 = shl nuw nsw i64 %8, 3, !dbg !516
  %15 = add nsw i64 %14, -8, !dbg !516
  %16 = mul i64 %15, %7, !dbg !516
  %17 = add nuw i32 %2, 3, !dbg !516
  %18 = zext i32 %17 to i64, !dbg !516
  %19 = add nuw i32 %2, 4, !dbg !516
  %20 = add nsw i32 %2, -1, !dbg !516
  %21 = add nsw i64 %8, -2, !dbg !516
  %22 = getelementptr i8, ptr %0, i64 %11
  %23 = getelementptr i8, ptr %0, i64 %16
  %24 = getelementptr i8, ptr %23, i64 16
  %25 = getelementptr i8, ptr %0, i64 %10
  %26 = getelementptr i8, ptr %25, i64 16
  %27 = getelementptr i8, ptr %0, i64 %16
  %28 = getelementptr i8, ptr %27, i64 24
  %29 = getelementptr i8, ptr %0, i64 %10
  %30 = getelementptr i8, ptr %29, i64 24
  %31 = getelementptr i8, ptr %0, i64 %16
  %32 = getelementptr i8, ptr %31, i64 32
  %33 = getelementptr i8, ptr %0, i64 %10
  %34 = getelementptr i8, ptr %33, i64 32
  %35 = getelementptr i8, ptr %0, i64 %16
  %36 = getelementptr i8, ptr %35, i64 40
  %37 = getelementptr i8, ptr %0, i64 8, !dbg !516
  %38 = getelementptr i8, ptr %0, i64 16, !dbg !516
  %39 = getelementptr i8, ptr %0, i64 24, !dbg !516
  %40 = getelementptr i8, ptr %0, i64 32, !dbg !516
  %41 = getelementptr i8, ptr %0, i64 40, !dbg !516
  %42 = icmp slt i32 %1, 0
  %43 = icmp slt i32 %1, 0
  %44 = icmp slt i32 %1, 0
  br label %45, !dbg !516

45:                                               ; preds = %6, %593
  %46 = phi i64 [ 0, %6 ], [ %597, %593 ]
  %47 = phi i64 [ 1, %6 ], [ %595, %593 ]
  %48 = phi i32 [ 0, %6 ], [ %594, %593 ]
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !507, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !509, metadata !DIExpression()), !dbg !512
  %49 = xor i64 %46, -1, !dbg !517
  %50 = add i64 %49, %8, !dbg !517
  %51 = trunc i64 %46 to i32, !dbg !517
  %52 = sub i32 %20, %51, !dbg !517
  %53 = freeze i32 %52, !dbg !517
  %54 = urem i32 %53, 5, !dbg !517
  %55 = zext nneg i32 %54 to i64, !dbg !517
  %56 = xor i64 %46, -1, !dbg !517
  %57 = add i64 %56, %8, !dbg !517
  %58 = trunc i64 %46 to i32, !dbg !517
  %59 = sub i32 %19, %58, !dbg !517
  %60 = trunc i64 %46 to i32, !dbg !517
  %61 = sub i32 %20, %60, !dbg !517
  %62 = freeze i32 %61, !dbg !517
  %63 = urem i32 %62, 5, !dbg !517
  %64 = sub i32 %63, %62, !dbg !517
  %65 = add i32 %64, %59, !dbg !517
  %66 = sext i32 %65 to i64, !dbg !517
  %67 = tail call i64 @llvm.smax.i64(i64 %57, i64 %66), !dbg !517
  %68 = icmp sgt i64 %57, %66, !dbg !517
  %69 = sext i1 %68 to i64, !dbg !517
  %70 = select i1 %68, i64 2, i64 1, !dbg !517
  %71 = add i64 %67, %69, !dbg !517
  %72 = sub i64 %71, %66, !dbg !517
  %73 = udiv i64 %72, 5, !dbg !517
  %74 = add nuw nsw i64 %70, %73, !dbg !517
  %75 = xor i64 %46, -1, !dbg !517
  %76 = add i64 %75, %8, !dbg !517
  %77 = trunc i64 %46 to i32, !dbg !517
  %78 = sub i32 %19, %77, !dbg !517
  %79 = trunc i64 %46 to i32, !dbg !517
  %80 = sub i32 %20, %79, !dbg !517
  %81 = freeze i32 %80, !dbg !517
  %82 = urem i32 %81, 5, !dbg !517
  %83 = sub i32 %82, %81, !dbg !517
  %84 = add i32 %83, %78, !dbg !517
  %85 = sext i32 %84 to i64, !dbg !517
  %86 = tail call i64 @llvm.smax.i64(i64 %76, i64 %85), !dbg !517
  %87 = icmp sgt i64 %76, %85, !dbg !517
  %88 = zext i1 %87 to i64, !dbg !517
  %89 = add nsw i64 %88, %85, !dbg !517
  %90 = sub i64 %86, %89, !dbg !517
  %91 = udiv i64 %90, 5, !dbg !517
  %92 = add nuw nsw i64 %91, %88, !dbg !517
  %93 = xor i64 %46, -1, !dbg !517
  %94 = add i64 %93, %8, !dbg !517
  %95 = sub i64 %18, %46, !dbg !517
  %96 = and i64 %95, 3, !dbg !517
  %97 = or disjoint i64 %96, 4, !dbg !517
  %98 = tail call i64 @llvm.umax.i64(i64 %94, i64 %97), !dbg !517
  %99 = xor i64 %96, -1, !dbg !517
  %100 = add i64 %98, %99, !dbg !517
  %101 = lshr i64 %100, 2, !dbg !517
  %102 = add nuw nsw i64 %101, 1, !dbg !517
  %103 = mul i64 %11, %46, !dbg !517
  %104 = getelementptr i8, ptr %22, i64 %103, !dbg !517
  %105 = sub i64 %13, %46, !dbg !517
  %106 = and i64 %105, 3, !dbg !517
  %107 = shl nuw nsw i64 %106, 3, !dbg !517
  %108 = getelementptr i8, ptr %104, i64 %107, !dbg !517
  %109 = shl nuw nsw i64 %46, 3, !dbg !517
  %110 = getelementptr i8, ptr %24, i64 %109, !dbg !517
  %111 = xor i64 %46, -1, !dbg !517
  %112 = add i64 %111, %8, !dbg !517
  %113 = or disjoint i64 %106, 4, !dbg !517
  %114 = tail call i64 @llvm.umax.i64(i64 %112, i64 %113), !dbg !517
  %115 = xor i64 %106, -1, !dbg !517
  %116 = add i64 %114, %115, !dbg !517
  %117 = shl i64 %116, 3, !dbg !517
  %118 = and i64 %117, -32, !dbg !517
  %119 = or disjoint i64 %118, %107, !dbg !517
  %120 = getelementptr i8, ptr %110, i64 %119, !dbg !517
  %121 = getelementptr i8, ptr %26, i64 %103, !dbg !517
  %122 = getelementptr i8, ptr %121, i64 %107, !dbg !517
  %123 = getelementptr i8, ptr %28, i64 %109, !dbg !517
  %124 = getelementptr i8, ptr %123, i64 %119, !dbg !517
  %125 = getelementptr i8, ptr %30, i64 %103, !dbg !517
  %126 = getelementptr i8, ptr %125, i64 %107, !dbg !517
  %127 = getelementptr i8, ptr %32, i64 %109, !dbg !517
  %128 = getelementptr i8, ptr %127, i64 %119, !dbg !517
  %129 = getelementptr i8, ptr %34, i64 %103, !dbg !517
  %130 = getelementptr i8, ptr %129, i64 %107, !dbg !517
  %131 = getelementptr i8, ptr %36, i64 %109, !dbg !517
  %132 = getelementptr i8, ptr %131, i64 %119, !dbg !517
  %133 = getelementptr i8, ptr %37, i64 %103, !dbg !517
  %134 = getelementptr i8, ptr %133, i64 %107, !dbg !517
  %135 = getelementptr i8, ptr %38, i64 %103, !dbg !517
  %136 = getelementptr i8, ptr %135, i64 %119, !dbg !517
  %137 = getelementptr i8, ptr %135, i64 %107, !dbg !517
  %138 = getelementptr i8, ptr %39, i64 %103, !dbg !517
  %139 = getelementptr i8, ptr %138, i64 %119, !dbg !517
  %140 = getelementptr i8, ptr %138, i64 %107, !dbg !517
  %141 = getelementptr i8, ptr %40, i64 %103, !dbg !517
  %142 = getelementptr i8, ptr %141, i64 %119, !dbg !517
  %143 = getelementptr i8, ptr %141, i64 %107, !dbg !517
  %144 = getelementptr i8, ptr %41, i64 %103, !dbg !517
  %145 = getelementptr i8, ptr %144, i64 %119, !dbg !517
  %146 = sub nsw i64 %8, %47, !dbg !517
  %147 = add nsw i64 %47, -1, !dbg !519
  %148 = getelementptr inbounds double, ptr %0, i64 %147, !dbg !520
  %149 = mul nsw i64 %147, %7, !dbg !521
  %150 = getelementptr inbounds double, ptr %148, i64 %149, !dbg !522
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !523, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !534
  tail call void @llvm.dbg.value(metadata ptr %150, metadata !528, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata i32 1, metadata !529, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata i32 0, metadata !533, metadata !DIExpression()), !dbg !534
  %151 = icmp slt i64 %146, 0, !dbg !536
  br i1 %151, label %204, label %152, !dbg !538

152:                                              ; preds = %45
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !523, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !534
  tail call void @llvm.dbg.value(metadata i32 1, metadata !533, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata double poison, metadata !308, metadata !DIExpression()), !dbg !539
  tail call void @llvm.dbg.value(metadata double poison, metadata !308, metadata !DIExpression()), !dbg !543
  tail call void @llvm.dbg.value(metadata double poison, metadata !313, metadata !DIExpression()), !dbg !539
  tail call void @llvm.dbg.value(metadata double poison, metadata !313, metadata !DIExpression()), !dbg !543
  tail call void @llvm.dbg.value(metadata double poison, metadata !530, metadata !DIExpression()), !dbg !534
  %153 = load double, ptr %150, align 8, !dbg !546, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %153, metadata !308, metadata !DIExpression()), !dbg !539
  tail call void @llvm.dbg.value(metadata double %153, metadata !308, metadata !DIExpression()), !dbg !543
  %154 = fcmp ult double %153, 0.000000e+00, !dbg !547
  %155 = fneg double %153, !dbg !549
  %156 = select i1 %154, double %155, double %153, !dbg !549
  tail call void @llvm.dbg.value(metadata double %156, metadata !313, metadata !DIExpression()), !dbg !539
  tail call void @llvm.dbg.value(metadata double %156, metadata !313, metadata !DIExpression()), !dbg !543
  tail call void @llvm.dbg.value(metadata double %156, metadata !530, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata i32 1, metadata !531, metadata !DIExpression()), !dbg !534
  %157 = and i64 %50, 1, !dbg !550
  %158 = icmp eq i64 %21, %46, !dbg !550
  br i1 %158, label %188, label %159, !dbg !550

159:                                              ; preds = %152
  %160 = and i64 %50, -2, !dbg !550
  br label %161, !dbg !550

161:                                              ; preds = %161, %159
  %162 = phi i64 [ 1, %159 ], [ %182, %161 ]
  %163 = phi i32 [ 1, %159 ], [ %185, %161 ]
  %164 = phi double [ %156, %159 ], [ %183, %161 ]
  %165 = phi i64 [ 0, %159 ], [ %186, %161 ]
  tail call void @llvm.dbg.value(metadata i32 %163, metadata !533, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata i64 %162, metadata !531, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata double %164, metadata !530, metadata !DIExpression()), !dbg !534
  %166 = getelementptr inbounds double, ptr %150, i64 %162, !dbg !552
  %167 = load double, ptr %166, align 8, !dbg !552, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %167, metadata !308, metadata !DIExpression()), !dbg !556
  %168 = fcmp ult double %167, 0.000000e+00, !dbg !558
  %169 = fneg double %167, !dbg !559
  %170 = select i1 %168, double %169, double %167, !dbg !559
  tail call void @llvm.dbg.value(metadata double %170, metadata !313, metadata !DIExpression()), !dbg !556
  %171 = fcmp olt double %164, %170, !dbg !560
  %172 = add nuw nsw i64 %162, 1, !dbg !561
  %173 = select i1 %171, double %170, double %164, !dbg !562
  %174 = trunc i64 %172 to i32, !dbg !562
  %175 = select i1 %171, i32 %174, i32 %163, !dbg !562
  tail call void @llvm.dbg.value(metadata i32 %175, metadata !533, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata double %173, metadata !530, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !531, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata i32 %175, metadata !533, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !531, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata double %173, metadata !530, metadata !DIExpression()), !dbg !534
  %176 = getelementptr inbounds double, ptr %150, i64 %172, !dbg !552
  %177 = load double, ptr %176, align 8, !dbg !552, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %177, metadata !308, metadata !DIExpression()), !dbg !556
  %178 = fcmp ult double %177, 0.000000e+00, !dbg !558
  %179 = fneg double %177, !dbg !559
  %180 = select i1 %178, double %179, double %177, !dbg !559
  tail call void @llvm.dbg.value(metadata double %180, metadata !313, metadata !DIExpression()), !dbg !556
  %181 = fcmp olt double %173, %180, !dbg !560
  %182 = add nuw nsw i64 %162, 2, !dbg !561
  %183 = select i1 %181, double %180, double %173, !dbg !562
  %184 = trunc i64 %182 to i32, !dbg !562
  %185 = select i1 %181, i32 %184, i32 %175, !dbg !562
  tail call void @llvm.dbg.value(metadata i32 %185, metadata !533, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata double %183, metadata !530, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata i64 %182, metadata !531, metadata !DIExpression()), !dbg !534
  %186 = add i64 %165, 2, !dbg !550
  %187 = icmp eq i64 %186, %160, !dbg !550
  br i1 %187, label %188, label %161, !dbg !550, !llvm.loop !563

188:                                              ; preds = %161, %152
  %189 = phi i32 [ undef, %152 ], [ %185, %161 ]
  %190 = phi i64 [ 1, %152 ], [ %182, %161 ]
  %191 = phi i32 [ 1, %152 ], [ %185, %161 ]
  %192 = phi double [ %156, %152 ], [ %183, %161 ]
  %193 = icmp eq i64 %157, 0, !dbg !550
  br i1 %193, label %204, label %194, !dbg !550

194:                                              ; preds = %188
  tail call void @llvm.dbg.value(metadata i32 %191, metadata !533, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata i64 %190, metadata !531, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata double %192, metadata !530, metadata !DIExpression()), !dbg !534
  %195 = getelementptr inbounds double, ptr %150, i64 %190, !dbg !552
  %196 = load double, ptr %195, align 8, !dbg !552, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %196, metadata !308, metadata !DIExpression()), !dbg !556
  %197 = fcmp ult double %196, 0.000000e+00, !dbg !558
  %198 = fneg double %196, !dbg !559
  %199 = select i1 %197, double %198, double %196, !dbg !559
  tail call void @llvm.dbg.value(metadata double %199, metadata !313, metadata !DIExpression()), !dbg !556
  %200 = fcmp olt double %192, %199, !dbg !560
  %201 = trunc i64 %190 to i32, !dbg !562
  %202 = add i32 %201, 1, !dbg !562
  %203 = select i1 %200, i32 %202, i32 %191, !dbg !562
  tail call void @llvm.dbg.value(metadata i32 %203, metadata !533, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata double poison, metadata !530, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata i64 %190, metadata !531, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !534
  br label %204, !dbg !565

204:                                              ; preds = %194, %188, %45
  %205 = phi i32 [ 0, %45 ], [ %189, %188 ], [ %203, %194 ], !dbg !534
  %206 = trunc i64 %47 to i32, !dbg !565
  %207 = add nsw i32 %205, %206, !dbg !565
  %208 = add nsw i32 %207, -1, !dbg !566
  tail call void @llvm.dbg.value(metadata i32 %208, metadata !510, metadata !DIExpression()), !dbg !512
  %209 = getelementptr inbounds i32, ptr %3, i64 %147, !dbg !567
  store i32 %208, ptr %209, align 4, !dbg !568, !tbaa !569
  %210 = add nsw i32 %207, -2, !dbg !571
  %211 = sext i32 %210 to i64, !dbg !573
  %212 = getelementptr double, ptr %0, i64 %149, !dbg !574
  %213 = getelementptr double, ptr %212, i64 %211, !dbg !574
  %214 = load double, ptr %213, align 8, !dbg !574, !tbaa !165
  %215 = fcmp oeq double %214, 0.000000e+00, !dbg !575
  br i1 %215, label %593, label %216, !dbg !576

216:                                              ; preds = %204
  %217 = zext i32 %208 to i64, !dbg !577
  %218 = icmp eq i64 %47, %217, !dbg !577
  %219 = add nsw i64 %149, %147, !dbg !579
  br i1 %218, label %223, label %220, !dbg !580

220:                                              ; preds = %216
  tail call void @llvm.dbg.value(metadata double %214, metadata !511, metadata !DIExpression()), !dbg !512
  %221 = getelementptr inbounds double, ptr %0, i64 %219, !dbg !581
  %222 = load double, ptr %221, align 8, !dbg !581, !tbaa !165
  store double %222, ptr %213, align 8, !dbg !583, !tbaa !165
  store double %214, ptr %221, align 8, !dbg !584, !tbaa !165
  br label %223, !dbg !585

223:                                              ; preds = %216, %220
  %224 = getelementptr inbounds double, ptr %0, i64 %219, !dbg !586
  %225 = load double, ptr %224, align 8, !dbg !586, !tbaa !165
  %226 = fdiv double -1.000000e+00, %225, !dbg !587
  tail call void @llvm.dbg.value(metadata double %226, metadata !511, metadata !DIExpression()), !dbg !512
  %227 = getelementptr inbounds double, ptr %0, i64 %47, !dbg !588
  %228 = getelementptr inbounds double, ptr %227, i64 %149, !dbg !589
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !590, metadata !DIExpression()), !dbg !601
  tail call void @llvm.dbg.value(metadata double %226, metadata !595, metadata !DIExpression()), !dbg !601
  tail call void @llvm.dbg.value(metadata ptr %228, metadata !596, metadata !DIExpression()), !dbg !601
  tail call void @llvm.dbg.value(metadata i32 1, metadata !597, metadata !DIExpression()), !dbg !601
  %229 = icmp slt i64 %146, 1, !dbg !603
  br i1 %229, label %352, label %230, !dbg !605

230:                                              ; preds = %223
  %231 = trunc i64 %146 to i32
  %232 = urem i32 %231, 5
  tail call void @llvm.dbg.value(metadata i32 %232, metadata !600, metadata !DIExpression()), !dbg !601
  tail call void @llvm.dbg.value(metadata i32 0, metadata !598, metadata !DIExpression()), !dbg !601
  %233 = icmp eq i32 %232, 0, !dbg !606
  br i1 %233, label %255, label %234, !dbg !611

234:                                              ; preds = %230
  %235 = zext nneg i32 %232 to i64, !dbg !606
  %236 = icmp ult i32 %54, 4, !dbg !611
  br i1 %236, label %253, label %237, !dbg !611

237:                                              ; preds = %234
  %238 = and i64 %55, 4, !dbg !611
  %239 = insertelement <2 x double> poison, double %226, i64 0, !dbg !611
  %240 = shufflevector <2 x double> %239, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !611
  br label %241, !dbg !611

241:                                              ; preds = %241, %237
  %242 = phi i64 [ 0, %237 ], [ %249, %241 ], !dbg !612
  %243 = getelementptr inbounds double, ptr %228, i64 %242, !dbg !613
  %244 = getelementptr inbounds double, ptr %243, i64 2, !dbg !613
  %245 = load <2 x double>, ptr %243, align 8, !dbg !613, !tbaa !165
  %246 = load <2 x double>, ptr %244, align 8, !dbg !613, !tbaa !165
  %247 = fmul <2 x double> %240, %245, !dbg !615
  %248 = fmul <2 x double> %240, %246, !dbg !615
  store <2 x double> %247, ptr %243, align 8, !dbg !616, !tbaa !165
  store <2 x double> %248, ptr %244, align 8, !dbg !616, !tbaa !165
  %249 = add nuw i64 %242, 4, !dbg !612
  %250 = icmp eq i64 %249, %238, !dbg !612
  br i1 %250, label %251, label %241, !dbg !612, !llvm.loop !617

251:                                              ; preds = %241
  %252 = icmp eq i64 %238, %55, !dbg !611
  br i1 %252, label %255, label %253, !dbg !611

253:                                              ; preds = %234, %251
  %254 = phi i64 [ 0, %234 ], [ %238, %251 ]
  br label %330, !dbg !611

255:                                              ; preds = %330, %251, %230
  tail call void @llvm.dbg.value(metadata i32 %232, metadata !598, metadata !DIExpression()), !dbg !601
  %256 = zext nneg i32 %232 to i64
  %257 = icmp sgt i64 %146, %256, !dbg !619
  br i1 %257, label %258, label %352, !dbg !622

258:                                              ; preds = %255
  %259 = zext nneg i32 %232 to i64, !dbg !622
  %260 = icmp ult i64 %74, 14, !dbg !622
  br i1 %260, label %326, label %261, !dbg !622

261:                                              ; preds = %258
  %262 = trunc i64 %92 to i32, !dbg !622
  %263 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %262, i32 5), !dbg !622
  %264 = extractvalue { i32, i1 } %263, 0, !dbg !622
  %265 = extractvalue { i32, i1 } %263, 1, !dbg !622
  %266 = add i32 %84, %264, !dbg !622
  %267 = icmp slt i32 %266, %84, !dbg !622
  %268 = or i1 %267, %265, !dbg !622
  %269 = icmp ugt i64 %92, 4294967295, !dbg !622
  %270 = or i1 %268, %269, !dbg !622
  br i1 %270, label %326, label %271

271:                                              ; preds = %261
  %272 = and i64 %74, 9223372036854775806, !dbg !622
  %273 = mul i64 %272, 5, !dbg !622
  %274 = add i64 %273, %259, !dbg !622
  %275 = insertelement <2 x double> poison, double %226, i64 0, !dbg !622
  %276 = shufflevector <2 x double> %275, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !622
  br label %277, !dbg !622

277:                                              ; preds = %277, %271
  %278 = phi i64 [ 0, %271 ], [ %322, %277 ]
  %279 = mul i64 %278, 5, !dbg !622
  %280 = add i64 %279, %259, !dbg !622
  %281 = getelementptr inbounds double, ptr %228, i64 %280, !dbg !623
  %282 = getelementptr double, ptr %228, i64 %280, !dbg !623
  %283 = getelementptr double, ptr %282, i64 5, !dbg !623
  %284 = load double, ptr %281, align 8, !dbg !623, !tbaa !165
  %285 = load double, ptr %283, align 8, !dbg !623, !tbaa !165
  %286 = insertelement <2 x double> poison, double %284, i64 0, !dbg !622
  %287 = insertelement <2 x double> %286, double %285, i64 1, !dbg !622
  %288 = fmul <2 x double> %276, %287, !dbg !622
  %289 = getelementptr double, ptr %281, i64 1, !dbg !625
  %290 = getelementptr double, ptr %282, i64 6, !dbg !625
  %291 = load double, ptr %289, align 8, !dbg !625, !tbaa !165
  %292 = load double, ptr %290, align 8, !dbg !625, !tbaa !165
  %293 = insertelement <2 x double> poison, double %291, i64 0, !dbg !622
  %294 = insertelement <2 x double> %293, double %292, i64 1, !dbg !622
  %295 = fmul <2 x double> %276, %294, !dbg !622
  %296 = getelementptr double, ptr %281, i64 2, !dbg !626
  %297 = getelementptr double, ptr %282, i64 7, !dbg !626
  %298 = load double, ptr %296, align 8, !dbg !626, !tbaa !165
  %299 = load double, ptr %297, align 8, !dbg !626, !tbaa !165
  %300 = insertelement <2 x double> poison, double %298, i64 0, !dbg !622
  %301 = insertelement <2 x double> %300, double %299, i64 1, !dbg !622
  %302 = fmul <2 x double> %276, %301, !dbg !622
  %303 = getelementptr double, ptr %281, i64 3, !dbg !627
  %304 = getelementptr double, ptr %282, i64 8, !dbg !627
  %305 = load double, ptr %303, align 8, !dbg !627, !tbaa !165
  %306 = load double, ptr %304, align 8, !dbg !627, !tbaa !165
  %307 = insertelement <2 x double> poison, double %305, i64 0, !dbg !622
  %308 = insertelement <2 x double> %307, double %306, i64 1, !dbg !622
  %309 = fmul <2 x double> %276, %308, !dbg !622
  %310 = getelementptr double, ptr %281, i64 4, !dbg !628
  %311 = getelementptr double, ptr %282, i64 9, !dbg !628
  %312 = load double, ptr %310, align 8, !dbg !628, !tbaa !165
  %313 = load double, ptr %311, align 8, !dbg !628, !tbaa !165
  %314 = insertelement <2 x double> poison, double %312, i64 0, !dbg !622
  %315 = insertelement <2 x double> %314, double %313, i64 1, !dbg !622
  %316 = fmul <2 x double> %276, %315, !dbg !622
  %317 = shufflevector <2 x double> %288, <2 x double> %295, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !629
  %318 = shufflevector <2 x double> %302, <2 x double> %309, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !629
  %319 = shufflevector <4 x double> %317, <4 x double> %318, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !629
  %320 = shufflevector <2 x double> %316, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !629
  %321 = shufflevector <8 x double> %319, <8 x double> %320, <10 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 1, i32 3, i32 5, i32 7, i32 9>, !dbg !629
  store <10 x double> %321, ptr %281, align 8, !dbg !629, !tbaa !165
  %322 = add nuw i64 %278, 2
  %323 = icmp eq i64 %322, %272
  br i1 %323, label %324, label %277, !llvm.loop !630

324:                                              ; preds = %277
  %325 = icmp eq i64 %74, %272, !dbg !622
  br i1 %325, label %352, label %326, !dbg !622

326:                                              ; preds = %261, %258, %324
  %327 = phi i64 [ %259, %261 ], [ %259, %258 ], [ %274, %324 ]
  %328 = insertelement <2 x double> poison, double %226, i64 0
  %329 = shufflevector <2 x double> %328, <2 x double> poison, <2 x i32> zeroinitializer
  br label %337, !dbg !622

330:                                              ; preds = %253, %330
  %331 = phi i64 [ %335, %330 ], [ %254, %253 ]
  tail call void @llvm.dbg.value(metadata i64 %331, metadata !598, metadata !DIExpression()), !dbg !601
  %332 = getelementptr inbounds double, ptr %228, i64 %331, !dbg !613
  %333 = load double, ptr %332, align 8, !dbg !613, !tbaa !165
  %334 = fmul double %226, %333, !dbg !615
  store double %334, ptr %332, align 8, !dbg !616, !tbaa !165
  %335 = add nuw nsw i64 %331, 1, !dbg !612
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !598, metadata !DIExpression()), !dbg !601
  %336 = icmp eq i64 %335, %235, !dbg !606
  br i1 %336, label %255, label %330, !dbg !611, !llvm.loop !632

337:                                              ; preds = %326, %337
  %338 = phi i64 [ %348, %337 ], [ %327, %326 ]
  tail call void @llvm.dbg.value(metadata i64 %338, metadata !598, metadata !DIExpression()), !dbg !601
  %339 = getelementptr inbounds double, ptr %228, i64 %338, !dbg !623
  %340 = load <2 x double>, ptr %339, align 8, !dbg !623, !tbaa !165
  %341 = fmul <2 x double> %329, %340, !dbg !633
  store <2 x double> %341, ptr %339, align 8, !dbg !634, !tbaa !165
  %342 = getelementptr double, ptr %339, i64 2, !dbg !626
  %343 = load <2 x double>, ptr %342, align 8, !dbg !626, !tbaa !165
  %344 = fmul <2 x double> %329, %343, !dbg !635
  store <2 x double> %344, ptr %342, align 8, !dbg !636, !tbaa !165
  %345 = getelementptr double, ptr %339, i64 4, !dbg !628
  %346 = load double, ptr %345, align 8, !dbg !628, !tbaa !165
  %347 = fmul double %226, %346, !dbg !637
  store double %347, ptr %345, align 8, !dbg !629, !tbaa !165
  %348 = add nuw nsw i64 %338, 5, !dbg !638
  tail call void @llvm.dbg.value(metadata i64 %348, metadata !598, metadata !DIExpression()), !dbg !601
  %349 = shl i64 %348, 32, !dbg !619
  %350 = ashr exact i64 %349, 32, !dbg !619
  %351 = icmp sgt i64 %146, %350, !dbg !619
  br i1 %351, label %337, label %352, !dbg !622, !llvm.loop !639

352:                                              ; preds = %337, %324, %255, %223
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !508, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !512
  %353 = and i64 %146, 3
  %354 = icmp eq i64 %353, 0
  %355 = and i64 %146, 3
  %356 = icmp sgt i64 %146, 3
  %357 = getelementptr double, ptr %0, i64 %211, !dbg !640
  %358 = getelementptr double, ptr %0, i64 %147, !dbg !640
  %359 = icmp eq i64 %355, 1
  %360 = getelementptr inbounds double, ptr %228, i64 1
  %361 = icmp eq i64 %355, 2
  %362 = getelementptr inbounds double, ptr %228, i64 2
  %363 = icmp ult i64 %100, 92
  %364 = icmp ult ptr %108, %124
  %365 = icmp ult ptr %122, %120
  %366 = and i1 %364, %365
  %367 = icmp ult ptr %108, %128
  %368 = icmp ult ptr %126, %120
  %369 = and i1 %367, %368
  %370 = or i1 %369, %42
  %371 = or i1 %366, %370
  %372 = icmp ult ptr %108, %132
  %373 = icmp ult ptr %130, %120
  %374 = and i1 %372, %373
  %375 = or i1 %374, %371
  %376 = icmp ult ptr %108, %136
  %377 = icmp ult ptr %134, %120
  %378 = and i1 %376, %377
  %379 = or i1 %378, %375
  %380 = icmp ult ptr %108, %139
  %381 = icmp ult ptr %137, %120
  %382 = and i1 %380, %381
  %383 = or i1 %382, %379
  %384 = icmp ult ptr %108, %142
  %385 = icmp ult ptr %140, %120
  %386 = and i1 %384, %385
  %387 = or i1 %386, %383
  %388 = icmp ult ptr %108, %145
  %389 = icmp ult ptr %143, %120
  %390 = and i1 %388, %389
  %391 = or i1 %390, %387
  %392 = icmp ult ptr %122, %128
  %393 = icmp ult ptr %126, %124
  %394 = and i1 %392, %393
  %395 = or i1 %394, %391
  %396 = icmp ult ptr %122, %132
  %397 = icmp ult ptr %130, %124
  %398 = and i1 %396, %397
  %399 = or i1 %398, %395
  %400 = icmp ult ptr %122, %136
  %401 = icmp ult ptr %134, %124
  %402 = and i1 %400, %401
  %403 = or i1 %402, %43
  %404 = or i1 %399, %403
  %405 = icmp ult ptr %122, %139
  %406 = icmp ult ptr %137, %124
  %407 = and i1 %405, %406
  %408 = or i1 %407, %404
  %409 = icmp ult ptr %122, %142
  %410 = icmp ult ptr %140, %124
  %411 = and i1 %409, %410
  %412 = or i1 %411, %408
  %413 = icmp ult ptr %122, %145
  %414 = icmp ult ptr %143, %124
  %415 = and i1 %413, %414
  %416 = or i1 %415, %412
  %417 = icmp ult ptr %126, %132
  %418 = icmp ult ptr %130, %128
  %419 = and i1 %417, %418
  %420 = or i1 %419, %416
  %421 = icmp ult ptr %126, %136
  %422 = icmp ult ptr %134, %128
  %423 = and i1 %421, %422
  %424 = or i1 %423, %420
  %425 = icmp ult ptr %126, %139
  %426 = icmp ult ptr %137, %128
  %427 = and i1 %425, %426
  %428 = or i1 %427, %424
  %429 = icmp ult ptr %126, %142
  %430 = icmp ult ptr %140, %128
  %431 = and i1 %429, %430
  %432 = or i1 %431, %428
  %433 = icmp ult ptr %126, %145
  %434 = icmp ult ptr %143, %128
  %435 = and i1 %433, %434
  %436 = or i1 %435, %44
  %437 = or i1 %432, %436
  %438 = icmp ult ptr %130, %136
  %439 = icmp ult ptr %134, %132
  %440 = and i1 %438, %439
  %441 = or i1 %440, %437
  %442 = icmp ult ptr %130, %139
  %443 = icmp ult ptr %137, %132
  %444 = and i1 %442, %443
  %445 = or i1 %444, %441
  %446 = icmp ult ptr %130, %142
  %447 = icmp ult ptr %140, %132
  %448 = and i1 %446, %447
  %449 = or i1 %448, %445
  %450 = icmp ult ptr %130, %145
  %451 = icmp ult ptr %143, %132
  %452 = and i1 %450, %451
  %453 = or i1 %452, %449
  %454 = and i64 %102, 9223372036854775806
  %455 = shl i64 %454, 2
  %456 = or disjoint i64 %355, %455
  %457 = icmp eq i64 %102, %454
  br label %458, !dbg !640

458:                                              ; preds = %352, %591
  %459 = phi i64 [ %47, %352 ], [ %460, %591 ]
  %460 = add nuw nsw i64 %459, 1, !dbg !642
  %461 = mul nsw i64 %459, %7, !dbg !643
  %462 = getelementptr double, ptr %357, i64 %461, !dbg !646
  %463 = load double, ptr %462, align 8, !dbg !646, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %463, metadata !511, metadata !DIExpression()), !dbg !512
  br i1 %218, label %467, label %464, !dbg !647

464:                                              ; preds = %458
  %465 = getelementptr double, ptr %358, i64 %461, !dbg !648
  %466 = load double, ptr %465, align 8, !dbg !648, !tbaa !165
  store double %466, ptr %462, align 8, !dbg !651, !tbaa !165
  store double %463, ptr %465, align 8, !dbg !652, !tbaa !165
  br label %467, !dbg !653

467:                                              ; preds = %464, %458
  %468 = getelementptr inbounds double, ptr %227, i64 %461, !dbg !654
  call void @llvm.dbg.value(metadata i64 %146, metadata !655, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata double %463, metadata !660, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata ptr %228, metadata !661, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 1, metadata !662, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata ptr %468, metadata !663, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 1, metadata !664, metadata !DIExpression()), !dbg !669
  %469 = fcmp oeq double %463, 0.000000e+00
  %470 = or i1 %229, %469, !dbg !671
  br i1 %470, label %591, label %471, !dbg !671

471:                                              ; preds = %467
  call void @llvm.dbg.value(metadata i64 %146, metadata !668, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value)), !dbg !669
  call void @llvm.dbg.value(metadata i32 0, metadata !665, metadata !DIExpression()), !dbg !669
  br i1 %354, label %472, label %550, !dbg !672

472:                                              ; preds = %550, %554, %559, %471
  call void @llvm.dbg.value(metadata i64 %146, metadata !665, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value)), !dbg !669
  br i1 %356, label %473, label %591, !dbg !676

473:                                              ; preds = %472
  %474 = select i1 %363, i1 true, i1 %453, !dbg !676
  br i1 %474, label %548, label %475, !dbg !676

475:                                              ; preds = %473
  %476 = insertelement <2 x double> poison, double %463, i64 0, !dbg !676
  %477 = shufflevector <2 x double> %476, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !676
  br label %478, !dbg !676

478:                                              ; preds = %478, %475
  %479 = phi i64 [ 0, %475 ], [ %545, %478 ]
  %480 = shl i64 %479, 2, !dbg !676
  %481 = or disjoint i64 %355, %480, !dbg !676
  %482 = or disjoint i64 %481, 4, !dbg !676
  %483 = getelementptr inbounds double, ptr %468, i64 %481, !dbg !678
  %484 = getelementptr inbounds double, ptr %468, i64 %482, !dbg !678
  %485 = load double, ptr %483, align 8, !dbg !678, !tbaa !165, !alias.scope !681, !noalias !684
  %486 = load double, ptr %484, align 8, !dbg !678, !tbaa !165, !alias.scope !681, !noalias !684
  %487 = insertelement <2 x double> poison, double %485, i64 0, !dbg !692
  %488 = insertelement <2 x double> %487, double %486, i64 1, !dbg !692
  %489 = getelementptr inbounds double, ptr %228, i64 %481, !dbg !692
  %490 = getelementptr inbounds double, ptr %228, i64 %482, !dbg !692
  %491 = load double, ptr %489, align 8, !dbg !692, !tbaa !165, !alias.scope !693
  %492 = load double, ptr %490, align 8, !dbg !692, !tbaa !165, !alias.scope !693
  %493 = insertelement <2 x double> poison, double %491, i64 0, !dbg !676
  %494 = insertelement <2 x double> %493, double %492, i64 1, !dbg !676
  %495 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %477, <2 x double> %494, <2 x double> %488), !dbg !676
  %496 = add nuw nsw i64 %481, 1, !dbg !694
  %497 = add i64 %481, 5, !dbg !694
  %498 = getelementptr inbounds double, ptr %468, i64 %496, !dbg !695
  %499 = getelementptr inbounds double, ptr %468, i64 %497, !dbg !695
  %500 = load double, ptr %498, align 8, !dbg !695, !tbaa !165, !alias.scope !696, !noalias !697
  %501 = load double, ptr %499, align 8, !dbg !695, !tbaa !165, !alias.scope !696, !noalias !697
  %502 = insertelement <2 x double> poison, double %500, i64 0, !dbg !698
  %503 = insertelement <2 x double> %502, double %501, i64 1, !dbg !698
  %504 = getelementptr inbounds double, ptr %228, i64 %496, !dbg !698
  %505 = getelementptr inbounds double, ptr %228, i64 %497, !dbg !698
  %506 = load double, ptr %504, align 8, !dbg !698, !tbaa !165, !alias.scope !699
  %507 = load double, ptr %505, align 8, !dbg !698, !tbaa !165, !alias.scope !699
  %508 = insertelement <2 x double> poison, double %506, i64 0, !dbg !676
  %509 = insertelement <2 x double> %508, double %507, i64 1, !dbg !676
  %510 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %477, <2 x double> %509, <2 x double> %503), !dbg !676
  %511 = add nuw nsw i64 %481, 2, !dbg !700
  %512 = add i64 %481, 6, !dbg !700
  %513 = getelementptr inbounds double, ptr %468, i64 %511, !dbg !701
  %514 = getelementptr inbounds double, ptr %468, i64 %512, !dbg !701
  %515 = load double, ptr %513, align 8, !dbg !701, !tbaa !165, !alias.scope !702, !noalias !703
  %516 = load double, ptr %514, align 8, !dbg !701, !tbaa !165, !alias.scope !702, !noalias !703
  %517 = insertelement <2 x double> poison, double %515, i64 0, !dbg !704
  %518 = insertelement <2 x double> %517, double %516, i64 1, !dbg !704
  %519 = getelementptr inbounds double, ptr %228, i64 %511, !dbg !704
  %520 = getelementptr inbounds double, ptr %228, i64 %512, !dbg !704
  %521 = load double, ptr %519, align 8, !dbg !704, !tbaa !165, !alias.scope !705
  %522 = load double, ptr %520, align 8, !dbg !704, !tbaa !165, !alias.scope !705
  %523 = insertelement <2 x double> poison, double %521, i64 0, !dbg !676
  %524 = insertelement <2 x double> %523, double %522, i64 1, !dbg !676
  %525 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %477, <2 x double> %524, <2 x double> %518), !dbg !676
  %526 = add nuw nsw i64 %481, 3, !dbg !706
  %527 = add i64 %481, 7, !dbg !706
  %528 = getelementptr inbounds double, ptr %468, i64 %526, !dbg !707
  %529 = getelementptr inbounds double, ptr %468, i64 %527, !dbg !707
  %530 = load double, ptr %528, align 8, !dbg !707, !tbaa !165, !alias.scope !708, !noalias !709
  %531 = load double, ptr %529, align 8, !dbg !707, !tbaa !165, !alias.scope !708, !noalias !709
  %532 = insertelement <2 x double> poison, double %530, i64 0, !dbg !710
  %533 = insertelement <2 x double> %532, double %531, i64 1, !dbg !710
  %534 = getelementptr inbounds double, ptr %228, i64 %526, !dbg !710
  %535 = getelementptr inbounds double, ptr %228, i64 %527, !dbg !710
  %536 = load double, ptr %534, align 8, !dbg !710, !tbaa !165, !alias.scope !711
  %537 = load double, ptr %535, align 8, !dbg !710, !tbaa !165, !alias.scope !711
  %538 = insertelement <2 x double> poison, double %536, i64 0, !dbg !676
  %539 = insertelement <2 x double> %538, double %537, i64 1, !dbg !676
  %540 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %477, <2 x double> %539, <2 x double> %533), !dbg !676
  %541 = getelementptr inbounds double, ptr %468, i64 %481, !dbg !707
  %542 = shufflevector <2 x double> %495, <2 x double> %510, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !712
  %543 = shufflevector <2 x double> %525, <2 x double> %540, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !712
  %544 = shufflevector <4 x double> %542, <4 x double> %543, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>, !dbg !712
  store <8 x double> %544, ptr %541, align 8, !dbg !712, !tbaa !165
  %545 = add nuw i64 %479, 2
  %546 = icmp eq i64 %545, %454
  br i1 %546, label %547, label %478, !llvm.loop !713

547:                                              ; preds = %478
  br i1 %457, label %591, label %548, !dbg !676

548:                                              ; preds = %473, %547
  %549 = phi i64 [ %355, %473 ], [ %456, %547 ]
  br label %564, !dbg !676

550:                                              ; preds = %471
  call void @llvm.dbg.value(metadata i64 0, metadata !665, metadata !DIExpression()), !dbg !669
  %551 = load double, ptr %468, align 8, !dbg !715, !tbaa !165
  %552 = load double, ptr %228, align 8, !dbg !718, !tbaa !165
  %553 = tail call double @llvm.fmuladd.f64(double %463, double %552, double %551), !dbg !719
  store double %553, ptr %468, align 8, !dbg !720, !tbaa !165
  call void @llvm.dbg.value(metadata i64 1, metadata !665, metadata !DIExpression()), !dbg !669
  br i1 %359, label %472, label %554, !dbg !672, !llvm.loop !721

554:                                              ; preds = %550
  call void @llvm.dbg.value(metadata i64 1, metadata !665, metadata !DIExpression()), !dbg !669
  %555 = getelementptr inbounds double, ptr %468, i64 1, !dbg !715
  %556 = load double, ptr %555, align 8, !dbg !715, !tbaa !165
  %557 = load double, ptr %360, align 8, !dbg !718, !tbaa !165
  %558 = tail call double @llvm.fmuladd.f64(double %463, double %557, double %556), !dbg !719
  store double %558, ptr %555, align 8, !dbg !720, !tbaa !165
  call void @llvm.dbg.value(metadata i64 2, metadata !665, metadata !DIExpression()), !dbg !669
  br i1 %361, label %472, label %559, !dbg !672, !llvm.loop !721

559:                                              ; preds = %554
  call void @llvm.dbg.value(metadata i64 2, metadata !665, metadata !DIExpression()), !dbg !669
  %560 = getelementptr inbounds double, ptr %468, i64 2, !dbg !715
  %561 = load double, ptr %560, align 8, !dbg !715, !tbaa !165
  %562 = load double, ptr %362, align 8, !dbg !718, !tbaa !165
  %563 = tail call double @llvm.fmuladd.f64(double %463, double %562, double %561), !dbg !719
  store double %563, ptr %560, align 8, !dbg !720, !tbaa !165
  call void @llvm.dbg.value(metadata i64 3, metadata !665, metadata !DIExpression()), !dbg !669
  br label %472

564:                                              ; preds = %548, %564
  %565 = phi i64 [ %589, %564 ], [ %549, %548 ]
  call void @llvm.dbg.value(metadata i64 %565, metadata !665, metadata !DIExpression()), !dbg !669
  %566 = getelementptr inbounds double, ptr %468, i64 %565, !dbg !678
  %567 = load double, ptr %566, align 8, !dbg !678, !tbaa !165
  %568 = getelementptr inbounds double, ptr %228, i64 %565, !dbg !692
  %569 = load double, ptr %568, align 8, !dbg !692, !tbaa !165
  %570 = tail call double @llvm.fmuladd.f64(double %463, double %569, double %567), !dbg !723
  store double %570, ptr %566, align 8, !dbg !724, !tbaa !165
  %571 = add nuw nsw i64 %565, 1, !dbg !694
  %572 = getelementptr inbounds double, ptr %468, i64 %571, !dbg !695
  %573 = load double, ptr %572, align 8, !dbg !695, !tbaa !165
  %574 = getelementptr inbounds double, ptr %228, i64 %571, !dbg !698
  %575 = load double, ptr %574, align 8, !dbg !698, !tbaa !165
  %576 = tail call double @llvm.fmuladd.f64(double %463, double %575, double %573), !dbg !725
  store double %576, ptr %572, align 8, !dbg !726, !tbaa !165
  %577 = add nuw nsw i64 %565, 2, !dbg !700
  %578 = getelementptr inbounds double, ptr %468, i64 %577, !dbg !701
  %579 = load double, ptr %578, align 8, !dbg !701, !tbaa !165
  %580 = getelementptr inbounds double, ptr %228, i64 %577, !dbg !704
  %581 = load double, ptr %580, align 8, !dbg !704, !tbaa !165
  %582 = tail call double @llvm.fmuladd.f64(double %463, double %581, double %579), !dbg !727
  store double %582, ptr %578, align 8, !dbg !728, !tbaa !165
  %583 = add nuw nsw i64 %565, 3, !dbg !706
  %584 = getelementptr inbounds double, ptr %468, i64 %583, !dbg !707
  %585 = load double, ptr %584, align 8, !dbg !707, !tbaa !165
  %586 = getelementptr inbounds double, ptr %228, i64 %583, !dbg !710
  %587 = load double, ptr %586, align 8, !dbg !710, !tbaa !165
  %588 = tail call double @llvm.fmuladd.f64(double %463, double %587, double %585), !dbg !729
  store double %588, ptr %584, align 8, !dbg !712, !tbaa !165
  %589 = add nuw nsw i64 %565, 4, !dbg !730
  call void @llvm.dbg.value(metadata i64 %589, metadata !665, metadata !DIExpression()), !dbg !669
  %590 = icmp ult i64 %589, %146, !dbg !731
  br i1 %590, label %564, label %591, !dbg !676, !llvm.loop !732

591:                                              ; preds = %564, %547, %467, %472
  tail call void @llvm.dbg.value(metadata i64 %460, metadata !508, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !512
  %592 = icmp eq i64 %460, %9, !dbg !733
  br i1 %592, label %593, label %458, !dbg !640, !llvm.loop !734

593:                                              ; preds = %591, %204
  %594 = phi i32 [ %206, %204 ], [ %48, %591 ], !dbg !512
  tail call void @llvm.dbg.value(metadata i32 %594, metadata !507, metadata !DIExpression()), !dbg !512
  %595 = add nuw nsw i64 %47, 1, !dbg !736
  tail call void @llvm.dbg.value(metadata i64 %595, metadata !509, metadata !DIExpression()), !dbg !512
  %596 = icmp eq i64 %595, %9, !dbg !513
  %597 = add i64 %46, 1, !dbg !516
  br i1 %596, label %598, label %45, !dbg !516, !llvm.loop !737

598:                                              ; preds = %593, %4
  %599 = phi i32 [ 0, %4 ], [ %594, %593 ], !dbg !512
  %600 = add nsw i32 %2, -1, !dbg !739
  %601 = sext i32 %600 to i64, !dbg !740
  %602 = getelementptr inbounds i32, ptr %3, i64 %601, !dbg !740
  store i32 %2, ptr %602, align 4, !dbg !741, !tbaa !569
  %603 = add i32 %1, 1, !dbg !742
  %604 = mul i32 %600, %603, !dbg !742
  %605 = sext i32 %604 to i64, !dbg !744
  %606 = getelementptr inbounds double, ptr %0, i64 %605, !dbg !744
  %607 = load double, ptr %606, align 8, !dbg !744, !tbaa !165
  %608 = fcmp oeq double %607, 0.000000e+00, !dbg !745
  %609 = select i1 %608, i32 %2, i32 %599, !dbg !746
  tail call void @llvm.dbg.value(metadata i32 %609, metadata !507, metadata !DIExpression()), !dbg !512
  ret i32 %609, !dbg !747
}

; Function Attrs: noreturn nounwind
declare !dbg !748 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dgesl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #6 !dbg !751 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !755, metadata !DIExpression()), !dbg !764
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !756, metadata !DIExpression()), !dbg !764
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !757, metadata !DIExpression()), !dbg !764
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !758, metadata !DIExpression()), !dbg !764
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !759, metadata !DIExpression()), !dbg !764
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !760, metadata !DIExpression()), !dbg !764
  %7 = icmp eq i32 %5, 0, !dbg !765
  tail call void @llvm.dbg.value(metadata i32 1, metadata !761, metadata !DIExpression()), !dbg !764
  br i1 %7, label %14, label %8, !dbg !767

8:                                                ; preds = %6
  tail call void @llvm.dbg.value(metadata i32 1, metadata !761, metadata !DIExpression()), !dbg !764
  %9 = icmp slt i32 %2, 1, !dbg !768
  br i1 %9, label %685, label %10, !dbg !772

10:                                               ; preds = %8
  %11 = sext i32 %1 to i64, !dbg !772
  %12 = add nuw i32 %2, 1, !dbg !772
  %13 = zext i32 %12 to i64, !dbg !768
  br label %439, !dbg !772

14:                                               ; preds = %6
  %15 = getelementptr double, ptr %4, i64 -1, !dbg !773
  tail call void @llvm.dbg.value(metadata i32 1, metadata !761, metadata !DIExpression()), !dbg !764
  %16 = icmp sgt i32 %2, 1, !dbg !776
  br i1 %16, label %17, label %31, !dbg !773

17:                                               ; preds = %14
  %18 = sext i32 %1 to i64, !dbg !773
  %19 = zext nneg i32 %2 to i64, !dbg !773
  %20 = zext nneg i32 %2 to i64, !dbg !776
  %21 = add nuw i32 %2, 3, !dbg !773
  %22 = zext i32 %21 to i64, !dbg !773
  %23 = shl nsw i64 %18, 3, !dbg !773
  %24 = add nsw i64 %23, 8, !dbg !773
  %25 = add nuw i32 %2, 3, !dbg !773
  %26 = zext i32 %25 to i64, !dbg !773
  %27 = getelementptr i8, ptr %4, i64 8, !dbg !773
  %28 = getelementptr i8, ptr %4, i64 40, !dbg !773
  %29 = getelementptr i8, ptr %0, i64 8, !dbg !773
  %30 = getelementptr i8, ptr %0, i64 40, !dbg !773
  br label %49, !dbg !773

31:                                               ; preds = %241, %14
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !761, metadata !DIExpression()), !dbg !764
  %32 = icmp sgt i32 %2, 0, !dbg !778
  br i1 %32, label %33, label %685, !dbg !781

33:                                               ; preds = %31
  %34 = zext nneg i32 %2 to i64, !dbg !781
  %35 = sext i32 %1 to i64, !dbg !781
  %36 = trunc i32 %2 to i2, !dbg !781
  %37 = getelementptr i8, ptr %4, i64 32, !dbg !781
  %38 = add nsw i64 %34, -1, !dbg !781
  %39 = mul nsw i64 %38, %35, !dbg !781
  %40 = shl i64 %39, 3, !dbg !781
  %41 = mul nsw i64 %35, -8, !dbg !782
  %42 = add nuw i32 %2, 3, !dbg !781
  %43 = zext i32 %42 to i64, !dbg !781
  %44 = getelementptr i8, ptr %0, i64 %40
  %45 = getelementptr i8, ptr %0, i64 %40
  %46 = getelementptr i8, ptr %45, i64 32
  %47 = getelementptr inbounds double, ptr %4, i64 1
  %48 = getelementptr inbounds double, ptr %4, i64 2
  br label %245, !dbg !781

49:                                               ; preds = %17, %241
  %50 = phi i64 [ 0, %17 ], [ %244, %241 ]
  %51 = phi i64 [ 1, %17 ], [ %242, %241 ]
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !761, metadata !DIExpression()), !dbg !764
  %52 = xor i64 %50, -1, !dbg !784
  %53 = add i64 %52, %19, !dbg !784
  %54 = sub i64 %26, %50, !dbg !784
  %55 = and i64 %54, 3, !dbg !784
  %56 = or disjoint i64 %55, 4, !dbg !784
  %57 = tail call i64 @llvm.umax.i64(i64 %53, i64 %56), !dbg !784
  %58 = xor i64 %55, -1, !dbg !784
  %59 = add i64 %57, %58, !dbg !784
  %60 = lshr i64 %59, 2, !dbg !784
  %61 = add nuw nsw i64 %60, 1, !dbg !784
  %62 = shl nuw nsw i64 %50, 3, !dbg !784
  %63 = getelementptr i8, ptr %27, i64 %62, !dbg !784
  %64 = sub i64 %22, %50, !dbg !784
  %65 = and i64 %64, 3, !dbg !784
  %66 = shl nuw nsw i64 %65, 3, !dbg !784
  %67 = getelementptr i8, ptr %63, i64 %66, !dbg !784
  %68 = getelementptr i8, ptr %28, i64 %62, !dbg !784
  %69 = xor i64 %50, -1, !dbg !784
  %70 = add i64 %69, %19, !dbg !784
  %71 = or disjoint i64 %65, 4, !dbg !784
  %72 = tail call i64 @llvm.umax.i64(i64 %70, i64 %71), !dbg !784
  %73 = xor i64 %65, -1, !dbg !784
  %74 = add i64 %72, %73, !dbg !784
  %75 = shl i64 %74, 3, !dbg !784
  %76 = and i64 %75, -32, !dbg !784
  %77 = or disjoint i64 %76, %66, !dbg !784
  %78 = getelementptr i8, ptr %68, i64 %77, !dbg !784
  %79 = mul i64 %24, %50, !dbg !784
  %80 = getelementptr i8, ptr %29, i64 %79, !dbg !784
  %81 = getelementptr i8, ptr %80, i64 %66, !dbg !784
  %82 = getelementptr i8, ptr %30, i64 %79, !dbg !784
  %83 = getelementptr i8, ptr %82, i64 %77, !dbg !784
  %84 = add nsw i64 %51, -1, !dbg !784
  %85 = getelementptr inbounds i32, ptr %3, i64 %84, !dbg !786
  %86 = load i32, ptr %85, align 4, !dbg !786, !tbaa !569
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !762, metadata !DIExpression()), !dbg !764
  %87 = sext i32 %86 to i64, !dbg !787
  %88 = getelementptr double, ptr %15, i64 %87, !dbg !787
  %89 = load double, ptr %88, align 8, !dbg !787, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %89, metadata !763, metadata !DIExpression()), !dbg !764
  %90 = zext i32 %86 to i64, !dbg !788
  %91 = icmp eq i64 %51, %90, !dbg !788
  br i1 %91, label %95, label %92, !dbg !790

92:                                               ; preds = %49
  %93 = getelementptr inbounds double, ptr %4, i64 %84, !dbg !791
  %94 = load double, ptr %93, align 8, !dbg !791, !tbaa !165
  store double %94, ptr %88, align 8, !dbg !793, !tbaa !165
  store double %89, ptr %93, align 8, !dbg !794, !tbaa !165
  br label %95, !dbg !795

95:                                               ; preds = %92, %49
  %96 = sub nsw i64 %19, %51, !dbg !796
  %97 = getelementptr inbounds double, ptr %0, i64 %51, !dbg !797
  %98 = mul nsw i64 %84, %18, !dbg !798
  %99 = getelementptr inbounds double, ptr %97, i64 %98, !dbg !799
  %100 = getelementptr inbounds double, ptr %4, i64 %51, !dbg !800
  call void @llvm.dbg.value(metadata i64 %96, metadata !655, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata double %89, metadata !660, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata ptr %99, metadata !661, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 1, metadata !662, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata ptr %100, metadata !663, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 1, metadata !664, metadata !DIExpression()), !dbg !801
  %101 = icmp slt i64 %96, 1, !dbg !803
  %102 = fcmp oeq double %89, 0.000000e+00
  %103 = or i1 %101, %102, !dbg !805
  br i1 %103, label %241, label %104, !dbg !805

104:                                              ; preds = %95
  call void @llvm.dbg.value(metadata i64 %96, metadata !668, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value)), !dbg !801
  call void @llvm.dbg.value(metadata i32 0, metadata !665, metadata !DIExpression()), !dbg !801
  %105 = and i64 %96, 3, !dbg !806
  %106 = icmp eq i64 %105, 0, !dbg !806
  br i1 %106, label %113, label %107, !dbg !807

107:                                              ; preds = %104
  %108 = and i64 %96, 3, !dbg !806
  call void @llvm.dbg.value(metadata i64 0, metadata !665, metadata !DIExpression()), !dbg !801
  %109 = load double, ptr %100, align 8, !dbg !808, !tbaa !165
  %110 = load double, ptr %99, align 8, !dbg !809, !tbaa !165
  %111 = tail call double @llvm.fmuladd.f64(double %89, double %110, double %109), !dbg !810
  store double %111, ptr %100, align 8, !dbg !811, !tbaa !165
  call void @llvm.dbg.value(metadata i64 1, metadata !665, metadata !DIExpression()), !dbg !801
  %112 = icmp eq i64 %108, 1, !dbg !806
  br i1 %112, label %113, label %201, !dbg !807, !llvm.loop !812

113:                                              ; preds = %107, %201, %208, %104
  call void @llvm.dbg.value(metadata i64 %96, metadata !665, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value)), !dbg !801
  %114 = icmp sgt i64 %96, 3, !dbg !814
  br i1 %114, label %115, label %241, !dbg !815

115:                                              ; preds = %113
  %116 = and i64 %96, 3, !dbg !815
  %117 = icmp ult i64 %59, 4, !dbg !815
  br i1 %117, label %199, label %118, !dbg !815

118:                                              ; preds = %115
  %119 = icmp ult ptr %67, %83, !dbg !815
  %120 = icmp ult ptr %81, %78, !dbg !815
  %121 = and i1 %119, %120, !dbg !815
  br i1 %121, label %199, label %122, !dbg !815

122:                                              ; preds = %118
  %123 = and i64 %61, 9223372036854775806, !dbg !815
  %124 = shl i64 %123, 2, !dbg !815
  %125 = or disjoint i64 %116, %124, !dbg !815
  %126 = insertelement <2 x double> poison, double %89, i64 0, !dbg !815
  %127 = shufflevector <2 x double> %126, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !815
  br label %128, !dbg !815

128:                                              ; preds = %128, %122
  %129 = phi i64 [ 0, %122 ], [ %195, %128 ]
  %130 = shl i64 %129, 2, !dbg !815
  %131 = or disjoint i64 %116, %130, !dbg !815
  %132 = or disjoint i64 %131, 4, !dbg !815
  %133 = getelementptr inbounds double, ptr %100, i64 %131, !dbg !816
  %134 = getelementptr inbounds double, ptr %100, i64 %132, !dbg !816
  %135 = load double, ptr %133, align 8, !dbg !816, !tbaa !165, !alias.scope !817, !noalias !820
  %136 = load double, ptr %134, align 8, !dbg !816, !tbaa !165, !alias.scope !817, !noalias !820
  %137 = insertelement <2 x double> poison, double %135, i64 0, !dbg !822
  %138 = insertelement <2 x double> %137, double %136, i64 1, !dbg !822
  %139 = getelementptr inbounds double, ptr %99, i64 %131, !dbg !822
  %140 = getelementptr inbounds double, ptr %99, i64 %132, !dbg !822
  %141 = load double, ptr %139, align 8, !dbg !822, !tbaa !165, !alias.scope !820
  %142 = load double, ptr %140, align 8, !dbg !822, !tbaa !165, !alias.scope !820
  %143 = insertelement <2 x double> poison, double %141, i64 0, !dbg !815
  %144 = insertelement <2 x double> %143, double %142, i64 1, !dbg !815
  %145 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %127, <2 x double> %144, <2 x double> %138), !dbg !815
  %146 = add nuw nsw i64 %131, 1, !dbg !823
  %147 = add i64 %131, 5, !dbg !823
  %148 = getelementptr inbounds double, ptr %100, i64 %146, !dbg !824
  %149 = getelementptr inbounds double, ptr %100, i64 %147, !dbg !824
  %150 = load double, ptr %148, align 8, !dbg !824, !tbaa !165, !alias.scope !817, !noalias !820
  %151 = load double, ptr %149, align 8, !dbg !824, !tbaa !165, !alias.scope !817, !noalias !820
  %152 = insertelement <2 x double> poison, double %150, i64 0, !dbg !825
  %153 = insertelement <2 x double> %152, double %151, i64 1, !dbg !825
  %154 = getelementptr inbounds double, ptr %99, i64 %146, !dbg !825
  %155 = getelementptr inbounds double, ptr %99, i64 %147, !dbg !825
  %156 = load double, ptr %154, align 8, !dbg !825, !tbaa !165, !alias.scope !820
  %157 = load double, ptr %155, align 8, !dbg !825, !tbaa !165, !alias.scope !820
  %158 = insertelement <2 x double> poison, double %156, i64 0, !dbg !815
  %159 = insertelement <2 x double> %158, double %157, i64 1, !dbg !815
  %160 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %127, <2 x double> %159, <2 x double> %153), !dbg !815
  %161 = add nuw nsw i64 %131, 2, !dbg !826
  %162 = add i64 %131, 6, !dbg !826
  %163 = getelementptr inbounds double, ptr %100, i64 %161, !dbg !827
  %164 = getelementptr inbounds double, ptr %100, i64 %162, !dbg !827
  %165 = load double, ptr %163, align 8, !dbg !827, !tbaa !165, !alias.scope !817, !noalias !820
  %166 = load double, ptr %164, align 8, !dbg !827, !tbaa !165, !alias.scope !817, !noalias !820
  %167 = insertelement <2 x double> poison, double %165, i64 0, !dbg !828
  %168 = insertelement <2 x double> %167, double %166, i64 1, !dbg !828
  %169 = getelementptr inbounds double, ptr %99, i64 %161, !dbg !828
  %170 = getelementptr inbounds double, ptr %99, i64 %162, !dbg !828
  %171 = load double, ptr %169, align 8, !dbg !828, !tbaa !165, !alias.scope !820
  %172 = load double, ptr %170, align 8, !dbg !828, !tbaa !165, !alias.scope !820
  %173 = insertelement <2 x double> poison, double %171, i64 0, !dbg !815
  %174 = insertelement <2 x double> %173, double %172, i64 1, !dbg !815
  %175 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %127, <2 x double> %174, <2 x double> %168), !dbg !815
  %176 = add nuw nsw i64 %131, 3, !dbg !829
  %177 = add i64 %131, 7, !dbg !829
  %178 = getelementptr inbounds double, ptr %100, i64 %176, !dbg !830
  %179 = getelementptr inbounds double, ptr %100, i64 %177, !dbg !830
  %180 = load double, ptr %178, align 8, !dbg !830, !tbaa !165, !alias.scope !817, !noalias !820
  %181 = load double, ptr %179, align 8, !dbg !830, !tbaa !165, !alias.scope !817, !noalias !820
  %182 = insertelement <2 x double> poison, double %180, i64 0, !dbg !831
  %183 = insertelement <2 x double> %182, double %181, i64 1, !dbg !831
  %184 = getelementptr inbounds double, ptr %99, i64 %176, !dbg !831
  %185 = getelementptr inbounds double, ptr %99, i64 %177, !dbg !831
  %186 = load double, ptr %184, align 8, !dbg !831, !tbaa !165, !alias.scope !820
  %187 = load double, ptr %185, align 8, !dbg !831, !tbaa !165, !alias.scope !820
  %188 = insertelement <2 x double> poison, double %186, i64 0, !dbg !815
  %189 = insertelement <2 x double> %188, double %187, i64 1, !dbg !815
  %190 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %127, <2 x double> %189, <2 x double> %183), !dbg !815
  %191 = getelementptr inbounds double, ptr %100, i64 %131, !dbg !830
  %192 = shufflevector <2 x double> %145, <2 x double> %160, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !832
  %193 = shufflevector <2 x double> %175, <2 x double> %190, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !832
  %194 = shufflevector <4 x double> %192, <4 x double> %193, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>, !dbg !832
  store <8 x double> %194, ptr %191, align 8, !dbg !832, !tbaa !165
  %195 = add nuw i64 %129, 2
  %196 = icmp eq i64 %195, %123
  br i1 %196, label %197, label %128, !llvm.loop !833

197:                                              ; preds = %128
  %198 = icmp eq i64 %61, %123, !dbg !815
  br i1 %198, label %241, label %199, !dbg !815

199:                                              ; preds = %118, %115, %197
  %200 = phi i64 [ %116, %118 ], [ %116, %115 ], [ %125, %197 ]
  br label %214, !dbg !815

201:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i64 1, metadata !665, metadata !DIExpression()), !dbg !801
  %202 = getelementptr inbounds double, ptr %100, i64 1, !dbg !808
  %203 = load double, ptr %202, align 8, !dbg !808, !tbaa !165
  %204 = getelementptr inbounds double, ptr %99, i64 1, !dbg !809
  %205 = load double, ptr %204, align 8, !dbg !809, !tbaa !165
  %206 = tail call double @llvm.fmuladd.f64(double %89, double %205, double %203), !dbg !810
  store double %206, ptr %202, align 8, !dbg !811, !tbaa !165
  call void @llvm.dbg.value(metadata i64 2, metadata !665, metadata !DIExpression()), !dbg !801
  %207 = icmp eq i64 %108, 2, !dbg !806
  br i1 %207, label %113, label %208, !dbg !807, !llvm.loop !812

208:                                              ; preds = %201
  call void @llvm.dbg.value(metadata i64 2, metadata !665, metadata !DIExpression()), !dbg !801
  %209 = getelementptr inbounds double, ptr %100, i64 2, !dbg !808
  %210 = load double, ptr %209, align 8, !dbg !808, !tbaa !165
  %211 = getelementptr inbounds double, ptr %99, i64 2, !dbg !809
  %212 = load double, ptr %211, align 8, !dbg !809, !tbaa !165
  %213 = tail call double @llvm.fmuladd.f64(double %89, double %212, double %210), !dbg !810
  store double %213, ptr %209, align 8, !dbg !811, !tbaa !165
  call void @llvm.dbg.value(metadata i64 3, metadata !665, metadata !DIExpression()), !dbg !801
  br label %113

214:                                              ; preds = %199, %214
  %215 = phi i64 [ %239, %214 ], [ %200, %199 ]
  call void @llvm.dbg.value(metadata i64 %215, metadata !665, metadata !DIExpression()), !dbg !801
  %216 = getelementptr inbounds double, ptr %100, i64 %215, !dbg !816
  %217 = load double, ptr %216, align 8, !dbg !816, !tbaa !165
  %218 = getelementptr inbounds double, ptr %99, i64 %215, !dbg !822
  %219 = load double, ptr %218, align 8, !dbg !822, !tbaa !165
  %220 = tail call double @llvm.fmuladd.f64(double %89, double %219, double %217), !dbg !835
  store double %220, ptr %216, align 8, !dbg !836, !tbaa !165
  %221 = add nuw nsw i64 %215, 1, !dbg !823
  %222 = getelementptr inbounds double, ptr %100, i64 %221, !dbg !824
  %223 = load double, ptr %222, align 8, !dbg !824, !tbaa !165
  %224 = getelementptr inbounds double, ptr %99, i64 %221, !dbg !825
  %225 = load double, ptr %224, align 8, !dbg !825, !tbaa !165
  %226 = tail call double @llvm.fmuladd.f64(double %89, double %225, double %223), !dbg !837
  store double %226, ptr %222, align 8, !dbg !838, !tbaa !165
  %227 = add nuw nsw i64 %215, 2, !dbg !826
  %228 = getelementptr inbounds double, ptr %100, i64 %227, !dbg !827
  %229 = load double, ptr %228, align 8, !dbg !827, !tbaa !165
  %230 = getelementptr inbounds double, ptr %99, i64 %227, !dbg !828
  %231 = load double, ptr %230, align 8, !dbg !828, !tbaa !165
  %232 = tail call double @llvm.fmuladd.f64(double %89, double %231, double %229), !dbg !839
  store double %232, ptr %228, align 8, !dbg !840, !tbaa !165
  %233 = add nuw nsw i64 %215, 3, !dbg !829
  %234 = getelementptr inbounds double, ptr %100, i64 %233, !dbg !830
  %235 = load double, ptr %234, align 8, !dbg !830, !tbaa !165
  %236 = getelementptr inbounds double, ptr %99, i64 %233, !dbg !831
  %237 = load double, ptr %236, align 8, !dbg !831, !tbaa !165
  %238 = tail call double @llvm.fmuladd.f64(double %89, double %237, double %235), !dbg !841
  store double %238, ptr %234, align 8, !dbg !832, !tbaa !165
  %239 = add nuw nsw i64 %215, 4, !dbg !842
  call void @llvm.dbg.value(metadata i64 %239, metadata !665, metadata !DIExpression()), !dbg !801
  %240 = icmp ult i64 %239, %96, !dbg !814
  br i1 %240, label %214, label %241, !dbg !815, !llvm.loop !843

241:                                              ; preds = %214, %197, %95, %113
  %242 = add nuw nsw i64 %51, 1, !dbg !844
  tail call void @llvm.dbg.value(metadata i64 %242, metadata !761, metadata !DIExpression()), !dbg !764
  %243 = icmp eq i64 %242, %20, !dbg !776
  %244 = add i64 %50, 1, !dbg !773
  br i1 %243, label %31, label %49, !dbg !773, !llvm.loop !845

245:                                              ; preds = %33, %429
  %246 = phi i64 [ 0, %33 ], [ %432, %429 ]
  %247 = phi i2 [ 0, %33 ], [ %431, %429 ]
  %248 = phi i64 [ %34, %33 ], [ %278, %429 ]
  tail call void @llvm.dbg.value(metadata i64 %248, metadata !761, metadata !DIExpression()), !dbg !764
  %249 = xor i64 %246, -1, !dbg !782
  %250 = add i64 %249, %34, !dbg !782
  %251 = sub i64 %43, %246, !dbg !782
  %252 = and i64 %251, 3, !dbg !782
  %253 = or disjoint i64 %252, 4, !dbg !782
  %254 = tail call i64 @llvm.umax.i64(i64 %250, i64 %253), !dbg !782
  %255 = xor i64 %252, -1, !dbg !782
  %256 = add i64 %254, %255, !dbg !782
  %257 = lshr i64 %256, 2, !dbg !782
  %258 = add nuw nsw i64 %257, 1, !dbg !782
  %259 = xor i2 %247, -1, !dbg !782
  %260 = add i2 %259, %36, !dbg !782
  %261 = zext i2 %260 to i64, !dbg !782
  %262 = shl nuw nsw i64 %261, 3, !dbg !782
  %263 = getelementptr i8, ptr %4, i64 %262, !dbg !782
  %264 = sub i64 %38, %246, !dbg !782
  %265 = or disjoint i64 %261, 4, !dbg !782
  %266 = tail call i64 @llvm.umax.i64(i64 %264, i64 %265), !dbg !782
  %267 = xor i64 %261, -1, !dbg !782
  %268 = add i64 %266, %267, !dbg !782
  %269 = shl i64 %268, 3, !dbg !782
  %270 = and i64 %269, -32, !dbg !782
  %271 = or disjoint i64 %270, %262, !dbg !782
  %272 = getelementptr i8, ptr %37, i64 %271, !dbg !782
  %273 = mul i64 %41, %246, !dbg !782
  %274 = getelementptr i8, ptr %44, i64 %273, !dbg !782
  %275 = getelementptr i8, ptr %274, i64 %262, !dbg !782
  %276 = getelementptr i8, ptr %46, i64 %273, !dbg !782
  %277 = getelementptr i8, ptr %276, i64 %271, !dbg !782
  %278 = add nsw i64 %248, -1, !dbg !782
  %279 = trunc i64 %278 to i32, !dbg !782
  %280 = getelementptr inbounds double, ptr %4, i64 %278, !dbg !847
  %281 = load double, ptr %280, align 8, !dbg !847, !tbaa !165
  %282 = mul nsw i64 %278, %35, !dbg !848
  %283 = mul nsw i32 %279, %1, !dbg !848
  %284 = sext i32 %283 to i64, !dbg !849
  %285 = getelementptr double, ptr %0, i64 %278, !dbg !850
  %286 = getelementptr double, ptr %285, i64 %284, !dbg !850
  %287 = load double, ptr %286, align 8, !dbg !850, !tbaa !165
  %288 = fdiv double %281, %287, !dbg !851
  store double %288, ptr %280, align 8, !dbg !852, !tbaa !165
  %289 = fneg double %288, !dbg !853
  tail call void @llvm.dbg.value(metadata double %289, metadata !763, metadata !DIExpression()), !dbg !764
  %290 = getelementptr inbounds double, ptr %0, i64 %282, !dbg !854
  call void @llvm.dbg.value(metadata i64 %278, metadata !655, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata double %289, metadata !660, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata ptr %290, metadata !661, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i32 1, metadata !662, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata ptr %4, metadata !663, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i32 1, metadata !664, metadata !DIExpression()), !dbg !855
  %291 = icmp eq i64 %278, 0, !dbg !857
  %292 = fcmp oeq double %288, 0.000000e+00
  %293 = or i1 %291, %292, !dbg !858
  br i1 %293, label %429, label %294, !dbg !858

294:                                              ; preds = %245
  %295 = and i32 %279, 3
  call void @llvm.dbg.value(metadata i32 %295, metadata !668, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i32 0, metadata !665, metadata !DIExpression()), !dbg !855
  %296 = icmp eq i32 %295, 0, !dbg !859
  br i1 %296, label %303, label %297, !dbg !860

297:                                              ; preds = %294
  %298 = and i64 %278, 3, !dbg !859
  call void @llvm.dbg.value(metadata i64 0, metadata !665, metadata !DIExpression()), !dbg !855
  %299 = load double, ptr %4, align 8, !dbg !861, !tbaa !165
  %300 = load double, ptr %290, align 8, !dbg !862, !tbaa !165
  %301 = tail call double @llvm.fmuladd.f64(double %289, double %300, double %299), !dbg !863
  store double %301, ptr %4, align 8, !dbg !864, !tbaa !165
  call void @llvm.dbg.value(metadata i64 1, metadata !665, metadata !DIExpression()), !dbg !855
  %302 = icmp eq i64 %298, 1, !dbg !859
  br i1 %302, label %303, label %391, !dbg !860, !llvm.loop !865

303:                                              ; preds = %297, %391, %397, %294
  call void @llvm.dbg.value(metadata i32 %295, metadata !665, metadata !DIExpression()), !dbg !855
  %304 = icmp sgt i64 %248, 4, !dbg !867
  br i1 %304, label %305, label %429, !dbg !868

305:                                              ; preds = %303
  %306 = and i64 %278, 3, !dbg !868
  %307 = icmp ult i64 %256, 4, !dbg !868
  br i1 %307, label %389, label %308, !dbg !868

308:                                              ; preds = %305
  %309 = icmp ult ptr %263, %277, !dbg !868
  %310 = icmp ult ptr %275, %272, !dbg !868
  %311 = and i1 %309, %310, !dbg !868
  br i1 %311, label %389, label %312, !dbg !868

312:                                              ; preds = %308
  %313 = and i64 %258, 9223372036854775806, !dbg !868
  %314 = shl i64 %313, 2, !dbg !868
  %315 = or disjoint i64 %306, %314, !dbg !868
  %316 = insertelement <2 x double> poison, double %289, i64 0, !dbg !868
  %317 = shufflevector <2 x double> %316, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !868
  br label %318, !dbg !868

318:                                              ; preds = %318, %312
  %319 = phi i64 [ 0, %312 ], [ %385, %318 ]
  %320 = shl i64 %319, 2, !dbg !868
  %321 = or disjoint i64 %306, %320, !dbg !868
  %322 = or disjoint i64 %321, 4, !dbg !868
  %323 = getelementptr inbounds double, ptr %4, i64 %321, !dbg !869
  %324 = getelementptr inbounds double, ptr %4, i64 %322, !dbg !869
  %325 = load double, ptr %323, align 8, !dbg !869, !tbaa !165, !alias.scope !870, !noalias !873
  %326 = load double, ptr %324, align 8, !dbg !869, !tbaa !165, !alias.scope !870, !noalias !873
  %327 = insertelement <2 x double> poison, double %325, i64 0, !dbg !875
  %328 = insertelement <2 x double> %327, double %326, i64 1, !dbg !875
  %329 = getelementptr inbounds double, ptr %290, i64 %321, !dbg !875
  %330 = getelementptr inbounds double, ptr %290, i64 %322, !dbg !875
  %331 = load double, ptr %329, align 8, !dbg !875, !tbaa !165, !alias.scope !873
  %332 = load double, ptr %330, align 8, !dbg !875, !tbaa !165, !alias.scope !873
  %333 = insertelement <2 x double> poison, double %331, i64 0, !dbg !868
  %334 = insertelement <2 x double> %333, double %332, i64 1, !dbg !868
  %335 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %317, <2 x double> %334, <2 x double> %328), !dbg !868
  %336 = add nuw nsw i64 %321, 1, !dbg !876
  %337 = add i64 %321, 5, !dbg !876
  %338 = getelementptr inbounds double, ptr %4, i64 %336, !dbg !877
  %339 = getelementptr inbounds double, ptr %4, i64 %337, !dbg !877
  %340 = load double, ptr %338, align 8, !dbg !877, !tbaa !165, !alias.scope !870, !noalias !873
  %341 = load double, ptr %339, align 8, !dbg !877, !tbaa !165, !alias.scope !870, !noalias !873
  %342 = insertelement <2 x double> poison, double %340, i64 0, !dbg !878
  %343 = insertelement <2 x double> %342, double %341, i64 1, !dbg !878
  %344 = getelementptr inbounds double, ptr %290, i64 %336, !dbg !878
  %345 = getelementptr inbounds double, ptr %290, i64 %337, !dbg !878
  %346 = load double, ptr %344, align 8, !dbg !878, !tbaa !165, !alias.scope !873
  %347 = load double, ptr %345, align 8, !dbg !878, !tbaa !165, !alias.scope !873
  %348 = insertelement <2 x double> poison, double %346, i64 0, !dbg !868
  %349 = insertelement <2 x double> %348, double %347, i64 1, !dbg !868
  %350 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %317, <2 x double> %349, <2 x double> %343), !dbg !868
  %351 = add nuw nsw i64 %321, 2, !dbg !879
  %352 = add i64 %321, 6, !dbg !879
  %353 = getelementptr inbounds double, ptr %4, i64 %351, !dbg !880
  %354 = getelementptr inbounds double, ptr %4, i64 %352, !dbg !880
  %355 = load double, ptr %353, align 8, !dbg !880, !tbaa !165, !alias.scope !870, !noalias !873
  %356 = load double, ptr %354, align 8, !dbg !880, !tbaa !165, !alias.scope !870, !noalias !873
  %357 = insertelement <2 x double> poison, double %355, i64 0, !dbg !881
  %358 = insertelement <2 x double> %357, double %356, i64 1, !dbg !881
  %359 = getelementptr inbounds double, ptr %290, i64 %351, !dbg !881
  %360 = getelementptr inbounds double, ptr %290, i64 %352, !dbg !881
  %361 = load double, ptr %359, align 8, !dbg !881, !tbaa !165, !alias.scope !873
  %362 = load double, ptr %360, align 8, !dbg !881, !tbaa !165, !alias.scope !873
  %363 = insertelement <2 x double> poison, double %361, i64 0, !dbg !868
  %364 = insertelement <2 x double> %363, double %362, i64 1, !dbg !868
  %365 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %317, <2 x double> %364, <2 x double> %358), !dbg !868
  %366 = add nuw nsw i64 %321, 3, !dbg !882
  %367 = add i64 %321, 7, !dbg !882
  %368 = getelementptr inbounds double, ptr %4, i64 %366, !dbg !883
  %369 = getelementptr inbounds double, ptr %4, i64 %367, !dbg !883
  %370 = load double, ptr %368, align 8, !dbg !883, !tbaa !165, !alias.scope !870, !noalias !873
  %371 = load double, ptr %369, align 8, !dbg !883, !tbaa !165, !alias.scope !870, !noalias !873
  %372 = insertelement <2 x double> poison, double %370, i64 0, !dbg !884
  %373 = insertelement <2 x double> %372, double %371, i64 1, !dbg !884
  %374 = getelementptr inbounds double, ptr %290, i64 %366, !dbg !884
  %375 = getelementptr inbounds double, ptr %290, i64 %367, !dbg !884
  %376 = load double, ptr %374, align 8, !dbg !884, !tbaa !165, !alias.scope !873
  %377 = load double, ptr %375, align 8, !dbg !884, !tbaa !165, !alias.scope !873
  %378 = insertelement <2 x double> poison, double %376, i64 0, !dbg !868
  %379 = insertelement <2 x double> %378, double %377, i64 1, !dbg !868
  %380 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %317, <2 x double> %379, <2 x double> %373), !dbg !868
  %381 = getelementptr inbounds double, ptr %4, i64 %321, !dbg !883
  %382 = shufflevector <2 x double> %335, <2 x double> %350, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !885
  %383 = shufflevector <2 x double> %365, <2 x double> %380, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !885
  %384 = shufflevector <4 x double> %382, <4 x double> %383, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>, !dbg !885
  store <8 x double> %384, ptr %381, align 8, !dbg !885, !tbaa !165
  %385 = add nuw i64 %319, 2
  %386 = icmp eq i64 %385, %313
  br i1 %386, label %387, label %318, !llvm.loop !886

387:                                              ; preds = %318
  %388 = icmp eq i64 %258, %313, !dbg !868
  br i1 %388, label %429, label %389, !dbg !868

389:                                              ; preds = %308, %305, %387
  %390 = phi i64 [ %306, %308 ], [ %306, %305 ], [ %315, %387 ]
  br label %402, !dbg !868

391:                                              ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, metadata !665, metadata !DIExpression()), !dbg !855
  %392 = load double, ptr %47, align 8, !dbg !861, !tbaa !165
  %393 = getelementptr inbounds double, ptr %290, i64 1, !dbg !862
  %394 = load double, ptr %393, align 8, !dbg !862, !tbaa !165
  %395 = tail call double @llvm.fmuladd.f64(double %289, double %394, double %392), !dbg !863
  store double %395, ptr %47, align 8, !dbg !864, !tbaa !165
  call void @llvm.dbg.value(metadata i64 2, metadata !665, metadata !DIExpression()), !dbg !855
  %396 = icmp eq i64 %298, 2, !dbg !859
  br i1 %396, label %303, label %397, !dbg !860, !llvm.loop !865

397:                                              ; preds = %391
  call void @llvm.dbg.value(metadata i64 2, metadata !665, metadata !DIExpression()), !dbg !855
  %398 = load double, ptr %48, align 8, !dbg !861, !tbaa !165
  %399 = getelementptr inbounds double, ptr %290, i64 2, !dbg !862
  %400 = load double, ptr %399, align 8, !dbg !862, !tbaa !165
  %401 = tail call double @llvm.fmuladd.f64(double %289, double %400, double %398), !dbg !863
  store double %401, ptr %48, align 8, !dbg !864, !tbaa !165
  call void @llvm.dbg.value(metadata i64 3, metadata !665, metadata !DIExpression()), !dbg !855
  br label %303

402:                                              ; preds = %389, %402
  %403 = phi i64 [ %427, %402 ], [ %390, %389 ]
  call void @llvm.dbg.value(metadata i64 %403, metadata !665, metadata !DIExpression()), !dbg !855
  %404 = getelementptr inbounds double, ptr %4, i64 %403, !dbg !869
  %405 = load double, ptr %404, align 8, !dbg !869, !tbaa !165
  %406 = getelementptr inbounds double, ptr %290, i64 %403, !dbg !875
  %407 = load double, ptr %406, align 8, !dbg !875, !tbaa !165
  %408 = tail call double @llvm.fmuladd.f64(double %289, double %407, double %405), !dbg !888
  store double %408, ptr %404, align 8, !dbg !889, !tbaa !165
  %409 = add nuw nsw i64 %403, 1, !dbg !876
  %410 = getelementptr inbounds double, ptr %4, i64 %409, !dbg !877
  %411 = load double, ptr %410, align 8, !dbg !877, !tbaa !165
  %412 = getelementptr inbounds double, ptr %290, i64 %409, !dbg !878
  %413 = load double, ptr %412, align 8, !dbg !878, !tbaa !165
  %414 = tail call double @llvm.fmuladd.f64(double %289, double %413, double %411), !dbg !890
  store double %414, ptr %410, align 8, !dbg !891, !tbaa !165
  %415 = add nuw nsw i64 %403, 2, !dbg !879
  %416 = getelementptr inbounds double, ptr %4, i64 %415, !dbg !880
  %417 = load double, ptr %416, align 8, !dbg !880, !tbaa !165
  %418 = getelementptr inbounds double, ptr %290, i64 %415, !dbg !881
  %419 = load double, ptr %418, align 8, !dbg !881, !tbaa !165
  %420 = tail call double @llvm.fmuladd.f64(double %289, double %419, double %417), !dbg !892
  store double %420, ptr %416, align 8, !dbg !893, !tbaa !165
  %421 = add nuw nsw i64 %403, 3, !dbg !882
  %422 = getelementptr inbounds double, ptr %4, i64 %421, !dbg !883
  %423 = load double, ptr %422, align 8, !dbg !883, !tbaa !165
  %424 = getelementptr inbounds double, ptr %290, i64 %421, !dbg !884
  %425 = load double, ptr %424, align 8, !dbg !884, !tbaa !165
  %426 = tail call double @llvm.fmuladd.f64(double %289, double %425, double %423), !dbg !894
  store double %426, ptr %422, align 8, !dbg !885, !tbaa !165
  %427 = add nuw nsw i64 %403, 4, !dbg !895
  call void @llvm.dbg.value(metadata i64 %427, metadata !665, metadata !DIExpression()), !dbg !855
  %428 = icmp ult i64 %427, %278, !dbg !867
  br i1 %428, label %402, label %429, !dbg !868, !llvm.loop !896

429:                                              ; preds = %402, %387, %245, %303
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !761, metadata !DIExpression()), !dbg !764
  %430 = icmp sgt i64 %248, 1, !dbg !778
  %431 = add i2 %247, 1, !dbg !781
  %432 = add i64 %246, 1, !dbg !781
  br i1 %430, label %245, label %685, !dbg !781, !llvm.loop !897

433:                                              ; preds = %546
  %434 = getelementptr double, ptr %4, i64 -1, !dbg !899
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !761, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !764
  %435 = icmp eq i32 %2, 1, !dbg !901
  br i1 %435, label %685, label %436, !dbg !899

436:                                              ; preds = %433
  %437 = zext nneg i32 %2 to i64, !dbg !899
  %438 = sext i32 %1 to i64, !dbg !899
  br label %558, !dbg !899

439:                                              ; preds = %10, %546
  %440 = phi i64 [ 0, %10 ], [ %557, %546 ]
  %441 = phi i64 [ 1, %10 ], [ %555, %546 ]
  tail call void @llvm.dbg.value(metadata i64 %441, metadata !761, metadata !DIExpression()), !dbg !764
  %442 = urem i64 %440, 5, !dbg !903
  %443 = add nsw i64 %442, -1, !dbg !903
  %444 = add nsw i64 %441, -1, !dbg !903
  %445 = mul nsw i64 %444, %11, !dbg !905
  %446 = getelementptr inbounds double, ptr %0, i64 %445, !dbg !906
  call void @llvm.dbg.value(metadata i64 %444, metadata !907, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr %446, metadata !912, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i32 1, metadata !913, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr %4, metadata !914, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i32 1, metadata !915, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !916, metadata !DIExpression()), !dbg !921
  %447 = icmp ult i64 %441, 2, !dbg !923
  br i1 %447, label %546, label %448, !dbg !925

448:                                              ; preds = %439
  %449 = trunc i64 %444 to i32
  %450 = urem i32 %449, 5
  call void @llvm.dbg.value(metadata i32 %450, metadata !920, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i32 0, metadata !917, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !916, metadata !DIExpression()), !dbg !921
  %451 = icmp eq i32 %450, 0, !dbg !926
  br i1 %451, label %474, label %452, !dbg !931

452:                                              ; preds = %448
  %453 = and i64 %442, 3, !dbg !931
  %454 = icmp ult i64 %443, 3, !dbg !931
  br i1 %454, label %457, label %455, !dbg !931

455:                                              ; preds = %452
  %456 = and i64 %442, 4, !dbg !931
  br label %480, !dbg !931

457:                                              ; preds = %480, %452
  %458 = phi double [ undef, %452 ], [ %506, %480 ]
  %459 = phi i64 [ 0, %452 ], [ %507, %480 ]
  %460 = phi double [ 0.000000e+00, %452 ], [ %506, %480 ]
  %461 = icmp eq i64 %453, 0, !dbg !931
  br i1 %461, label %474, label %462, !dbg !931

462:                                              ; preds = %457, %462
  %463 = phi i64 [ %471, %462 ], [ %459, %457 ]
  %464 = phi double [ %470, %462 ], [ %460, %457 ]
  %465 = phi i64 [ %472, %462 ], [ 0, %457 ]
  call void @llvm.dbg.value(metadata i64 %463, metadata !917, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata double %464, metadata !916, metadata !DIExpression()), !dbg !921
  %466 = getelementptr inbounds double, ptr %446, i64 %463, !dbg !932
  %467 = load double, ptr %466, align 8, !dbg !932, !tbaa !165
  %468 = getelementptr inbounds double, ptr %4, i64 %463, !dbg !934
  %469 = load double, ptr %468, align 8, !dbg !934, !tbaa !165
  %470 = tail call double @llvm.fmuladd.f64(double %467, double %469, double %464), !dbg !935
  call void @llvm.dbg.value(metadata double %470, metadata !916, metadata !DIExpression()), !dbg !921
  %471 = add nuw nsw i64 %463, 1, !dbg !936
  call void @llvm.dbg.value(metadata i64 %471, metadata !917, metadata !DIExpression()), !dbg !921
  %472 = add i64 %465, 1, !dbg !931
  %473 = icmp eq i64 %472, %453, !dbg !931
  br i1 %473, label %474, label %462, !dbg !931, !llvm.loop !937

474:                                              ; preds = %457, %462, %448
  %475 = phi double [ 0.000000e+00, %448 ], [ %458, %457 ], [ %470, %462 ], !dbg !921
  call void @llvm.dbg.value(metadata i32 %450, metadata !917, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata double %475, metadata !916, metadata !DIExpression()), !dbg !921
  %476 = zext nneg i32 %450 to i64
  %477 = icmp sgt i64 %444, %476, !dbg !939
  br i1 %477, label %478, label %546, !dbg !942

478:                                              ; preds = %474
  %479 = zext nneg i32 %450 to i64, !dbg !942
  br label %510, !dbg !942

480:                                              ; preds = %480, %455
  %481 = phi i64 [ 0, %455 ], [ %507, %480 ]
  %482 = phi double [ 0.000000e+00, %455 ], [ %506, %480 ]
  %483 = phi i64 [ 0, %455 ], [ %508, %480 ]
  call void @llvm.dbg.value(metadata i64 %481, metadata !917, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata double %482, metadata !916, metadata !DIExpression()), !dbg !921
  %484 = getelementptr inbounds double, ptr %446, i64 %481, !dbg !932
  %485 = load double, ptr %484, align 8, !dbg !932, !tbaa !165
  %486 = getelementptr inbounds double, ptr %4, i64 %481, !dbg !934
  %487 = load double, ptr %486, align 8, !dbg !934, !tbaa !165
  %488 = tail call double @llvm.fmuladd.f64(double %485, double %487, double %482), !dbg !935
  call void @llvm.dbg.value(metadata double %488, metadata !916, metadata !DIExpression()), !dbg !921
  %489 = or disjoint i64 %481, 1, !dbg !936
  call void @llvm.dbg.value(metadata i64 %489, metadata !917, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i64 %489, metadata !917, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata double %488, metadata !916, metadata !DIExpression()), !dbg !921
  %490 = getelementptr inbounds double, ptr %446, i64 %489, !dbg !932
  %491 = load double, ptr %490, align 8, !dbg !932, !tbaa !165
  %492 = getelementptr inbounds double, ptr %4, i64 %489, !dbg !934
  %493 = load double, ptr %492, align 8, !dbg !934, !tbaa !165
  %494 = tail call double @llvm.fmuladd.f64(double %491, double %493, double %488), !dbg !935
  call void @llvm.dbg.value(metadata double %494, metadata !916, metadata !DIExpression()), !dbg !921
  %495 = or disjoint i64 %481, 2, !dbg !936
  call void @llvm.dbg.value(metadata i64 %495, metadata !917, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i64 %495, metadata !917, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata double %494, metadata !916, metadata !DIExpression()), !dbg !921
  %496 = getelementptr inbounds double, ptr %446, i64 %495, !dbg !932
  %497 = load double, ptr %496, align 8, !dbg !932, !tbaa !165
  %498 = getelementptr inbounds double, ptr %4, i64 %495, !dbg !934
  %499 = load double, ptr %498, align 8, !dbg !934, !tbaa !165
  %500 = tail call double @llvm.fmuladd.f64(double %497, double %499, double %494), !dbg !935
  call void @llvm.dbg.value(metadata double %500, metadata !916, metadata !DIExpression()), !dbg !921
  %501 = or disjoint i64 %481, 3, !dbg !936
  call void @llvm.dbg.value(metadata i64 %501, metadata !917, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i64 %501, metadata !917, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata double %500, metadata !916, metadata !DIExpression()), !dbg !921
  %502 = getelementptr inbounds double, ptr %446, i64 %501, !dbg !932
  %503 = load double, ptr %502, align 8, !dbg !932, !tbaa !165
  %504 = getelementptr inbounds double, ptr %4, i64 %501, !dbg !934
  %505 = load double, ptr %504, align 8, !dbg !934, !tbaa !165
  %506 = tail call double @llvm.fmuladd.f64(double %503, double %505, double %500), !dbg !935
  call void @llvm.dbg.value(metadata double %506, metadata !916, metadata !DIExpression()), !dbg !921
  %507 = add nuw nsw i64 %481, 4, !dbg !936
  call void @llvm.dbg.value(metadata i64 %507, metadata !917, metadata !DIExpression()), !dbg !921
  %508 = add i64 %483, 4, !dbg !931
  %509 = icmp eq i64 %508, %456, !dbg !931
  br i1 %509, label %457, label %480, !dbg !931, !llvm.loop !943

510:                                              ; preds = %510, %478
  %511 = phi i64 [ %479, %478 ], [ %542, %510 ]
  %512 = phi double [ %475, %478 ], [ %541, %510 ]
  call void @llvm.dbg.value(metadata i64 %511, metadata !917, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata double %512, metadata !916, metadata !DIExpression()), !dbg !921
  %513 = getelementptr inbounds double, ptr %446, i64 %511, !dbg !945
  %514 = load double, ptr %513, align 8, !dbg !945, !tbaa !165
  %515 = getelementptr inbounds double, ptr %4, i64 %511, !dbg !947
  %516 = load double, ptr %515, align 8, !dbg !947, !tbaa !165
  %517 = tail call double @llvm.fmuladd.f64(double %514, double %516, double %512), !dbg !948
  %518 = add nuw nsw i64 %511, 1, !dbg !949
  %519 = getelementptr inbounds double, ptr %446, i64 %518, !dbg !950
  %520 = load double, ptr %519, align 8, !dbg !950, !tbaa !165
  %521 = getelementptr inbounds double, ptr %4, i64 %518, !dbg !951
  %522 = load double, ptr %521, align 8, !dbg !951, !tbaa !165
  %523 = tail call double @llvm.fmuladd.f64(double %520, double %522, double %517), !dbg !952
  %524 = add nuw nsw i64 %511, 2, !dbg !953
  %525 = getelementptr inbounds double, ptr %446, i64 %524, !dbg !954
  %526 = load double, ptr %525, align 8, !dbg !954, !tbaa !165
  %527 = getelementptr inbounds double, ptr %4, i64 %524, !dbg !955
  %528 = load double, ptr %527, align 8, !dbg !955, !tbaa !165
  %529 = tail call double @llvm.fmuladd.f64(double %526, double %528, double %523), !dbg !956
  %530 = add nuw nsw i64 %511, 3, !dbg !957
  %531 = getelementptr inbounds double, ptr %446, i64 %530, !dbg !958
  %532 = load double, ptr %531, align 8, !dbg !958, !tbaa !165
  %533 = getelementptr inbounds double, ptr %4, i64 %530, !dbg !959
  %534 = load double, ptr %533, align 8, !dbg !959, !tbaa !165
  %535 = tail call double @llvm.fmuladd.f64(double %532, double %534, double %529), !dbg !960
  %536 = add nuw nsw i64 %511, 4, !dbg !961
  %537 = getelementptr inbounds double, ptr %446, i64 %536, !dbg !962
  %538 = load double, ptr %537, align 8, !dbg !962, !tbaa !165
  %539 = getelementptr inbounds double, ptr %4, i64 %536, !dbg !963
  %540 = load double, ptr %539, align 8, !dbg !963, !tbaa !165
  %541 = tail call double @llvm.fmuladd.f64(double %538, double %540, double %535), !dbg !964
  call void @llvm.dbg.value(metadata double %541, metadata !916, metadata !DIExpression()), !dbg !921
  %542 = add nuw nsw i64 %511, 5, !dbg !965
  call void @llvm.dbg.value(metadata i64 %542, metadata !917, metadata !DIExpression()), !dbg !921
  %543 = shl i64 %542, 32, !dbg !939
  %544 = ashr exact i64 %543, 32, !dbg !939
  %545 = icmp sgt i64 %444, %544, !dbg !939
  br i1 %545, label %510, label %546, !dbg !942, !llvm.loop !966

546:                                              ; preds = %510, %439, %474
  %547 = phi double [ 0.000000e+00, %439 ], [ %475, %474 ], [ %541, %510 ], !dbg !921
  tail call void @llvm.dbg.value(metadata double %547, metadata !763, metadata !DIExpression()), !dbg !764
  %548 = getelementptr inbounds double, ptr %4, i64 %444, !dbg !968
  %549 = load double, ptr %548, align 8, !dbg !968, !tbaa !165
  %550 = fsub double %549, %547, !dbg !969
  %551 = getelementptr double, ptr %0, i64 %445, !dbg !970
  %552 = getelementptr double, ptr %551, i64 %444, !dbg !970
  %553 = load double, ptr %552, align 8, !dbg !970, !tbaa !165
  %554 = fdiv double %550, %553, !dbg !971
  store double %554, ptr %548, align 8, !dbg !972, !tbaa !165
  %555 = add nuw nsw i64 %441, 1, !dbg !973
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !761, metadata !DIExpression()), !dbg !764
  %556 = icmp eq i64 %555, %13, !dbg !768
  %557 = add i64 %440, 1, !dbg !772
  br i1 %556, label %433, label %439, !dbg !772, !llvm.loop !974

558:                                              ; preds = %682, %436
  %559 = phi i64 [ %684, %682 ], [ 0, %436 ]
  %560 = phi i64 [ %563, %682 ], [ %437, %436 ]
  %561 = add i64 %559, 1, !dbg !976
  %562 = urem i64 %561, 5, !dbg !976
  %563 = add nsw i64 %560, -1, !dbg !976
  %564 = add nsw i64 %560, -2, !dbg !977
  %565 = getelementptr inbounds double, ptr %4, i64 %564, !dbg !979
  %566 = load double, ptr %565, align 8, !dbg !979, !tbaa !165
  %567 = sub nsw i64 %437, %563, !dbg !980
  %568 = getelementptr inbounds double, ptr %0, i64 %563, !dbg !981
  %569 = mul nsw i64 %564, %438, !dbg !982
  %570 = getelementptr inbounds double, ptr %568, i64 %569, !dbg !983
  %571 = getelementptr inbounds double, ptr %4, i64 %563, !dbg !984
  call void @llvm.dbg.value(metadata i64 %567, metadata !907, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata ptr %570, metadata !912, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 1, metadata !913, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata ptr %571, metadata !914, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 1, metadata !915, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !916, metadata !DIExpression()), !dbg !985
  %572 = trunc i64 %567 to i32
  %573 = urem i32 %572, 5
  call void @llvm.dbg.value(metadata i32 %573, metadata !920, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 0, metadata !917, metadata !DIExpression()), !dbg !985
  %574 = icmp eq i32 %573, 0, !dbg !987
  br i1 %574, label %599, label %575, !dbg !988

575:                                              ; preds = %558
  %576 = sub i64 %562, %561, !dbg !976
  %577 = add i64 %576, %559, !dbg !976
  %578 = and i64 %562, 3, !dbg !988
  %579 = icmp ult i64 %577, 3, !dbg !988
  br i1 %579, label %582, label %580, !dbg !988

580:                                              ; preds = %575
  %581 = and i64 %562, 4, !dbg !988
  br label %605, !dbg !988

582:                                              ; preds = %605, %575
  %583 = phi double [ undef, %575 ], [ %631, %605 ]
  %584 = phi i64 [ 0, %575 ], [ %632, %605 ]
  %585 = phi double [ 0.000000e+00, %575 ], [ %631, %605 ]
  %586 = icmp eq i64 %578, 0, !dbg !988
  br i1 %586, label %599, label %587, !dbg !988

587:                                              ; preds = %582, %587
  %588 = phi i64 [ %596, %587 ], [ %584, %582 ]
  %589 = phi double [ %595, %587 ], [ %585, %582 ]
  %590 = phi i64 [ %597, %587 ], [ 0, %582 ]
  call void @llvm.dbg.value(metadata i64 %588, metadata !917, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata double %589, metadata !916, metadata !DIExpression()), !dbg !985
  %591 = getelementptr inbounds double, ptr %570, i64 %588, !dbg !989
  %592 = load double, ptr %591, align 8, !dbg !989, !tbaa !165
  %593 = getelementptr inbounds double, ptr %571, i64 %588, !dbg !990
  %594 = load double, ptr %593, align 8, !dbg !990, !tbaa !165
  %595 = tail call double @llvm.fmuladd.f64(double %592, double %594, double %589), !dbg !991
  call void @llvm.dbg.value(metadata double %595, metadata !916, metadata !DIExpression()), !dbg !985
  %596 = add nuw nsw i64 %588, 1, !dbg !992
  call void @llvm.dbg.value(metadata i64 %596, metadata !917, metadata !DIExpression()), !dbg !985
  %597 = add i64 %590, 1, !dbg !988
  %598 = icmp eq i64 %597, %578, !dbg !988
  br i1 %598, label %599, label %587, !dbg !988, !llvm.loop !993

599:                                              ; preds = %582, %587, %558
  %600 = phi double [ 0.000000e+00, %558 ], [ %583, %582 ], [ %595, %587 ], !dbg !985
  call void @llvm.dbg.value(metadata i32 %573, metadata !917, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata double %600, metadata !916, metadata !DIExpression()), !dbg !985
  %601 = zext nneg i32 %573 to i64
  %602 = icmp sgt i64 %567, %601, !dbg !994
  br i1 %602, label %603, label %671, !dbg !995

603:                                              ; preds = %599
  %604 = zext nneg i32 %573 to i64, !dbg !995
  br label %635, !dbg !995

605:                                              ; preds = %605, %580
  %606 = phi i64 [ 0, %580 ], [ %632, %605 ]
  %607 = phi double [ 0.000000e+00, %580 ], [ %631, %605 ]
  %608 = phi i64 [ 0, %580 ], [ %633, %605 ]
  call void @llvm.dbg.value(metadata i64 %606, metadata !917, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata double %607, metadata !916, metadata !DIExpression()), !dbg !985
  %609 = getelementptr inbounds double, ptr %570, i64 %606, !dbg !989
  %610 = load double, ptr %609, align 8, !dbg !989, !tbaa !165
  %611 = getelementptr inbounds double, ptr %571, i64 %606, !dbg !990
  %612 = load double, ptr %611, align 8, !dbg !990, !tbaa !165
  %613 = tail call double @llvm.fmuladd.f64(double %610, double %612, double %607), !dbg !991
  call void @llvm.dbg.value(metadata double %613, metadata !916, metadata !DIExpression()), !dbg !985
  %614 = or disjoint i64 %606, 1, !dbg !992
  call void @llvm.dbg.value(metadata i64 %614, metadata !917, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i64 %614, metadata !917, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata double %613, metadata !916, metadata !DIExpression()), !dbg !985
  %615 = getelementptr inbounds double, ptr %570, i64 %614, !dbg !989
  %616 = load double, ptr %615, align 8, !dbg !989, !tbaa !165
  %617 = getelementptr inbounds double, ptr %571, i64 %614, !dbg !990
  %618 = load double, ptr %617, align 8, !dbg !990, !tbaa !165
  %619 = tail call double @llvm.fmuladd.f64(double %616, double %618, double %613), !dbg !991
  call void @llvm.dbg.value(metadata double %619, metadata !916, metadata !DIExpression()), !dbg !985
  %620 = or disjoint i64 %606, 2, !dbg !992
  call void @llvm.dbg.value(metadata i64 %620, metadata !917, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i64 %620, metadata !917, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata double %619, metadata !916, metadata !DIExpression()), !dbg !985
  %621 = getelementptr inbounds double, ptr %570, i64 %620, !dbg !989
  %622 = load double, ptr %621, align 8, !dbg !989, !tbaa !165
  %623 = getelementptr inbounds double, ptr %571, i64 %620, !dbg !990
  %624 = load double, ptr %623, align 8, !dbg !990, !tbaa !165
  %625 = tail call double @llvm.fmuladd.f64(double %622, double %624, double %619), !dbg !991
  call void @llvm.dbg.value(metadata double %625, metadata !916, metadata !DIExpression()), !dbg !985
  %626 = or disjoint i64 %606, 3, !dbg !992
  call void @llvm.dbg.value(metadata i64 %626, metadata !917, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i64 %626, metadata !917, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata double %625, metadata !916, metadata !DIExpression()), !dbg !985
  %627 = getelementptr inbounds double, ptr %570, i64 %626, !dbg !989
  %628 = load double, ptr %627, align 8, !dbg !989, !tbaa !165
  %629 = getelementptr inbounds double, ptr %571, i64 %626, !dbg !990
  %630 = load double, ptr %629, align 8, !dbg !990, !tbaa !165
  %631 = tail call double @llvm.fmuladd.f64(double %628, double %630, double %625), !dbg !991
  call void @llvm.dbg.value(metadata double %631, metadata !916, metadata !DIExpression()), !dbg !985
  %632 = add nuw nsw i64 %606, 4, !dbg !992
  call void @llvm.dbg.value(metadata i64 %632, metadata !917, metadata !DIExpression()), !dbg !985
  %633 = add i64 %608, 4, !dbg !988
  %634 = icmp eq i64 %633, %581, !dbg !988
  br i1 %634, label %582, label %605, !dbg !988, !llvm.loop !996

635:                                              ; preds = %635, %603
  %636 = phi i64 [ %604, %603 ], [ %667, %635 ]
  %637 = phi double [ %600, %603 ], [ %666, %635 ]
  call void @llvm.dbg.value(metadata i64 %636, metadata !917, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata double %637, metadata !916, metadata !DIExpression()), !dbg !985
  %638 = getelementptr inbounds double, ptr %570, i64 %636, !dbg !998
  %639 = load double, ptr %638, align 8, !dbg !998, !tbaa !165
  %640 = getelementptr inbounds double, ptr %571, i64 %636, !dbg !999
  %641 = load double, ptr %640, align 8, !dbg !999, !tbaa !165
  %642 = tail call double @llvm.fmuladd.f64(double %639, double %641, double %637), !dbg !1000
  %643 = add nuw nsw i64 %636, 1, !dbg !1001
  %644 = getelementptr inbounds double, ptr %570, i64 %643, !dbg !1002
  %645 = load double, ptr %644, align 8, !dbg !1002, !tbaa !165
  %646 = getelementptr inbounds double, ptr %571, i64 %643, !dbg !1003
  %647 = load double, ptr %646, align 8, !dbg !1003, !tbaa !165
  %648 = tail call double @llvm.fmuladd.f64(double %645, double %647, double %642), !dbg !1004
  %649 = add nuw nsw i64 %636, 2, !dbg !1005
  %650 = getelementptr inbounds double, ptr %570, i64 %649, !dbg !1006
  %651 = load double, ptr %650, align 8, !dbg !1006, !tbaa !165
  %652 = getelementptr inbounds double, ptr %571, i64 %649, !dbg !1007
  %653 = load double, ptr %652, align 8, !dbg !1007, !tbaa !165
  %654 = tail call double @llvm.fmuladd.f64(double %651, double %653, double %648), !dbg !1008
  %655 = add nuw nsw i64 %636, 3, !dbg !1009
  %656 = getelementptr inbounds double, ptr %570, i64 %655, !dbg !1010
  %657 = load double, ptr %656, align 8, !dbg !1010, !tbaa !165
  %658 = getelementptr inbounds double, ptr %571, i64 %655, !dbg !1011
  %659 = load double, ptr %658, align 8, !dbg !1011, !tbaa !165
  %660 = tail call double @llvm.fmuladd.f64(double %657, double %659, double %654), !dbg !1012
  %661 = add nuw nsw i64 %636, 4, !dbg !1013
  %662 = getelementptr inbounds double, ptr %570, i64 %661, !dbg !1014
  %663 = load double, ptr %662, align 8, !dbg !1014, !tbaa !165
  %664 = getelementptr inbounds double, ptr %571, i64 %661, !dbg !1015
  %665 = load double, ptr %664, align 8, !dbg !1015, !tbaa !165
  %666 = tail call double @llvm.fmuladd.f64(double %663, double %665, double %660), !dbg !1016
  call void @llvm.dbg.value(metadata double %666, metadata !916, metadata !DIExpression()), !dbg !985
  %667 = add nuw nsw i64 %636, 5, !dbg !1017
  call void @llvm.dbg.value(metadata i64 %667, metadata !917, metadata !DIExpression()), !dbg !985
  %668 = shl i64 %667, 32, !dbg !994
  %669 = ashr exact i64 %668, 32, !dbg !994
  %670 = icmp sgt i64 %567, %669, !dbg !994
  br i1 %670, label %635, label %671, !dbg !995, !llvm.loop !1018

671:                                              ; preds = %635, %599
  %672 = phi double [ %600, %599 ], [ %666, %635 ], !dbg !985
  %673 = fadd double %566, %672, !dbg !1020
  store double %673, ptr %565, align 8, !dbg !1021, !tbaa !165
  %674 = getelementptr inbounds i32, ptr %3, i64 %564, !dbg !1022
  %675 = load i32, ptr %674, align 4, !dbg !1022, !tbaa !569
  tail call void @llvm.dbg.value(metadata i32 %675, metadata !762, metadata !DIExpression()), !dbg !764
  %676 = zext i32 %675 to i64, !dbg !1023
  %677 = icmp eq i64 %563, %676, !dbg !1023
  br i1 %677, label %682, label %678, !dbg !1025

678:                                              ; preds = %671
  %679 = sext i32 %675 to i64, !dbg !1026
  %680 = getelementptr double, ptr %434, i64 %679, !dbg !1026
  %681 = load double, ptr %680, align 8, !dbg !1026, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %681, metadata !763, metadata !DIExpression()), !dbg !764
  store double %673, ptr %680, align 8, !dbg !1028, !tbaa !165
  store double %681, ptr %565, align 8, !dbg !1029, !tbaa !165
  br label %682, !dbg !1030

682:                                              ; preds = %671, %678
  tail call void @llvm.dbg.value(metadata i64 %563, metadata !761, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !764
  %683 = icmp sgt i64 %560, 2, !dbg !901
  %684 = add i64 %559, 1, !dbg !899
  br i1 %683, label %558, label %685, !dbg !899, !llvm.loop !1031

685:                                              ; preds = %682, %429, %8, %433, %31
  ret void, !dbg !1033
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1034 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @r8_abs(double noundef %0) local_unnamed_addr #4 !dbg !309 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !308, metadata !DIExpression()), !dbg !1037
  %2 = fcmp ult double %0, 0.000000e+00, !dbg !1038
  %3 = fneg double %0, !dbg !1039
  %4 = select i1 %2, double %3, double %0, !dbg !1039
  tail call void @llvm.dbg.value(metadata double %4, metadata !313, metadata !DIExpression()), !dbg !1037
  ret double %4, !dbg !1040
}

; Function Attrs: nounwind uwtable
define dso_local double @cpu_time() local_unnamed_addr #9 !dbg !220 {
  %1 = tail call i64 @clock() #16, !dbg !1041
  %2 = sitofp i64 %1 to double, !dbg !1042
  %3 = fdiv double %2, 1.000000e+06, !dbg !1043
  tail call void @llvm.dbg.value(metadata double %3, metadata !224, metadata !DIExpression()), !dbg !1044
  ret double %3, !dbg !1045
}

; Function Attrs: nounwind
declare !dbg !1046 i64 @clock() local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #6 !dbg !656 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !655, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata double %1, metadata !660, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !661, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !662, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !663, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !664, metadata !DIExpression()), !dbg !1052
  %7 = icmp slt i32 %0, 1, !dbg !1053
  %8 = fcmp oeq double %1, 0.000000e+00
  %9 = or i1 %7, %8, !dbg !1054
  br i1 %9, label %277, label %10, !dbg !1054

10:                                               ; preds = %6
  %11 = icmp ne i32 %3, 1, !dbg !1055
  %12 = icmp ne i32 %5, 1
  %13 = or i1 %11, %12, !dbg !1056
  br i1 %13, label %14, label %120, !dbg !1056

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !667, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 0, metadata !665, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !666, metadata !DIExpression()), !dbg !1052
  %15 = icmp slt i32 %5, 0, !dbg !1057
  %16 = sub nsw i32 1, %0, !dbg !1059
  %17 = mul nsw i32 %16, %5, !dbg !1057
  %18 = select i1 %15, i32 %17, i32 0, !dbg !1057
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !667, metadata !DIExpression()), !dbg !1052
  %19 = icmp slt i32 %3, 0, !dbg !1059
  %20 = mul nsw i32 %16, %3, !dbg !1059
  %21 = select i1 %19, i32 %20, i32 0, !dbg !1059
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !666, metadata !DIExpression()), !dbg !1052
  %22 = sext i32 %18 to i64, !dbg !1060
  %23 = sext i32 %5 to i64, !dbg !1060
  %24 = sext i32 %21 to i64, !dbg !1060
  %25 = sext i32 %3 to i64, !dbg !1060
  %26 = zext i32 %0 to i64, !dbg !1060
  %27 = icmp ult i32 %0, 14, !dbg !1060
  br i1 %27, label %78, label %28, !dbg !1060

28:                                               ; preds = %14
  %29 = icmp ne i32 %5, 1, !dbg !1060
  %30 = icmp ne i32 %3, 1, !dbg !1060
  %31 = or i1 %29, %30, !dbg !1060
  br i1 %31, label %78, label %32

32:                                               ; preds = %28
  %33 = shl nsw i64 %22, 3, !dbg !1060
  %34 = getelementptr i8, ptr %4, i64 %33, !dbg !1060
  %35 = add i32 %0, -1, !dbg !1060
  %36 = zext i32 %35 to i64, !dbg !1060
  %37 = shl nuw nsw i64 %36, 3, !dbg !1060
  %38 = getelementptr i8, ptr %4, i64 %33, !dbg !1060
  %39 = getelementptr i8, ptr %38, i64 %37, !dbg !1060
  %40 = getelementptr i8, ptr %39, i64 8, !dbg !1060
  %41 = shl nsw i64 %24, 3, !dbg !1060
  %42 = getelementptr i8, ptr %2, i64 %41, !dbg !1060
  %43 = getelementptr i8, ptr %2, i64 %41, !dbg !1060
  %44 = getelementptr i8, ptr %43, i64 %37, !dbg !1060
  %45 = getelementptr i8, ptr %44, i64 8, !dbg !1060
  %46 = icmp ult ptr %34, %45, !dbg !1060
  %47 = icmp ult ptr %42, %40, !dbg !1060
  %48 = and i1 %46, %47, !dbg !1060
  br i1 %48, label %78, label %49

49:                                               ; preds = %32
  %50 = and i64 %26, 4294967292, !dbg !1060
  %51 = mul nsw i64 %50, %25, !dbg !1060
  %52 = add i64 %51, %24, !dbg !1060
  %53 = mul nsw i64 %50, %23, !dbg !1060
  %54 = add i64 %53, %22, !dbg !1060
  %55 = trunc i64 %50 to i32, !dbg !1060
  %56 = insertelement <2 x double> poison, double %1, i64 0, !dbg !1060
  %57 = shufflevector <2 x double> %56, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !1060
  %58 = getelementptr double, ptr %4, i64 %22, !dbg !1060
  %59 = getelementptr double, ptr %2, i64 %24, !dbg !1060
  br label %60, !dbg !1060

60:                                               ; preds = %60, %49
  %61 = phi i64 [ 0, %49 ], [ %74, %60 ]
  %62 = mul i64 %61, %23, !dbg !1060
  %63 = mul i64 %61, %25, !dbg !1060
  %64 = getelementptr double, ptr %58, i64 %62, !dbg !1062
  %65 = getelementptr inbounds double, ptr %64, i64 2, !dbg !1062
  %66 = load <2 x double>, ptr %64, align 8, !dbg !1062, !tbaa !165, !alias.scope !1065, !noalias !1068
  %67 = load <2 x double>, ptr %65, align 8, !dbg !1062, !tbaa !165, !alias.scope !1065, !noalias !1068
  %68 = getelementptr double, ptr %59, i64 %63, !dbg !1070
  %69 = getelementptr inbounds double, ptr %68, i64 2, !dbg !1070
  %70 = load <2 x double>, ptr %68, align 8, !dbg !1070, !tbaa !165, !alias.scope !1068
  %71 = load <2 x double>, ptr %69, align 8, !dbg !1070, !tbaa !165, !alias.scope !1068
  %72 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %70, <2 x double> %66), !dbg !1071
  %73 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %71, <2 x double> %67), !dbg !1071
  store <2 x double> %72, ptr %64, align 8, !dbg !1072, !tbaa !165, !alias.scope !1065, !noalias !1068
  store <2 x double> %73, ptr %65, align 8, !dbg !1072, !tbaa !165, !alias.scope !1065, !noalias !1068
  %74 = add nuw i64 %61, 4
  %75 = icmp eq i64 %74, %50
  br i1 %75, label %76, label %60, !llvm.loop !1073

76:                                               ; preds = %60
  %77 = icmp eq i64 %50, %26, !dbg !1060
  br i1 %77, label %277, label %78, !dbg !1060

78:                                               ; preds = %32, %28, %14, %76
  %79 = phi i64 [ %24, %32 ], [ %24, %28 ], [ %24, %14 ], [ %52, %76 ]
  %80 = phi i64 [ %22, %32 ], [ %22, %28 ], [ %22, %14 ], [ %54, %76 ]
  %81 = phi i32 [ 0, %32 ], [ 0, %28 ], [ 0, %14 ], [ %55, %76 ]
  %82 = sub i32 %0, %81, !dbg !1060
  %83 = and i32 %82, 1, !dbg !1060
  %84 = icmp eq i32 %83, 0, !dbg !1060
  br i1 %84, label %94, label %85, !dbg !1060

85:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !665, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !667, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !666, metadata !DIExpression()), !dbg !1052
  %86 = getelementptr inbounds double, ptr %4, i64 %80, !dbg !1062
  %87 = load double, ptr %86, align 8, !dbg !1062, !tbaa !165
  %88 = getelementptr inbounds double, ptr %2, i64 %79, !dbg !1070
  %89 = load double, ptr %88, align 8, !dbg !1070, !tbaa !165
  %90 = tail call double @llvm.fmuladd.f64(double %1, double %89, double %87), !dbg !1071
  store double %90, ptr %86, align 8, !dbg !1072, !tbaa !165
  %91 = add i64 %79, %25, !dbg !1075
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !666, metadata !DIExpression()), !dbg !1052
  %92 = add i64 %80, %23, !dbg !1076
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !667, metadata !DIExpression()), !dbg !1052
  %93 = add nuw nsw i32 %81, 1, !dbg !1077
  tail call void @llvm.dbg.value(metadata i32 %93, metadata !665, metadata !DIExpression()), !dbg !1052
  br label %94, !dbg !1060

94:                                               ; preds = %85, %78
  %95 = phi i64 [ %79, %78 ], [ %91, %85 ]
  %96 = phi i64 [ %80, %78 ], [ %92, %85 ]
  %97 = phi i32 [ %81, %78 ], [ %93, %85 ]
  %98 = add i32 %0, -1, !dbg !1060
  %99 = icmp eq i32 %81, %98, !dbg !1060
  br i1 %99, label %277, label %100, !dbg !1060

100:                                              ; preds = %94, %100
  %101 = phi i64 [ %116, %100 ], [ %95, %94 ]
  %102 = phi i64 [ %117, %100 ], [ %96, %94 ]
  %103 = phi i32 [ %118, %100 ], [ %97, %94 ]
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !665, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !667, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata i64 %101, metadata !666, metadata !DIExpression()), !dbg !1052
  %104 = getelementptr inbounds double, ptr %4, i64 %102, !dbg !1062
  %105 = load double, ptr %104, align 8, !dbg !1062, !tbaa !165
  %106 = getelementptr inbounds double, ptr %2, i64 %101, !dbg !1070
  %107 = load double, ptr %106, align 8, !dbg !1070, !tbaa !165
  %108 = tail call double @llvm.fmuladd.f64(double %1, double %107, double %105), !dbg !1071
  store double %108, ptr %104, align 8, !dbg !1072, !tbaa !165
  %109 = add i64 %101, %25, !dbg !1075
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !666, metadata !DIExpression()), !dbg !1052
  %110 = add i64 %102, %23, !dbg !1076
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !667, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !665, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !665, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1052
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !667, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !666, metadata !DIExpression()), !dbg !1052
  %111 = getelementptr inbounds double, ptr %4, i64 %110, !dbg !1062
  %112 = load double, ptr %111, align 8, !dbg !1062, !tbaa !165
  %113 = getelementptr inbounds double, ptr %2, i64 %109, !dbg !1070
  %114 = load double, ptr %113, align 8, !dbg !1070, !tbaa !165
  %115 = tail call double @llvm.fmuladd.f64(double %1, double %114, double %112), !dbg !1071
  store double %115, ptr %111, align 8, !dbg !1072, !tbaa !165
  %116 = add i64 %109, %25, !dbg !1075
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !666, metadata !DIExpression()), !dbg !1052
  %117 = add i64 %110, %23, !dbg !1076
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !667, metadata !DIExpression()), !dbg !1052
  %118 = add nuw nsw i32 %103, 2, !dbg !1077
  tail call void @llvm.dbg.value(metadata i32 %118, metadata !665, metadata !DIExpression()), !dbg !1052
  %119 = icmp eq i32 %118, %0, !dbg !1078
  br i1 %119, label %277, label %100, !dbg !1060, !llvm.loop !1079

120:                                              ; preds = %10
  %121 = and i32 %0, 3
  tail call void @llvm.dbg.value(metadata i32 %121, metadata !668, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 0, metadata !665, metadata !DIExpression()), !dbg !1052
  %122 = icmp eq i32 %121, 0, !dbg !1080
  br i1 %122, label %123, label %232, !dbg !1081

123:                                              ; preds = %232, %237, %244, %120
  tail call void @llvm.dbg.value(metadata i32 %121, metadata !665, metadata !DIExpression()), !dbg !1052
  %124 = icmp sgt i32 %0, 3, !dbg !1082
  br i1 %124, label %125, label %277, !dbg !1083

125:                                              ; preds = %123
  %126 = and i32 %0, 3, !dbg !1083
  %127 = zext nneg i32 %126 to i64, !dbg !1083
  %128 = zext nneg i32 %0 to i64, !dbg !1083
  %129 = or disjoint i64 %127, 4, !dbg !1083
  %130 = tail call i64 @llvm.umax.i64(i64 %129, i64 %128), !dbg !1083
  %131 = xor i64 %127, -1, !dbg !1083
  %132 = add nsw i64 %130, %131, !dbg !1083
  %133 = lshr i64 %132, 2, !dbg !1083
  %134 = add nuw nsw i64 %133, 1, !dbg !1083
  %135 = icmp ult i64 %132, 12, !dbg !1083
  br i1 %135, label %230, label %136, !dbg !1083

136:                                              ; preds = %125
  %137 = shl nuw nsw i64 %127, 3, !dbg !1083
  %138 = getelementptr i8, ptr %4, i64 %137, !dbg !1083
  %139 = or disjoint i64 %127, 4, !dbg !1083
  %140 = tail call i64 @llvm.umax.i64(i64 %139, i64 %128), !dbg !1083
  %141 = xor i64 %127, -1, !dbg !1083
  %142 = add nsw i64 %140, %141, !dbg !1083
  %143 = shl nuw nsw i64 %142, 3, !dbg !1083
  %144 = and i64 %143, 9223372036854775776, !dbg !1083
  %145 = or disjoint i64 %144, %137, !dbg !1083
  %146 = add nuw i64 %145, 32, !dbg !1083
  %147 = getelementptr i8, ptr %4, i64 %146, !dbg !1083
  %148 = getelementptr i8, ptr %2, i64 %137, !dbg !1083
  %149 = getelementptr i8, ptr %2, i64 %146, !dbg !1083
  %150 = icmp ult ptr %138, %149, !dbg !1083
  %151 = icmp ult ptr %148, %147, !dbg !1083
  %152 = and i1 %150, %151, !dbg !1083
  br i1 %152, label %230, label %153, !dbg !1083

153:                                              ; preds = %136
  %154 = and i64 %134, 9223372036854775806, !dbg !1083
  %155 = shl i64 %154, 2, !dbg !1083
  %156 = or disjoint i64 %155, %127, !dbg !1083
  %157 = insertelement <2 x double> poison, double %1, i64 0, !dbg !1083
  %158 = shufflevector <2 x double> %157, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !1083
  br label %159, !dbg !1083

159:                                              ; preds = %159, %153
  %160 = phi i64 [ 0, %153 ], [ %226, %159 ]
  %161 = shl i64 %160, 2, !dbg !1083
  %162 = or disjoint i64 %161, %127, !dbg !1083
  %163 = or disjoint i64 %162, 4, !dbg !1083
  %164 = getelementptr inbounds double, ptr %4, i64 %162, !dbg !1084
  %165 = getelementptr inbounds double, ptr %4, i64 %163, !dbg !1084
  %166 = load double, ptr %164, align 8, !dbg !1084, !tbaa !165, !alias.scope !1085, !noalias !1088
  %167 = load double, ptr %165, align 8, !dbg !1084, !tbaa !165, !alias.scope !1085, !noalias !1088
  %168 = insertelement <2 x double> poison, double %166, i64 0, !dbg !1090
  %169 = insertelement <2 x double> %168, double %167, i64 1, !dbg !1090
  %170 = getelementptr inbounds double, ptr %2, i64 %162, !dbg !1090
  %171 = getelementptr inbounds double, ptr %2, i64 %163, !dbg !1090
  %172 = load double, ptr %170, align 8, !dbg !1090, !tbaa !165, !alias.scope !1088
  %173 = load double, ptr %171, align 8, !dbg !1090, !tbaa !165, !alias.scope !1088
  %174 = insertelement <2 x double> poison, double %172, i64 0, !dbg !1083
  %175 = insertelement <2 x double> %174, double %173, i64 1, !dbg !1083
  %176 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %158, <2 x double> %175, <2 x double> %169), !dbg !1083
  %177 = add nuw nsw i64 %162, 1, !dbg !1091
  %178 = add i64 %162, 5, !dbg !1091
  %179 = getelementptr inbounds double, ptr %4, i64 %177, !dbg !1092
  %180 = getelementptr inbounds double, ptr %4, i64 %178, !dbg !1092
  %181 = load double, ptr %179, align 8, !dbg !1092, !tbaa !165, !alias.scope !1085, !noalias !1088
  %182 = load double, ptr %180, align 8, !dbg !1092, !tbaa !165, !alias.scope !1085, !noalias !1088
  %183 = insertelement <2 x double> poison, double %181, i64 0, !dbg !1093
  %184 = insertelement <2 x double> %183, double %182, i64 1, !dbg !1093
  %185 = getelementptr inbounds double, ptr %2, i64 %177, !dbg !1093
  %186 = getelementptr inbounds double, ptr %2, i64 %178, !dbg !1093
  %187 = load double, ptr %185, align 8, !dbg !1093, !tbaa !165, !alias.scope !1088
  %188 = load double, ptr %186, align 8, !dbg !1093, !tbaa !165, !alias.scope !1088
  %189 = insertelement <2 x double> poison, double %187, i64 0, !dbg !1083
  %190 = insertelement <2 x double> %189, double %188, i64 1, !dbg !1083
  %191 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %158, <2 x double> %190, <2 x double> %184), !dbg !1083
  %192 = add nuw nsw i64 %162, 2, !dbg !1094
  %193 = add i64 %162, 6, !dbg !1094
  %194 = getelementptr inbounds double, ptr %4, i64 %192, !dbg !1095
  %195 = getelementptr inbounds double, ptr %4, i64 %193, !dbg !1095
  %196 = load double, ptr %194, align 8, !dbg !1095, !tbaa !165, !alias.scope !1085, !noalias !1088
  %197 = load double, ptr %195, align 8, !dbg !1095, !tbaa !165, !alias.scope !1085, !noalias !1088
  %198 = insertelement <2 x double> poison, double %196, i64 0, !dbg !1096
  %199 = insertelement <2 x double> %198, double %197, i64 1, !dbg !1096
  %200 = getelementptr inbounds double, ptr %2, i64 %192, !dbg !1096
  %201 = getelementptr inbounds double, ptr %2, i64 %193, !dbg !1096
  %202 = load double, ptr %200, align 8, !dbg !1096, !tbaa !165, !alias.scope !1088
  %203 = load double, ptr %201, align 8, !dbg !1096, !tbaa !165, !alias.scope !1088
  %204 = insertelement <2 x double> poison, double %202, i64 0, !dbg !1083
  %205 = insertelement <2 x double> %204, double %203, i64 1, !dbg !1083
  %206 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %158, <2 x double> %205, <2 x double> %199), !dbg !1083
  %207 = add nuw nsw i64 %162, 3, !dbg !1097
  %208 = add i64 %162, 7, !dbg !1097
  %209 = getelementptr inbounds double, ptr %4, i64 %207, !dbg !1098
  %210 = getelementptr inbounds double, ptr %4, i64 %208, !dbg !1098
  %211 = load double, ptr %209, align 8, !dbg !1098, !tbaa !165, !alias.scope !1085, !noalias !1088
  %212 = load double, ptr %210, align 8, !dbg !1098, !tbaa !165, !alias.scope !1085, !noalias !1088
  %213 = insertelement <2 x double> poison, double %211, i64 0, !dbg !1099
  %214 = insertelement <2 x double> %213, double %212, i64 1, !dbg !1099
  %215 = getelementptr inbounds double, ptr %2, i64 %207, !dbg !1099
  %216 = getelementptr inbounds double, ptr %2, i64 %208, !dbg !1099
  %217 = load double, ptr %215, align 8, !dbg !1099, !tbaa !165, !alias.scope !1088
  %218 = load double, ptr %216, align 8, !dbg !1099, !tbaa !165, !alias.scope !1088
  %219 = insertelement <2 x double> poison, double %217, i64 0, !dbg !1083
  %220 = insertelement <2 x double> %219, double %218, i64 1, !dbg !1083
  %221 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %158, <2 x double> %220, <2 x double> %214), !dbg !1083
  %222 = getelementptr inbounds double, ptr %4, i64 %162, !dbg !1098
  %223 = shufflevector <2 x double> %176, <2 x double> %191, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !1100
  %224 = shufflevector <2 x double> %206, <2 x double> %221, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !1100
  %225 = shufflevector <4 x double> %223, <4 x double> %224, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>, !dbg !1100
  store <8 x double> %225, ptr %222, align 8, !dbg !1100, !tbaa !165
  %226 = add nuw i64 %160, 2
  %227 = icmp eq i64 %226, %154
  br i1 %227, label %228, label %159, !llvm.loop !1101

228:                                              ; preds = %159
  %229 = icmp eq i64 %134, %154, !dbg !1083
  br i1 %229, label %277, label %230, !dbg !1083

230:                                              ; preds = %136, %125, %228
  %231 = phi i64 [ %127, %136 ], [ %127, %125 ], [ %156, %228 ]
  br label %250, !dbg !1083

232:                                              ; preds = %120
  tail call void @llvm.dbg.value(metadata i64 0, metadata !665, metadata !DIExpression()), !dbg !1052
  %233 = load double, ptr %4, align 8, !dbg !1103, !tbaa !165
  %234 = load double, ptr %2, align 8, !dbg !1104, !tbaa !165
  %235 = tail call double @llvm.fmuladd.f64(double %1, double %234, double %233), !dbg !1105
  store double %235, ptr %4, align 8, !dbg !1106, !tbaa !165
  tail call void @llvm.dbg.value(metadata i64 1, metadata !665, metadata !DIExpression()), !dbg !1052
  %236 = icmp eq i32 %121, 1, !dbg !1080
  br i1 %236, label %123, label %237, !dbg !1081, !llvm.loop !1107

237:                                              ; preds = %232
  tail call void @llvm.dbg.value(metadata i64 1, metadata !665, metadata !DIExpression()), !dbg !1052
  %238 = getelementptr inbounds double, ptr %4, i64 1, !dbg !1103
  %239 = load double, ptr %238, align 8, !dbg !1103, !tbaa !165
  %240 = getelementptr inbounds double, ptr %2, i64 1, !dbg !1104
  %241 = load double, ptr %240, align 8, !dbg !1104, !tbaa !165
  %242 = tail call double @llvm.fmuladd.f64(double %1, double %241, double %239), !dbg !1105
  store double %242, ptr %238, align 8, !dbg !1106, !tbaa !165
  tail call void @llvm.dbg.value(metadata i64 2, metadata !665, metadata !DIExpression()), !dbg !1052
  %243 = icmp eq i32 %121, 2, !dbg !1080
  br i1 %243, label %123, label %244, !dbg !1081, !llvm.loop !1107

244:                                              ; preds = %237
  tail call void @llvm.dbg.value(metadata i64 2, metadata !665, metadata !DIExpression()), !dbg !1052
  %245 = getelementptr inbounds double, ptr %4, i64 2, !dbg !1103
  %246 = load double, ptr %245, align 8, !dbg !1103, !tbaa !165
  %247 = getelementptr inbounds double, ptr %2, i64 2, !dbg !1104
  %248 = load double, ptr %247, align 8, !dbg !1104, !tbaa !165
  %249 = tail call double @llvm.fmuladd.f64(double %1, double %248, double %246), !dbg !1105
  store double %249, ptr %245, align 8, !dbg !1106, !tbaa !165
  tail call void @llvm.dbg.value(metadata i64 3, metadata !665, metadata !DIExpression()), !dbg !1052
  br label %123

250:                                              ; preds = %230, %250
  %251 = phi i64 [ %275, %250 ], [ %231, %230 ]
  tail call void @llvm.dbg.value(metadata i64 %251, metadata !665, metadata !DIExpression()), !dbg !1052
  %252 = getelementptr inbounds double, ptr %4, i64 %251, !dbg !1084
  %253 = load double, ptr %252, align 8, !dbg !1084, !tbaa !165
  %254 = getelementptr inbounds double, ptr %2, i64 %251, !dbg !1090
  %255 = load double, ptr %254, align 8, !dbg !1090, !tbaa !165
  %256 = tail call double @llvm.fmuladd.f64(double %1, double %255, double %253), !dbg !1109
  store double %256, ptr %252, align 8, !dbg !1110, !tbaa !165
  %257 = add nuw nsw i64 %251, 1, !dbg !1091
  %258 = getelementptr inbounds double, ptr %4, i64 %257, !dbg !1092
  %259 = load double, ptr %258, align 8, !dbg !1092, !tbaa !165
  %260 = getelementptr inbounds double, ptr %2, i64 %257, !dbg !1093
  %261 = load double, ptr %260, align 8, !dbg !1093, !tbaa !165
  %262 = tail call double @llvm.fmuladd.f64(double %1, double %261, double %259), !dbg !1111
  store double %262, ptr %258, align 8, !dbg !1112, !tbaa !165
  %263 = add nuw nsw i64 %251, 2, !dbg !1094
  %264 = getelementptr inbounds double, ptr %4, i64 %263, !dbg !1095
  %265 = load double, ptr %264, align 8, !dbg !1095, !tbaa !165
  %266 = getelementptr inbounds double, ptr %2, i64 %263, !dbg !1096
  %267 = load double, ptr %266, align 8, !dbg !1096, !tbaa !165
  %268 = tail call double @llvm.fmuladd.f64(double %1, double %267, double %265), !dbg !1113
  store double %268, ptr %264, align 8, !dbg !1114, !tbaa !165
  %269 = add nuw nsw i64 %251, 3, !dbg !1097
  %270 = getelementptr inbounds double, ptr %4, i64 %269, !dbg !1098
  %271 = load double, ptr %270, align 8, !dbg !1098, !tbaa !165
  %272 = getelementptr inbounds double, ptr %2, i64 %269, !dbg !1099
  %273 = load double, ptr %272, align 8, !dbg !1099, !tbaa !165
  %274 = tail call double @llvm.fmuladd.f64(double %1, double %273, double %271), !dbg !1115
  store double %274, ptr %270, align 8, !dbg !1100, !tbaa !165
  %275 = add nuw nsw i64 %251, 4, !dbg !1116
  tail call void @llvm.dbg.value(metadata i64 %275, metadata !665, metadata !DIExpression()), !dbg !1052
  %276 = icmp ult i64 %275, %128, !dbg !1082
  br i1 %276, label %250, label %277, !dbg !1083, !llvm.loop !1117

277:                                              ; preds = %250, %94, %100, %228, %76, %123, %6
  ret void, !dbg !1118
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local double @ddot(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #11 !dbg !908 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !907, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !912, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !913, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !914, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !915, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !916, metadata !DIExpression()), !dbg !1119
  %6 = icmp slt i32 %0, 1, !dbg !1120
  br i1 %6, label %160, label %7, !dbg !1121

7:                                                ; preds = %5
  %8 = icmp ne i32 %2, 1, !dbg !1122
  %9 = icmp ne i32 %4, 1
  %10 = or i1 %8, %9, !dbg !1123
  br i1 %10, label %11, label %48, !dbg !1123

11:                                               ; preds = %7
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !919, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata i32 0, metadata !917, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !918, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !916, metadata !DIExpression()), !dbg !1119
  %12 = icmp slt i32 %4, 0, !dbg !1124
  %13 = sub nsw i32 1, %0, !dbg !1126
  %14 = mul nsw i32 %13, %4, !dbg !1124
  %15 = select i1 %12, i32 %14, i32 0, !dbg !1124
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !919, metadata !DIExpression()), !dbg !1119
  %16 = icmp slt i32 %2, 0, !dbg !1126
  %17 = mul nsw i32 %13, %2, !dbg !1126
  %18 = select i1 %16, i32 %17, i32 0, !dbg !1126
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !918, metadata !DIExpression()), !dbg !1119
  %19 = sext i32 %15 to i64, !dbg !1127
  %20 = sext i32 %4 to i64, !dbg !1127
  %21 = sext i32 %18 to i64, !dbg !1127
  %22 = sext i32 %2 to i64, !dbg !1127
  %23 = and i32 %0, 1, !dbg !1127
  %24 = icmp eq i32 %0, 1, !dbg !1127
  br i1 %24, label %148, label %25, !dbg !1127

25:                                               ; preds = %11
  %26 = and i32 %0, 2147483646, !dbg !1127
  br label %27, !dbg !1127

27:                                               ; preds = %27, %25
  %28 = phi i64 [ %21, %25 ], [ %44, %27 ]
  %29 = phi i64 [ %19, %25 ], [ %45, %27 ]
  %30 = phi double [ 0.000000e+00, %25 ], [ %43, %27 ]
  %31 = phi i32 [ 0, %25 ], [ %46, %27 ]
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !919, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !918, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !917, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata double %30, metadata !916, metadata !DIExpression()), !dbg !1119
  %32 = getelementptr inbounds double, ptr %1, i64 %28, !dbg !1129
  %33 = load double, ptr %32, align 8, !dbg !1129, !tbaa !165
  %34 = getelementptr inbounds double, ptr %3, i64 %29, !dbg !1132
  %35 = load double, ptr %34, align 8, !dbg !1132, !tbaa !165
  %36 = tail call double @llvm.fmuladd.f64(double %33, double %35, double %30), !dbg !1133
  tail call void @llvm.dbg.value(metadata double %36, metadata !916, metadata !DIExpression()), !dbg !1119
  %37 = add i64 %28, %22, !dbg !1134
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !918, metadata !DIExpression()), !dbg !1119
  %38 = add i64 %29, %20, !dbg !1135
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !919, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !917, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1119
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !919, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !918, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !917, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1119
  tail call void @llvm.dbg.value(metadata double %36, metadata !916, metadata !DIExpression()), !dbg !1119
  %39 = getelementptr inbounds double, ptr %1, i64 %37, !dbg !1129
  %40 = load double, ptr %39, align 8, !dbg !1129, !tbaa !165
  %41 = getelementptr inbounds double, ptr %3, i64 %38, !dbg !1132
  %42 = load double, ptr %41, align 8, !dbg !1132, !tbaa !165
  %43 = tail call double @llvm.fmuladd.f64(double %40, double %42, double %36), !dbg !1133
  tail call void @llvm.dbg.value(metadata double %43, metadata !916, metadata !DIExpression()), !dbg !1119
  %44 = add i64 %37, %22, !dbg !1134
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !918, metadata !DIExpression()), !dbg !1119
  %45 = add i64 %38, %20, !dbg !1135
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !919, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !917, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1119
  %46 = add i32 %31, 2, !dbg !1127
  %47 = icmp eq i32 %46, %26, !dbg !1127
  br i1 %47, label %148, label %27, !dbg !1127, !llvm.loop !1136

48:                                               ; preds = %7
  %49 = urem i32 %0, 5
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !920, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata i32 0, metadata !917, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !916, metadata !DIExpression()), !dbg !1119
  %50 = icmp eq i32 %49, 0, !dbg !1138
  br i1 %50, label %77, label %51, !dbg !1139

51:                                               ; preds = %48
  %52 = zext nneg i32 %49 to i64, !dbg !1138
  %53 = urem i32 %0, 5, !dbg !1139
  %54 = zext nneg i32 %53 to i64, !dbg !1139
  %55 = add nsw i64 %54, -1, !dbg !1139
  %56 = and i64 %52, 3, !dbg !1139
  %57 = icmp ult i64 %55, 3, !dbg !1139
  br i1 %57, label %60, label %58, !dbg !1139

58:                                               ; preds = %51
  %59 = and i64 %52, 4, !dbg !1139
  br label %83, !dbg !1139

60:                                               ; preds = %83, %51
  %61 = phi double [ undef, %51 ], [ %109, %83 ]
  %62 = phi i64 [ 0, %51 ], [ %110, %83 ]
  %63 = phi double [ 0.000000e+00, %51 ], [ %109, %83 ]
  %64 = icmp eq i64 %56, 0, !dbg !1139
  br i1 %64, label %77, label %65, !dbg !1139

65:                                               ; preds = %60, %65
  %66 = phi i64 [ %74, %65 ], [ %62, %60 ]
  %67 = phi double [ %73, %65 ], [ %63, %60 ]
  %68 = phi i64 [ %75, %65 ], [ 0, %60 ]
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !917, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata double %67, metadata !916, metadata !DIExpression()), !dbg !1119
  %69 = getelementptr inbounds double, ptr %1, i64 %66, !dbg !1140
  %70 = load double, ptr %69, align 8, !dbg !1140, !tbaa !165
  %71 = getelementptr inbounds double, ptr %3, i64 %66, !dbg !1141
  %72 = load double, ptr %71, align 8, !dbg !1141, !tbaa !165
  %73 = tail call double @llvm.fmuladd.f64(double %70, double %72, double %67), !dbg !1142
  tail call void @llvm.dbg.value(metadata double %73, metadata !916, metadata !DIExpression()), !dbg !1119
  %74 = add nuw nsw i64 %66, 1, !dbg !1143
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !917, metadata !DIExpression()), !dbg !1119
  %75 = add i64 %68, 1, !dbg !1139
  %76 = icmp eq i64 %75, %56, !dbg !1139
  br i1 %76, label %77, label %65, !dbg !1139, !llvm.loop !1144

77:                                               ; preds = %60, %65, %48
  %78 = phi double [ 0.000000e+00, %48 ], [ %61, %60 ], [ %73, %65 ], !dbg !1119
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !917, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata double %78, metadata !916, metadata !DIExpression()), !dbg !1119
  %79 = icmp slt i32 %49, %0, !dbg !1145
  br i1 %79, label %80, label %160, !dbg !1146

80:                                               ; preds = %77
  %81 = urem i32 %0, 5, !dbg !1146
  %82 = zext nneg i32 %81 to i64, !dbg !1146
  br label %113, !dbg !1146

83:                                               ; preds = %83, %58
  %84 = phi i64 [ 0, %58 ], [ %110, %83 ]
  %85 = phi double [ 0.000000e+00, %58 ], [ %109, %83 ]
  %86 = phi i64 [ 0, %58 ], [ %111, %83 ]
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !917, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata double %85, metadata !916, metadata !DIExpression()), !dbg !1119
  %87 = getelementptr inbounds double, ptr %1, i64 %84, !dbg !1140
  %88 = load double, ptr %87, align 8, !dbg !1140, !tbaa !165
  %89 = getelementptr inbounds double, ptr %3, i64 %84, !dbg !1141
  %90 = load double, ptr %89, align 8, !dbg !1141, !tbaa !165
  %91 = tail call double @llvm.fmuladd.f64(double %88, double %90, double %85), !dbg !1142
  tail call void @llvm.dbg.value(metadata double %91, metadata !916, metadata !DIExpression()), !dbg !1119
  %92 = or disjoint i64 %84, 1, !dbg !1143
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !917, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !917, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata double %91, metadata !916, metadata !DIExpression()), !dbg !1119
  %93 = getelementptr inbounds double, ptr %1, i64 %92, !dbg !1140
  %94 = load double, ptr %93, align 8, !dbg !1140, !tbaa !165
  %95 = getelementptr inbounds double, ptr %3, i64 %92, !dbg !1141
  %96 = load double, ptr %95, align 8, !dbg !1141, !tbaa !165
  %97 = tail call double @llvm.fmuladd.f64(double %94, double %96, double %91), !dbg !1142
  tail call void @llvm.dbg.value(metadata double %97, metadata !916, metadata !DIExpression()), !dbg !1119
  %98 = or disjoint i64 %84, 2, !dbg !1143
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !917, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !917, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata double %97, metadata !916, metadata !DIExpression()), !dbg !1119
  %99 = getelementptr inbounds double, ptr %1, i64 %98, !dbg !1140
  %100 = load double, ptr %99, align 8, !dbg !1140, !tbaa !165
  %101 = getelementptr inbounds double, ptr %3, i64 %98, !dbg !1141
  %102 = load double, ptr %101, align 8, !dbg !1141, !tbaa !165
  %103 = tail call double @llvm.fmuladd.f64(double %100, double %102, double %97), !dbg !1142
  tail call void @llvm.dbg.value(metadata double %103, metadata !916, metadata !DIExpression()), !dbg !1119
  %104 = or disjoint i64 %84, 3, !dbg !1143
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !917, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !917, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata double %103, metadata !916, metadata !DIExpression()), !dbg !1119
  %105 = getelementptr inbounds double, ptr %1, i64 %104, !dbg !1140
  %106 = load double, ptr %105, align 8, !dbg !1140, !tbaa !165
  %107 = getelementptr inbounds double, ptr %3, i64 %104, !dbg !1141
  %108 = load double, ptr %107, align 8, !dbg !1141, !tbaa !165
  %109 = tail call double @llvm.fmuladd.f64(double %106, double %108, double %103), !dbg !1142
  tail call void @llvm.dbg.value(metadata double %109, metadata !916, metadata !DIExpression()), !dbg !1119
  %110 = add nuw nsw i64 %84, 4, !dbg !1143
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !917, metadata !DIExpression()), !dbg !1119
  %111 = add i64 %86, 4, !dbg !1139
  %112 = icmp eq i64 %111, %59, !dbg !1139
  br i1 %112, label %60, label %83, !dbg !1139, !llvm.loop !1147

113:                                              ; preds = %80, %113
  %114 = phi i64 [ %82, %80 ], [ %145, %113 ]
  %115 = phi double [ %78, %80 ], [ %144, %113 ]
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !917, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata double %115, metadata !916, metadata !DIExpression()), !dbg !1119
  %116 = getelementptr inbounds double, ptr %1, i64 %114, !dbg !1149
  %117 = load double, ptr %116, align 8, !dbg !1149, !tbaa !165
  %118 = getelementptr inbounds double, ptr %3, i64 %114, !dbg !1150
  %119 = load double, ptr %118, align 8, !dbg !1150, !tbaa !165
  %120 = tail call double @llvm.fmuladd.f64(double %117, double %119, double %115), !dbg !1151
  %121 = add nuw nsw i64 %114, 1, !dbg !1152
  %122 = getelementptr inbounds double, ptr %1, i64 %121, !dbg !1153
  %123 = load double, ptr %122, align 8, !dbg !1153, !tbaa !165
  %124 = getelementptr inbounds double, ptr %3, i64 %121, !dbg !1154
  %125 = load double, ptr %124, align 8, !dbg !1154, !tbaa !165
  %126 = tail call double @llvm.fmuladd.f64(double %123, double %125, double %120), !dbg !1155
  %127 = add nuw nsw i64 %114, 2, !dbg !1156
  %128 = getelementptr inbounds double, ptr %1, i64 %127, !dbg !1157
  %129 = load double, ptr %128, align 8, !dbg !1157, !tbaa !165
  %130 = getelementptr inbounds double, ptr %3, i64 %127, !dbg !1158
  %131 = load double, ptr %130, align 8, !dbg !1158, !tbaa !165
  %132 = tail call double @llvm.fmuladd.f64(double %129, double %131, double %126), !dbg !1159
  %133 = add nuw nsw i64 %114, 3, !dbg !1160
  %134 = getelementptr inbounds double, ptr %1, i64 %133, !dbg !1161
  %135 = load double, ptr %134, align 8, !dbg !1161, !tbaa !165
  %136 = getelementptr inbounds double, ptr %3, i64 %133, !dbg !1162
  %137 = load double, ptr %136, align 8, !dbg !1162, !tbaa !165
  %138 = tail call double @llvm.fmuladd.f64(double %135, double %137, double %132), !dbg !1163
  %139 = add nuw nsw i64 %114, 4, !dbg !1164
  %140 = getelementptr inbounds double, ptr %1, i64 %139, !dbg !1165
  %141 = load double, ptr %140, align 8, !dbg !1165, !tbaa !165
  %142 = getelementptr inbounds double, ptr %3, i64 %139, !dbg !1166
  %143 = load double, ptr %142, align 8, !dbg !1166, !tbaa !165
  %144 = tail call double @llvm.fmuladd.f64(double %141, double %143, double %138), !dbg !1167
  tail call void @llvm.dbg.value(metadata double %144, metadata !916, metadata !DIExpression()), !dbg !1119
  %145 = add nuw nsw i64 %114, 5, !dbg !1168
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !917, metadata !DIExpression()), !dbg !1119
  %146 = trunc i64 %145 to i32, !dbg !1145
  %147 = icmp slt i32 %146, %0, !dbg !1145
  br i1 %147, label %113, label %160, !dbg !1146, !llvm.loop !1169

148:                                              ; preds = %27, %11
  %149 = phi double [ undef, %11 ], [ %43, %27 ]
  %150 = phi i64 [ %21, %11 ], [ %44, %27 ]
  %151 = phi i64 [ %19, %11 ], [ %45, %27 ]
  %152 = phi double [ 0.000000e+00, %11 ], [ %43, %27 ]
  %153 = icmp eq i32 %23, 0, !dbg !1127
  br i1 %153, label %160, label %154, !dbg !1127

154:                                              ; preds = %148
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !919, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata i64 %150, metadata !918, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !917, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata double %152, metadata !916, metadata !DIExpression()), !dbg !1119
  %155 = getelementptr inbounds double, ptr %1, i64 %150, !dbg !1129
  %156 = load double, ptr %155, align 8, !dbg !1129, !tbaa !165
  %157 = getelementptr inbounds double, ptr %3, i64 %151, !dbg !1132
  %158 = load double, ptr %157, align 8, !dbg !1132, !tbaa !165
  %159 = tail call double @llvm.fmuladd.f64(double %156, double %158, double %152), !dbg !1133
  tail call void @llvm.dbg.value(metadata double %159, metadata !916, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %150, i64 %22), metadata !918, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1119
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %151, i64 %20), metadata !919, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1119
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !917, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1119
  br label %160, !dbg !1171

160:                                              ; preds = %113, %154, %148, %77, %5
  %161 = phi double [ 0.000000e+00, %5 ], [ %78, %77 ], [ %149, %148 ], [ %159, %154 ], [ %144, %113 ], !dbg !1119
  ret double %161, !dbg !1171
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #11 !dbg !524 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !523, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !528, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !529, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 0, metadata !533, metadata !DIExpression()), !dbg !1172
  %4 = icmp slt i32 %0, 1, !dbg !1173
  %5 = icmp slt i32 %2, 1
  %6 = or i1 %4, %5, !dbg !1174
  br i1 %6, label %117, label %7, !dbg !1174

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 1, metadata !533, metadata !DIExpression()), !dbg !1172
  %8 = icmp eq i32 %0, 1, !dbg !1175
  br i1 %8, label %117, label %9, !dbg !1177

9:                                                ; preds = %7
  %10 = icmp eq i32 %2, 1, !dbg !1178
  tail call void @llvm.dbg.value(metadata double poison, metadata !308, metadata !DIExpression()), !dbg !1179
  tail call void @llvm.dbg.value(metadata double poison, metadata !308, metadata !DIExpression()), !dbg !1181
  tail call void @llvm.dbg.value(metadata double poison, metadata !313, metadata !DIExpression()), !dbg !1179
  tail call void @llvm.dbg.value(metadata double poison, metadata !313, metadata !DIExpression()), !dbg !1181
  tail call void @llvm.dbg.value(metadata double poison, metadata !530, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata double poison, metadata !530, metadata !DIExpression()), !dbg !1172
  %11 = load double, ptr %1, align 8, !dbg !1183, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %11, metadata !308, metadata !DIExpression()), !dbg !1179
  tail call void @llvm.dbg.value(metadata double %11, metadata !308, metadata !DIExpression()), !dbg !1181
  %12 = fcmp ult double %11, 0.000000e+00, !dbg !1184
  %13 = fneg double %11, !dbg !1185
  %14 = select i1 %12, double %13, double %11, !dbg !1185
  tail call void @llvm.dbg.value(metadata double %14, metadata !313, metadata !DIExpression()), !dbg !1179
  tail call void @llvm.dbg.value(metadata double %14, metadata !313, metadata !DIExpression()), !dbg !1181
  tail call void @llvm.dbg.value(metadata double %14, metadata !530, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata double %14, metadata !530, metadata !DIExpression()), !dbg !1172
  br i1 %10, label %15, label %49, !dbg !1186

15:                                               ; preds = %9
  tail call void @llvm.dbg.value(metadata i32 1, metadata !531, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 1, metadata !533, metadata !DIExpression()), !dbg !1172
  %16 = zext nneg i32 %0 to i64, !dbg !1187
  %17 = add nsw i64 %16, -1, !dbg !1188
  %18 = and i64 %17, 1, !dbg !1188
  %19 = icmp eq i32 %0, 2, !dbg !1188
  br i1 %19, label %84, label %20, !dbg !1188

20:                                               ; preds = %15
  %21 = and i64 %17, -2, !dbg !1188
  br label %22, !dbg !1188

22:                                               ; preds = %22, %20
  %23 = phi i64 [ 1, %20 ], [ %43, %22 ]
  %24 = phi i32 [ 1, %20 ], [ %46, %22 ]
  %25 = phi double [ %14, %20 ], [ %44, %22 ]
  %26 = phi i64 [ 0, %20 ], [ %47, %22 ]
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !533, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !531, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata double %25, metadata !530, metadata !DIExpression()), !dbg !1172
  %27 = getelementptr inbounds double, ptr %1, i64 %23, !dbg !1189
  %28 = load double, ptr %27, align 8, !dbg !1189, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %28, metadata !308, metadata !DIExpression()), !dbg !1190
  %29 = fcmp ult double %28, 0.000000e+00, !dbg !1192
  %30 = fneg double %28, !dbg !1193
  %31 = select i1 %29, double %30, double %28, !dbg !1193
  tail call void @llvm.dbg.value(metadata double %31, metadata !313, metadata !DIExpression()), !dbg !1190
  %32 = fcmp olt double %25, %31, !dbg !1194
  %33 = add nuw nsw i64 %23, 1, !dbg !1195
  %34 = select i1 %32, double %31, double %25, !dbg !1196
  %35 = trunc i64 %33 to i32, !dbg !1196
  %36 = select i1 %32, i32 %35, i32 %24, !dbg !1196
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !533, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata double %34, metadata !530, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !531, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !533, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !531, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata double %34, metadata !530, metadata !DIExpression()), !dbg !1172
  %37 = getelementptr inbounds double, ptr %1, i64 %33, !dbg !1189
  %38 = load double, ptr %37, align 8, !dbg !1189, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %38, metadata !308, metadata !DIExpression()), !dbg !1190
  %39 = fcmp ult double %38, 0.000000e+00, !dbg !1192
  %40 = fneg double %38, !dbg !1193
  %41 = select i1 %39, double %40, double %38, !dbg !1193
  tail call void @llvm.dbg.value(metadata double %41, metadata !313, metadata !DIExpression()), !dbg !1190
  %42 = fcmp olt double %34, %41, !dbg !1194
  %43 = add nuw nsw i64 %23, 2, !dbg !1195
  %44 = select i1 %42, double %41, double %34, !dbg !1196
  %45 = trunc i64 %43 to i32, !dbg !1196
  %46 = select i1 %42, i32 %45, i32 %36, !dbg !1196
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !533, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata double %44, metadata !530, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !531, metadata !DIExpression()), !dbg !1172
  %47 = add i64 %26, 2, !dbg !1188
  %48 = icmp eq i64 %47, %21, !dbg !1188
  br i1 %48, label %84, label %22, !dbg !1188, !llvm.loop !1197

49:                                               ; preds = %9
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !532, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 1, metadata !531, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 1, metadata !533, metadata !DIExpression()), !dbg !1172
  %50 = zext nneg i32 %2 to i64, !dbg !1199
  %51 = add i32 %0, -1, !dbg !1199
  %52 = and i32 %51, 1, !dbg !1199
  %53 = icmp eq i32 %0, 2, !dbg !1199
  br i1 %53, label %102, label %54, !dbg !1199

54:                                               ; preds = %49
  %55 = and i32 %51, -2, !dbg !1199
  br label %56, !dbg !1199

56:                                               ; preds = %56, %54
  %57 = phi i64 [ %50, %54 ], [ %81, %56 ]
  %58 = phi i32 [ 1, %54 ], [ %80, %56 ]
  %59 = phi i32 [ 1, %54 ], [ %78, %56 ]
  %60 = phi double [ %14, %54 ], [ %79, %56 ]
  %61 = phi i32 [ 0, %54 ], [ %82, %56 ]
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !533, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !532, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !531, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata double %60, metadata !530, metadata !DIExpression()), !dbg !1172
  %62 = getelementptr inbounds double, ptr %1, i64 %57, !dbg !1201
  %63 = load double, ptr %62, align 8, !dbg !1201, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %63, metadata !308, metadata !DIExpression()), !dbg !1205
  %64 = fcmp ult double %63, 0.000000e+00, !dbg !1207
  %65 = fneg double %63, !dbg !1208
  %66 = select i1 %64, double %65, double %63, !dbg !1208
  tail call void @llvm.dbg.value(metadata double %66, metadata !313, metadata !DIExpression()), !dbg !1205
  %67 = fcmp olt double %60, %66, !dbg !1209
  %68 = add nuw nsw i32 %59, 1, !dbg !1210
  %69 = select i1 %67, double %66, double %60, !dbg !1210
  %70 = select i1 %67, i32 %68, i32 %58, !dbg !1210
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !533, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata double %69, metadata !530, metadata !DIExpression()), !dbg !1172
  %71 = add nuw i64 %57, %50, !dbg !1211
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !532, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !531, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !533, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !532, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !531, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata double %69, metadata !530, metadata !DIExpression()), !dbg !1172
  %72 = getelementptr inbounds double, ptr %1, i64 %71, !dbg !1201
  %73 = load double, ptr %72, align 8, !dbg !1201, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %73, metadata !308, metadata !DIExpression()), !dbg !1205
  %74 = fcmp ult double %73, 0.000000e+00, !dbg !1207
  %75 = fneg double %73, !dbg !1208
  %76 = select i1 %74, double %75, double %73, !dbg !1208
  tail call void @llvm.dbg.value(metadata double %76, metadata !313, metadata !DIExpression()), !dbg !1205
  %77 = fcmp olt double %69, %76, !dbg !1209
  %78 = add nuw nsw i32 %59, 2, !dbg !1210
  %79 = select i1 %77, double %76, double %69, !dbg !1210
  %80 = select i1 %77, i32 %78, i32 %70, !dbg !1210
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !533, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata double %79, metadata !530, metadata !DIExpression()), !dbg !1172
  %81 = add nuw i64 %71, %50, !dbg !1211
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !532, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !531, metadata !DIExpression()), !dbg !1172
  %82 = add i32 %61, 2, !dbg !1199
  %83 = icmp eq i32 %82, %55, !dbg !1199
  br i1 %83, label %100, label %56, !dbg !1199, !llvm.loop !1212

84:                                               ; preds = %22, %15
  %85 = phi i32 [ undef, %15 ], [ %46, %22 ]
  %86 = phi i64 [ 1, %15 ], [ %43, %22 ]
  %87 = phi i32 [ 1, %15 ], [ %46, %22 ]
  %88 = phi double [ %14, %15 ], [ %44, %22 ]
  %89 = icmp eq i64 %18, 0, !dbg !1188
  br i1 %89, label %117, label %90, !dbg !1188

90:                                               ; preds = %84
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !533, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !531, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata double %88, metadata !530, metadata !DIExpression()), !dbg !1172
  %91 = getelementptr inbounds double, ptr %1, i64 %86, !dbg !1189
  %92 = load double, ptr %91, align 8, !dbg !1189, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %92, metadata !308, metadata !DIExpression()), !dbg !1190
  %93 = fcmp ult double %92, 0.000000e+00, !dbg !1192
  %94 = fneg double %92, !dbg !1193
  %95 = select i1 %93, double %94, double %92, !dbg !1193
  tail call void @llvm.dbg.value(metadata double %95, metadata !313, metadata !DIExpression()), !dbg !1190
  %96 = fcmp olt double %88, %95, !dbg !1194
  %97 = trunc i64 %86 to i32, !dbg !1196
  %98 = add i32 %97, 1, !dbg !1196
  %99 = select i1 %96, i32 %98, i32 %87, !dbg !1196
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !533, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata double poison, metadata !530, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !531, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1172
  br label %117, !dbg !1214

100:                                              ; preds = %56
  %101 = add nuw nsw i32 %59, 3, !dbg !1210
  br label %102, !dbg !1199

102:                                              ; preds = %100, %49
  %103 = phi i32 [ undef, %49 ], [ %80, %100 ]
  %104 = phi i64 [ %50, %49 ], [ %81, %100 ]
  %105 = phi i32 [ 1, %49 ], [ %80, %100 ]
  %106 = phi i32 [ 2, %49 ], [ %101, %100 ]
  %107 = phi double [ %14, %49 ], [ %79, %100 ]
  %108 = icmp eq i32 %52, 0, !dbg !1199
  br i1 %108, label %117, label %109, !dbg !1199

109:                                              ; preds = %102
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !533, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !532, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !531, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata double %107, metadata !530, metadata !DIExpression()), !dbg !1172
  %110 = getelementptr inbounds double, ptr %1, i64 %104, !dbg !1201
  %111 = load double, ptr %110, align 8, !dbg !1201, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %111, metadata !308, metadata !DIExpression()), !dbg !1205
  %112 = fcmp ult double %111, 0.000000e+00, !dbg !1207
  %113 = fneg double %111, !dbg !1208
  %114 = select i1 %112, double %113, double %111, !dbg !1208
  tail call void @llvm.dbg.value(metadata double %114, metadata !313, metadata !DIExpression()), !dbg !1205
  %115 = fcmp olt double %107, %114, !dbg !1209
  %116 = select i1 %115, i32 %106, i32 %105, !dbg !1210
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !533, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata double poison, metadata !530, metadata !DIExpression()), !dbg !1172
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %104, i64 %50), metadata !532, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !531, metadata !DIExpression()), !dbg !1172
  br label %117, !dbg !1214

117:                                              ; preds = %109, %102, %90, %84, %7, %3
  %118 = phi i32 [ 0, %3 ], [ 1, %7 ], [ %85, %84 ], [ %99, %90 ], [ %103, %102 ], [ %116, %109 ], !dbg !1172
  ret i32 %118, !dbg !1214
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #6 !dbg !591 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !590, metadata !DIExpression()), !dbg !1215
  tail call void @llvm.dbg.value(metadata double %1, metadata !595, metadata !DIExpression()), !dbg !1215
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !596, metadata !DIExpression()), !dbg !1215
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !597, metadata !DIExpression()), !dbg !1215
  %5 = icmp slt i32 %0, 1, !dbg !1216
  br i1 %5, label %104, label %6, !dbg !1217

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 1, !dbg !1218
  br i1 %7, label %8, label %60, !dbg !1219

8:                                                ; preds = %6
  %9 = urem i32 %0, 5
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !600, metadata !DIExpression()), !dbg !1215
  tail call void @llvm.dbg.value(metadata i32 0, metadata !598, metadata !DIExpression()), !dbg !1215
  %10 = icmp eq i32 %9, 0, !dbg !1220
  br i1 %10, label %32, label %11, !dbg !1221

11:                                               ; preds = %8
  %12 = zext nneg i32 %9 to i64, !dbg !1220
  %13 = icmp ult i32 %9, 4, !dbg !1221
  br i1 %13, label %30, label %14, !dbg !1221

14:                                               ; preds = %11
  %15 = and i64 %12, 4, !dbg !1221
  %16 = insertelement <2 x double> poison, double %1, i64 0, !dbg !1221
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !1221
  br label %18, !dbg !1221

18:                                               ; preds = %18, %14
  %19 = phi i64 [ 0, %14 ], [ %26, %18 ], !dbg !1222
  %20 = getelementptr inbounds double, ptr %2, i64 %19, !dbg !1223
  %21 = getelementptr inbounds double, ptr %20, i64 2, !dbg !1223
  %22 = load <2 x double>, ptr %20, align 8, !dbg !1223, !tbaa !165
  %23 = load <2 x double>, ptr %21, align 8, !dbg !1223, !tbaa !165
  %24 = fmul <2 x double> %22, %17, !dbg !1224
  %25 = fmul <2 x double> %23, %17, !dbg !1224
  store <2 x double> %24, ptr %20, align 8, !dbg !1225, !tbaa !165
  store <2 x double> %25, ptr %21, align 8, !dbg !1225, !tbaa !165
  %26 = add nuw i64 %19, 4, !dbg !1222
  %27 = icmp eq i64 %26, %15, !dbg !1222
  br i1 %27, label %28, label %18, !dbg !1222, !llvm.loop !1226

28:                                               ; preds = %18
  %29 = icmp eq i64 %15, %12, !dbg !1221
  br i1 %29, label %32, label %30, !dbg !1221

30:                                               ; preds = %11, %28
  %31 = phi i64 [ 0, %11 ], [ %15, %28 ]
  br label %39, !dbg !1221

32:                                               ; preds = %39, %28, %8
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !598, metadata !DIExpression()), !dbg !1215
  %33 = icmp slt i32 %9, %0, !dbg !1228
  br i1 %33, label %34, label %104, !dbg !1229

34:                                               ; preds = %32
  %35 = urem i32 %0, 5, !dbg !1229
  %36 = zext nneg i32 %35 to i64, !dbg !1229
  %37 = insertelement <2 x double> poison, double %1, i64 0, !dbg !1230
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !1230
  br label %46, !dbg !1229

39:                                               ; preds = %30, %39
  %40 = phi i64 [ %44, %39 ], [ %31, %30 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !598, metadata !DIExpression()), !dbg !1215
  %41 = getelementptr inbounds double, ptr %2, i64 %40, !dbg !1223
  %42 = load double, ptr %41, align 8, !dbg !1223, !tbaa !165
  %43 = fmul double %42, %1, !dbg !1224
  store double %43, ptr %41, align 8, !dbg !1225, !tbaa !165
  %44 = add nuw nsw i64 %40, 1, !dbg !1222
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !598, metadata !DIExpression()), !dbg !1215
  %45 = icmp eq i64 %44, %12, !dbg !1220
  br i1 %45, label %32, label %39, !dbg !1221, !llvm.loop !1231

46:                                               ; preds = %34, %46
  %47 = phi i64 [ %36, %34 ], [ %57, %46 ]
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !598, metadata !DIExpression()), !dbg !1215
  %48 = getelementptr inbounds double, ptr %2, i64 %47, !dbg !1232
  %49 = load <2 x double>, ptr %48, align 8, !dbg !1232, !tbaa !165
  %50 = fmul <2 x double> %49, %38, !dbg !1230
  store <2 x double> %50, ptr %48, align 8, !dbg !1233, !tbaa !165
  %51 = getelementptr double, ptr %48, i64 2, !dbg !1234
  %52 = load <2 x double>, ptr %51, align 8, !dbg !1234, !tbaa !165
  %53 = fmul <2 x double> %52, %38, !dbg !1235
  store <2 x double> %53, ptr %51, align 8, !dbg !1236, !tbaa !165
  %54 = getelementptr double, ptr %48, i64 4, !dbg !1237
  %55 = load double, ptr %54, align 8, !dbg !1237, !tbaa !165
  %56 = fmul double %55, %1, !dbg !1238
  store double %56, ptr %54, align 8, !dbg !1239, !tbaa !165
  %57 = add nuw nsw i64 %47, 5, !dbg !1240
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !598, metadata !DIExpression()), !dbg !1215
  %58 = trunc i64 %57 to i32, !dbg !1228
  %59 = icmp slt i32 %58, %0, !dbg !1228
  br i1 %59, label %46, label %104, !dbg !1229, !llvm.loop !1241

60:                                               ; preds = %6
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !599, metadata !DIExpression()), !dbg !1215
  tail call void @llvm.dbg.value(metadata i32 0, metadata !598, metadata !DIExpression()), !dbg !1215
  %61 = icmp slt i32 %3, 0, !dbg !1243
  %62 = sub nsw i32 1, %0, !dbg !1243
  %63 = mul nsw i32 %62, %3, !dbg !1243
  %64 = select i1 %61, i32 %63, i32 0, !dbg !1243
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !599, metadata !DIExpression()), !dbg !1215
  %65 = sext i32 %64 to i64, !dbg !1245
  %66 = sext i32 %3 to i64, !dbg !1245
  %67 = and i32 %0, 3, !dbg !1245
  %68 = icmp ult i32 %0, 4, !dbg !1245
  br i1 %68, label %92, label %69, !dbg !1245

69:                                               ; preds = %60
  %70 = and i32 %0, 2147483644, !dbg !1245
  br label %71, !dbg !1245

71:                                               ; preds = %71, %69
  %72 = phi i64 [ %65, %69 ], [ %89, %71 ]
  %73 = phi i32 [ 0, %69 ], [ %90, %71 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !598, metadata !DIExpression()), !dbg !1215
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !599, metadata !DIExpression()), !dbg !1215
  %74 = getelementptr inbounds double, ptr %2, i64 %72, !dbg !1247
  %75 = load double, ptr %74, align 8, !dbg !1247, !tbaa !165
  %76 = fmul double %75, %1, !dbg !1250
  store double %76, ptr %74, align 8, !dbg !1251, !tbaa !165
  %77 = add i64 %72, %66, !dbg !1252
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !599, metadata !DIExpression()), !dbg !1215
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !598, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1215
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !598, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1215
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !599, metadata !DIExpression()), !dbg !1215
  %78 = getelementptr inbounds double, ptr %2, i64 %77, !dbg !1247
  %79 = load double, ptr %78, align 8, !dbg !1247, !tbaa !165
  %80 = fmul double %79, %1, !dbg !1250
  store double %80, ptr %78, align 8, !dbg !1251, !tbaa !165
  %81 = add i64 %77, %66, !dbg !1252
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !599, metadata !DIExpression()), !dbg !1215
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !598, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1215
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !598, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1215
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !599, metadata !DIExpression()), !dbg !1215
  %82 = getelementptr inbounds double, ptr %2, i64 %81, !dbg !1247
  %83 = load double, ptr %82, align 8, !dbg !1247, !tbaa !165
  %84 = fmul double %83, %1, !dbg !1250
  store double %84, ptr %82, align 8, !dbg !1251, !tbaa !165
  %85 = add i64 %81, %66, !dbg !1252
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !599, metadata !DIExpression()), !dbg !1215
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !598, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1215
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !598, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1215
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !599, metadata !DIExpression()), !dbg !1215
  %86 = getelementptr inbounds double, ptr %2, i64 %85, !dbg !1247
  %87 = load double, ptr %86, align 8, !dbg !1247, !tbaa !165
  %88 = fmul double %87, %1, !dbg !1250
  store double %88, ptr %86, align 8, !dbg !1251, !tbaa !165
  %89 = add i64 %85, %66, !dbg !1252
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !599, metadata !DIExpression()), !dbg !1215
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !598, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1215
  %90 = add i32 %73, 4, !dbg !1245
  %91 = icmp eq i32 %90, %70, !dbg !1245
  br i1 %91, label %92, label %71, !dbg !1245, !llvm.loop !1253

92:                                               ; preds = %71, %60
  %93 = phi i64 [ %65, %60 ], [ %89, %71 ]
  %94 = icmp eq i32 %67, 0, !dbg !1245
  br i1 %94, label %104, label %95, !dbg !1245

95:                                               ; preds = %92, %95
  %96 = phi i64 [ %101, %95 ], [ %93, %92 ]
  %97 = phi i32 [ %102, %95 ], [ 0, %92 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !598, metadata !DIExpression()), !dbg !1215
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !599, metadata !DIExpression()), !dbg !1215
  %98 = getelementptr inbounds double, ptr %2, i64 %96, !dbg !1247
  %99 = load double, ptr %98, align 8, !dbg !1247, !tbaa !165
  %100 = fmul double %99, %1, !dbg !1250
  store double %100, ptr %98, align 8, !dbg !1251, !tbaa !165
  %101 = add i64 %96, %66, !dbg !1252
  tail call void @llvm.dbg.value(metadata i64 %101, metadata !599, metadata !DIExpression()), !dbg !1215
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !598, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1215
  %102 = add i32 %97, 1, !dbg !1245
  %103 = icmp eq i32 %102, %67, !dbg !1245
  br i1 %103, label %104, label %95, !dbg !1245, !llvm.loop !1255

104:                                              ; preds = %92, %95, %46, %32, %4
  ret void, !dbg !1256
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @r8_epsilon() local_unnamed_addr #4 !dbg !1257 {
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !1259, metadata !DIExpression()), !dbg !1261
  ret double 0x3CB0000000000000, !dbg !1262
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local double @r8_random(ptr nocapture noundef %0) local_unnamed_addr #12 !dbg !419 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression()), !dbg !1263
  tail call void @llvm.dbg.value(metadata i32 4096, metadata !423, metadata !DIExpression()), !dbg !1263
  tail call void @llvm.dbg.value(metadata i32 494, metadata !428, metadata !DIExpression()), !dbg !1263
  tail call void @llvm.dbg.value(metadata i32 322, metadata !429, metadata !DIExpression()), !dbg !1263
  tail call void @llvm.dbg.value(metadata i32 2508, metadata !430, metadata !DIExpression()), !dbg !1263
  tail call void @llvm.dbg.value(metadata i32 2549, metadata !431, metadata !DIExpression()), !dbg !1263
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !432, metadata !DIExpression()), !dbg !1263
  tail call void @llvm.dbg.value(metadata double 0x3F30000000000000, metadata !433, metadata !DIExpression()), !dbg !1263
  %2 = getelementptr inbounds i32, ptr %0, i64 3, !dbg !1264
  %3 = load i32, ptr %2, align 4, !dbg !1264, !tbaa !569
  %4 = mul nsw i32 %3, 2549, !dbg !1265
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !427, metadata !DIExpression()), !dbg !1263
  %5 = sdiv i32 %4, 4096, !dbg !1266
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !426, metadata !DIExpression()), !dbg !1263
  %6 = shl nsw i32 %5, 12, !dbg !1267
  %7 = sub nsw i32 %4, %6, !dbg !1268
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !427, metadata !DIExpression()), !dbg !1263
  %8 = getelementptr inbounds i32, ptr %0, i64 2, !dbg !1269
  %9 = load i32, ptr %8, align 4, !dbg !1269, !tbaa !569
  %10 = mul nsw i32 %9, 2549, !dbg !1270
  %11 = mul nsw i32 %3, 2508, !dbg !1271
  %12 = add i32 %10, %11, !dbg !1272
  %13 = add i32 %12, %5, !dbg !1273
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !426, metadata !DIExpression()), !dbg !1263
  %14 = sdiv i32 %13, 4096, !dbg !1274
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !425, metadata !DIExpression()), !dbg !1263
  %15 = shl nsw i32 %14, 12, !dbg !1275
  %16 = sub nsw i32 %13, %15, !dbg !1276
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !426, metadata !DIExpression()), !dbg !1263
  %17 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !1277
  %18 = load i32, ptr %17, align 4, !dbg !1277, !tbaa !569
  %19 = mul nsw i32 %18, 2549, !dbg !1278
  %20 = mul nsw i32 %9, 2508, !dbg !1279
  %21 = mul nsw i32 %3, 322, !dbg !1280
  %22 = add i32 %20, %21, !dbg !1281
  %23 = add i32 %22, %19, !dbg !1282
  %24 = add i32 %23, %14, !dbg !1283
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !425, metadata !DIExpression()), !dbg !1263
  %25 = sdiv i32 %24, 4096, !dbg !1284
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !424, metadata !DIExpression()), !dbg !1263
  %26 = shl nsw i32 %25, 12, !dbg !1285
  %27 = sub nsw i32 %24, %26, !dbg !1286
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !425, metadata !DIExpression()), !dbg !1263
  %28 = load i32, ptr %0, align 4, !dbg !1287, !tbaa !569
  %29 = mul nsw i32 %28, 2549, !dbg !1288
  %30 = mul nsw i32 %18, 2508, !dbg !1289
  %31 = mul nsw i32 %9, 322, !dbg !1290
  %32 = mul nsw i32 %3, 494, !dbg !1291
  %33 = add i32 %31, %32, !dbg !1292
  %34 = add i32 %33, %30, !dbg !1293
  %35 = add i32 %34, %29, !dbg !1294
  %36 = add i32 %35, %25, !dbg !1295
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !424, metadata !DIExpression()), !dbg !1263
  %37 = srem i32 %36, 4096, !dbg !1296
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !424, metadata !DIExpression()), !dbg !1263
  store i32 %37, ptr %0, align 4, !dbg !1297, !tbaa !569
  store i32 %27, ptr %17, align 4, !dbg !1298, !tbaa !569
  store i32 %16, ptr %8, align 4, !dbg !1299, !tbaa !569
  store i32 %7, ptr %2, align 4, !dbg !1300, !tbaa !569
  %38 = sitofp i32 %37 to double, !dbg !1301
  %39 = sitofp i32 %27 to double, !dbg !1302
  %40 = sitofp i32 %16 to double, !dbg !1303
  %41 = sitofp i32 %7 to double, !dbg !1304
  %42 = tail call double @llvm.fmuladd.f64(double %41, double 0x3F30000000000000, double %40), !dbg !1305
  %43 = tail call double @llvm.fmuladd.f64(double %42, double 0x3F30000000000000, double %39), !dbg !1306
  %44 = tail call double @llvm.fmuladd.f64(double %43, double 0x3F30000000000000, double %38), !dbg !1307
  %45 = fmul double %44, 0x3F30000000000000, !dbg !1308
  tail call void @llvm.dbg.value(metadata double %45, metadata !434, metadata !DIExpression()), !dbg !1263
  ret double %45, !dbg !1309
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #13

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }

!llvm.dbg.cu = !{!42}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "tests/c/linpack.c", directory: "/home/vicebar/learn/llvm-edu/test-llvm-plugins", checksumkind: CSK_MD5, checksum: "5075d1c2aff55d6f209361fe0f39354c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 37)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 5)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 7)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 9)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 205, type: !16, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 6)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 211, type: !28, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 8)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 215, type: !28, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !11, isLocal: true, isDefinition: true)
!42 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240714071213+3b5b5c1ec4a3-1~exp1~20240714191314.138)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -O2 -S -emit-llvm -g tests/c/linpack.c -o tests/c/linpack_O2.dbg.ll", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !43, globals: !51, splitDebugInlining: false, nameTableKind: None)
!43 = !{!44, !45, !46, !48}
!44 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !49, line: 156, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!50 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!51 = !{!52, !57, !62, !67, !72, !74, !0, !7, !79, !84, !89, !91, !9, !14, !19, !24, !26, !96, !31, !33, !38, !40, !98}
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 2)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 15)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 13)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 26)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !59, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 35)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 30)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 40)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !81, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 73)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 208, type: !93, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 230, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 28)
!103 = !{i32 7, !"Dwarf Version", i32 5}
!104 = !{i32 2, !"Debug Info Version", i32 3}
!105 = !{i32 1, !"wchar_size", i32 4}
!106 = !{i32 8, !"PIC Level", i32 2}
!107 = !{i32 7, !"PIE Level", i32 2}
!108 = !{i32 7, !"uwtable", i32 2}
!109 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!110 = !{!"Ubuntu clang version 18.1.8 (++20240714071213+3b5b5c1ec4a3-1~exp1~20240714191314.138)"}
!111 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 23, type: !112, scopeLine: 43, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{!47}
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !135, !136}
!115 = !DILocalVariable(name: "a", scope: !111, file: !2, line: 48, type: !45)
!116 = !DILocalVariable(name: "a_max", scope: !111, file: !2, line: 49, type: !44)
!117 = !DILocalVariable(name: "b", scope: !111, file: !2, line: 50, type: !45)
!118 = !DILocalVariable(name: "b_max", scope: !111, file: !2, line: 51, type: !44)
!119 = !DILocalVariable(name: "cray", scope: !111, file: !2, line: 52, type: !44)
!120 = !DILocalVariable(name: "eps", scope: !111, file: !2, line: 53, type: !44)
!121 = !DILocalVariable(name: "i", scope: !111, file: !2, line: 54, type: !47)
!122 = !DILocalVariable(name: "info", scope: !111, file: !2, line: 55, type: !47)
!123 = !DILocalVariable(name: "ipvt", scope: !111, file: !2, line: 56, type: !46)
!124 = !DILocalVariable(name: "j", scope: !111, file: !2, line: 57, type: !47)
!125 = !DILocalVariable(name: "job", scope: !111, file: !2, line: 58, type: !47)
!126 = !DILocalVariable(name: "ops", scope: !111, file: !2, line: 59, type: !44)
!127 = !DILocalVariable(name: "resid", scope: !111, file: !2, line: 60, type: !45)
!128 = !DILocalVariable(name: "resid_max", scope: !111, file: !2, line: 61, type: !44)
!129 = !DILocalVariable(name: "residn", scope: !111, file: !2, line: 62, type: !44)
!130 = !DILocalVariable(name: "rhs", scope: !111, file: !2, line: 63, type: !45)
!131 = !DILocalVariable(name: "t1", scope: !111, file: !2, line: 64, type: !44)
!132 = !DILocalVariable(name: "t2", scope: !111, file: !2, line: 65, type: !44)
!133 = !DILocalVariable(name: "time", scope: !111, file: !2, line: 66, type: !134)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 384, elements: !29)
!135 = !DILocalVariable(name: "total", scope: !111, file: !2, line: 67, type: !44)
!136 = !DILocalVariable(name: "x", scope: !111, file: !2, line: 68, type: !45)
!137 = !DILocation(line: 0, scope: !111)
!138 = !DILocation(line: 71, column: 3, scope: !111)
!139 = !DILocation(line: 72, column: 3, scope: !111)
!140 = !DILocation(line: 73, column: 3, scope: !111)
!141 = !DILocation(line: 74, column: 3, scope: !111)
!142 = !DILocation(line: 75, column: 3, scope: !111)
!143 = !DILocation(line: 76, column: 3, scope: !111)
!144 = !DILocation(line: 77, column: 3, scope: !111)
!145 = !DILocation(line: 78, column: 3, scope: !111)
!146 = !DILocation(line: 79, column: 3, scope: !111)
!147 = !DILocation(line: 85, column: 7, scope: !111)
!148 = !DILocation(line: 86, column: 20, scope: !111)
!149 = !DILocation(line: 87, column: 20, scope: !111)
!150 = !DILocation(line: 88, column: 24, scope: !111)
!151 = !DILocation(line: 89, column: 22, scope: !111)
!152 = !DILocation(line: 90, column: 20, scope: !111)
!153 = !DILocation(line: 93, column: 3, scope: !154)
!154 = distinct !DILexicalBlock(scope: !111, file: !2, line: 93, column: 3)
!155 = !DILocation(line: 95, column: 5, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !2, line: 95, column: 5)
!157 = distinct !DILexicalBlock(scope: !158, file: !2, line: 94, column: 3)
!158 = distinct !DILexicalBlock(scope: !154, file: !2, line: 93, column: 3)
!159 = !DILocation(line: 101, column: 24, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !2, line: 101, column: 3)
!161 = distinct !DILexicalBlock(scope: !111, file: !2, line: 101, column: 3)
!162 = !DILocation(line: 103, column: 5, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !2, line: 102, column: 3)
!164 = !DILocation(line: 103, column: 10, scope: !163)
!165 = !{!166, !166, i64 0}
!166 = !{!"double", !167, i64 0}
!167 = !{!"omnipotent char", !168, i64 0}
!168 = !{!"Simple C/C++ TBAA"}
!169 = distinct !{!169, !170, !171, !172, !173, !174}
!170 = !DILocation(line: 101, column: 3, scope: !161)
!171 = !DILocation(line: 104, column: 3, scope: !161)
!172 = !{!"llvm.loop.mustprogress"}
!173 = !{!"llvm.loop.isvectorized", i32 1}
!174 = !{!"llvm.loop.unroll.runtime.disable"}
!175 = !DILocation(line: 97, column: 31, scope: !176)
!176 = distinct !DILexicalBlock(scope: !177, file: !2, line: 96, column: 5)
!177 = distinct !DILexicalBlock(scope: !156, file: !2, line: 95, column: 5)
!178 = !DILocalVariable(name: "x", arg: 1, scope: !179, file: !2, line: 1004, type: !44)
!179 = distinct !DISubprogram(name: "r8_max", scope: !2, file: !2, line: 1004, type: !180, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !182)
!180 = !DISubroutineType(types: !181)
!181 = !{!44, !44, !44}
!182 = !{!178, !183, !184}
!183 = !DILocalVariable(name: "y", arg: 2, scope: !179, file: !2, line: 1004, type: !44)
!184 = !DILocalVariable(name: "value", scope: !179, file: !2, line: 1027, type: !44)
!185 = !DILocation(line: 0, scope: !179, inlinedAt: !186)
!186 = distinct !DILocation(line: 97, column: 15, scope: !176)
!187 = !DILocation(line: 1029, column: 10, scope: !188, inlinedAt: !186)
!188 = distinct !DILexicalBlock(scope: !179, file: !2, line: 1029, column: 8)
!189 = !DILocation(line: 95, column: 26, scope: !177)
!190 = !DILocation(line: 95, column: 20, scope: !177)
!191 = distinct !{!191, !155, !192, !172}
!192 = !DILocation(line: 98, column: 5, scope: !156)
!193 = !DILocation(line: 93, column: 24, scope: !158)
!194 = !DILocation(line: 93, column: 18, scope: !158)
!195 = distinct !{!195, !153, !196, !172}
!196 = !DILocation(line: 99, column: 3, scope: !154)
!197 = !DILocation(line: 108, column: 5, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !2, line: 107, column: 3)
!199 = distinct !DILexicalBlock(scope: !200, file: !2, line: 106, column: 3)
!200 = distinct !DILexicalBlock(scope: !111, file: !2, line: 106, column: 3)
!201 = !DILocation(line: 109, column: 5, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !2, line: 109, column: 5)
!203 = !DILocation(line: 111, column: 26, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !2, line: 110, column: 5)
!205 = distinct !DILexicalBlock(scope: !202, file: !2, line: 109, column: 5)
!206 = !DILocation(line: 111, column: 21, scope: !204)
!207 = !DILocation(line: 111, column: 34, scope: !204)
!208 = !DILocation(line: 111, column: 19, scope: !204)
!209 = !DILocation(line: 109, column: 26, scope: !205)
!210 = !DILocation(line: 109, column: 20, scope: !205)
!211 = distinct !{!211, !201, !212, !172}
!212 = !DILocation(line: 112, column: 5, scope: !202)
!213 = !DILocation(line: 111, scope: !204)
!214 = !DILocation(line: 106, column: 24, scope: !199)
!215 = !DILocation(line: 106, column: 18, scope: !199)
!216 = !DILocation(line: 106, column: 3, scope: !200)
!217 = distinct !{!217, !216, !218, !172}
!218 = !DILocation(line: 113, column: 3, scope: !200)
!219 = !DILocation(line: 274, column: 22, scope: !220, inlinedAt: !225)
!220 = distinct !DISubprogram(name: "cpu_time", scope: !2, file: !2, line: 241, type: !221, scopeLine: 271, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !223)
!221 = !DISubroutineType(types: !222)
!222 = !{!44}
!223 = !{!224}
!224 = !DILocalVariable(name: "value", scope: !220, file: !2, line: 272, type: !44)
!225 = distinct !DILocation(line: 114, column: 8, scope: !111)
!226 = !DILocation(line: 0, scope: !220, inlinedAt: !225)
!227 = !DILocation(line: 116, column: 10, scope: !111)
!228 = !DILocation(line: 118, column: 13, scope: !229)
!229 = distinct !DILexicalBlock(scope: !111, file: !2, line: 118, column: 8)
!230 = !DILocation(line: 118, column: 8, scope: !111)
!231 = !DILocation(line: 120, column: 5, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !2, line: 119, column: 3)
!233 = !DILocation(line: 121, column: 5, scope: !232)
!234 = !DILocation(line: 122, column: 5, scope: !232)
!235 = !DILocation(line: 123, column: 5, scope: !232)
!236 = !DILocation(line: 124, column: 5, scope: !232)
!237 = !DILocation(line: 274, column: 22, scope: !220, inlinedAt: !238)
!238 = distinct !DILocation(line: 127, column: 8, scope: !111)
!239 = !DILocation(line: 0, scope: !220, inlinedAt: !238)
!240 = !DILocation(line: 274, column: 22, scope: !220, inlinedAt: !241)
!241 = distinct !DILocation(line: 130, column: 8, scope: !111)
!242 = !DILocation(line: 0, scope: !220, inlinedAt: !241)
!243 = !DILocation(line: 133, column: 3, scope: !111)
!244 = !DILocation(line: 274, column: 22, scope: !220, inlinedAt: !245)
!245 = distinct !DILocation(line: 135, column: 8, scope: !111)
!246 = !DILocation(line: 0, scope: !220, inlinedAt: !245)
!247 = !DILocation(line: 140, column: 3, scope: !111)
!248 = !DILocation(line: 144, column: 7, scope: !111)
!249 = !DILocation(line: 146, column: 3, scope: !250)
!250 = distinct !DILexicalBlock(scope: !111, file: !2, line: 146, column: 3)
!251 = !DILocation(line: 146, column: 24, scope: !252)
!252 = distinct !DILexicalBlock(scope: !250, file: !2, line: 146, column: 3)
!253 = !DILocation(line: 148, column: 5, scope: !254)
!254 = distinct !DILexicalBlock(scope: !252, file: !2, line: 147, column: 3)
!255 = !DILocation(line: 148, column: 10, scope: !254)
!256 = distinct !{!256, !249, !257, !172, !173, !174}
!257 = !DILocation(line: 149, column: 3, scope: !250)
!258 = !DILocation(line: 153, column: 5, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !2, line: 152, column: 3)
!260 = distinct !DILexicalBlock(scope: !261, file: !2, line: 151, column: 3)
!261 = distinct !DILexicalBlock(scope: !111, file: !2, line: 151, column: 3)
!262 = !DILocation(line: 154, column: 5, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !2, line: 154, column: 5)
!264 = !DILocation(line: 156, column: 30, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !2, line: 155, column: 5)
!266 = distinct !DILexicalBlock(scope: !263, file: !2, line: 154, column: 5)
!267 = !DILocation(line: 156, column: 25, scope: !265)
!268 = !DILocation(line: 156, column: 38, scope: !265)
!269 = !DILocation(line: 156, column: 23, scope: !265)
!270 = !DILocation(line: 154, column: 26, scope: !266)
!271 = !DILocation(line: 154, column: 20, scope: !266)
!272 = distinct !{!272, !262, !273, !172}
!273 = !DILocation(line: 157, column: 5, scope: !263)
!274 = !DILocation(line: 156, scope: !265)
!275 = !DILocation(line: 151, column: 24, scope: !260)
!276 = !DILocation(line: 151, column: 18, scope: !260)
!277 = !DILocation(line: 151, column: 3, scope: !261)
!278 = distinct !{!278, !277, !279, !172}
!279 = !DILocation(line: 158, column: 3, scope: !261)
!280 = !DILocation(line: 162, column: 17, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !2, line: 161, column: 3)
!282 = distinct !DILexicalBlock(scope: !283, file: !2, line: 160, column: 3)
!283 = distinct !DILexicalBlock(scope: !111, file: !2, line: 160, column: 3)
!284 = !DILocation(line: 162, column: 16, scope: !281)
!285 = !DILocation(line: 162, column: 5, scope: !281)
!286 = !DILocation(line: 163, column: 5, scope: !287)
!287 = distinct !DILexicalBlock(scope: !281, file: !2, line: 163, column: 5)
!288 = !DILocation(line: 165, column: 34, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !2, line: 164, column: 5)
!290 = distinct !DILexicalBlock(scope: !287, file: !2, line: 163, column: 5)
!291 = !DILocation(line: 165, column: 29, scope: !289)
!292 = !DILocation(line: 165, column: 42, scope: !289)
!293 = !DILocation(line: 165, column: 27, scope: !289)
!294 = !DILocation(line: 163, column: 26, scope: !290)
!295 = !DILocation(line: 163, column: 20, scope: !290)
!296 = distinct !{!296, !286, !297, !172}
!297 = !DILocation(line: 166, column: 5, scope: !287)
!298 = !DILocation(line: 165, scope: !289)
!299 = !DILocation(line: 160, column: 24, scope: !282)
!300 = !DILocation(line: 160, column: 18, scope: !282)
!301 = !DILocation(line: 160, column: 3, scope: !283)
!302 = distinct !{!302, !301, !303, !172}
!303 = !DILocation(line: 167, column: 3, scope: !283)
!304 = !DILocation(line: 172, column: 46, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !2, line: 171, column: 3)
!306 = distinct !DILexicalBlock(scope: !307, file: !2, line: 170, column: 3)
!307 = distinct !DILexicalBlock(scope: !111, file: !2, line: 170, column: 3)
!308 = !DILocalVariable(name: "x", arg: 1, scope: !309, file: !2, line: 928, type: !44)
!309 = distinct !DISubprogram(name: "r8_abs", scope: !2, file: !2, line: 928, type: !310, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !312)
!310 = !DISubroutineType(types: !311)
!311 = !{!44, !44}
!312 = !{!308, !313}
!313 = !DILocalVariable(name: "value", scope: !309, file: !2, line: 951, type: !44)
!314 = !DILocation(line: 0, scope: !309, inlinedAt: !315)
!315 = distinct !DILocation(line: 172, column: 37, scope: !305)
!316 = !DILocation(line: 953, column: 12, scope: !317, inlinedAt: !315)
!317 = distinct !DILexicalBlock(scope: !309, file: !2, line: 953, column: 8)
!318 = !DILocation(line: 953, column: 8, scope: !309, inlinedAt: !315)
!319 = !DILocation(line: 0, scope: !179, inlinedAt: !320)
!320 = distinct !DILocation(line: 172, column: 17, scope: !305)
!321 = !DILocation(line: 1029, column: 10, scope: !188, inlinedAt: !320)
!322 = !DILocation(line: 170, column: 24, scope: !306)
!323 = !DILocation(line: 170, column: 18, scope: !306)
!324 = !DILocation(line: 170, column: 3, scope: !307)
!325 = distinct !{!325, !324, !326, !172}
!326 = !DILocation(line: 173, column: 3, scope: !307)
!327 = !DILocation(line: 178, column: 38, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 177, column: 3)
!329 = distinct !DILexicalBlock(scope: !330, file: !2, line: 176, column: 3)
!330 = distinct !DILexicalBlock(scope: !111, file: !2, line: 176, column: 3)
!331 = !DILocation(line: 0, scope: !309, inlinedAt: !332)
!332 = distinct !DILocation(line: 178, column: 29, scope: !328)
!333 = !DILocation(line: 953, column: 12, scope: !317, inlinedAt: !332)
!334 = !DILocation(line: 953, column: 8, scope: !309, inlinedAt: !332)
!335 = !DILocation(line: 0, scope: !179, inlinedAt: !336)
!336 = distinct !DILocation(line: 178, column: 13, scope: !328)
!337 = !DILocation(line: 1029, column: 10, scope: !188, inlinedAt: !336)
!338 = !DILocation(line: 176, column: 24, scope: !329)
!339 = !DILocation(line: 176, column: 18, scope: !329)
!340 = !DILocation(line: 176, column: 3, scope: !330)
!341 = distinct !{!341, !340, !342, !172}
!342 = !DILocation(line: 179, column: 3, scope: !330)
!343 = !DILocation(line: 274, column: 11, scope: !220, inlinedAt: !238)
!344 = !DILocation(line: 275, column: 9, scope: !220, inlinedAt: !238)
!345 = !DILocation(line: 274, column: 11, scope: !220, inlinedAt: !245)
!346 = !DILocation(line: 275, column: 9, scope: !220, inlinedAt: !245)
!347 = !DILocation(line: 128, column: 16, scope: !111)
!348 = !DILocation(line: 138, column: 19, scope: !111)
!349 = !DILocation(line: 186, column: 12, scope: !350)
!350 = distinct !DILexicalBlock(scope: !111, file: !2, line: 186, column: 8)
!351 = !DILocation(line: 186, column: 8, scope: !111)
!352 = !DILocation(line: 183, column: 22, scope: !111)
!353 = !DILocation(line: 183, column: 37, scope: !111)
!354 = !DILocation(line: 183, column: 45, scope: !111)
!355 = !DILocation(line: 183, column: 53, scope: !111)
!356 = !DILocation(line: 194, column: 17, scope: !111)
!357 = !DILocation(line: 195, column: 19, scope: !111)
!358 = !DILocation(line: 197, column: 3, scope: !111)
!359 = !DILocation(line: 198, column: 3, scope: !111)
!360 = !DILocation(line: 201, column: 3, scope: !111)
!361 = !DILocation(line: 202, column: 3, scope: !111)
!362 = !DILocation(line: 203, column: 3, scope: !111)
!363 = !DILocation(line: 205, column: 22, scope: !111)
!364 = !DILocation(line: 205, column: 3, scope: !111)
!365 = !DILocation(line: 206, column: 22, scope: !111)
!366 = !DILocation(line: 206, column: 3, scope: !111)
!367 = !DILocation(line: 207, column: 3, scope: !111)
!368 = !DILocation(line: 208, column: 3, scope: !111)
!369 = !DILocation(line: 211, column: 3, scope: !111)
!370 = !DILocation(line: 212, column: 3, scope: !111)
!371 = !DILocation(line: 213, column: 3, scope: !111)
!372 = !DILocation(line: 215, column: 3, scope: !111)
!373 = !DILocation(line: 216, column: 3, scope: !111)
!374 = !DILocation(line: 217, column: 3, scope: !111)
!375 = !DILocation(line: 219, column: 3, scope: !111)
!376 = !DILocation(line: 220, column: 3, scope: !111)
!377 = !DILocation(line: 221, column: 3, scope: !111)
!378 = !DILocation(line: 222, column: 3, scope: !111)
!379 = !DILocation(line: 223, column: 3, scope: !111)
!380 = !DILocation(line: 224, column: 3, scope: !111)
!381 = !DILocation(line: 228, column: 3, scope: !111)
!382 = !DILocation(line: 229, column: 3, scope: !111)
!383 = !DILocation(line: 230, column: 3, scope: !111)
!384 = !DILocation(line: 232, column: 3, scope: !111)
!385 = !DILocation(line: 235, column: 3, scope: !111)
!386 = !DISubprogram(name: "printf", scope: !387, file: !387, line: 356, type: !388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!387 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!388 = !DISubroutineType(types: !389)
!389 = !{!47, !390, null}
!390 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!393 = distinct !DISubprogram(name: "r8mat_gen", scope: !2, file: !2, line: 1117, type: !394, scopeLine: 1137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{!45, !47, !47}
!396 = !{!397, !398, !399, !400, !401, !405}
!397 = !DILocalVariable(name: "lda", arg: 1, scope: !393, file: !2, line: 1117, type: !47)
!398 = !DILocalVariable(name: "n", arg: 2, scope: !393, file: !2, line: 1117, type: !47)
!399 = !DILocalVariable(name: "a", scope: !393, file: !2, line: 1138, type: !45)
!400 = !DILocalVariable(name: "i", scope: !393, file: !2, line: 1139, type: !47)
!401 = !DILocalVariable(name: "init", scope: !393, file: !2, line: 1140, type: !402)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 128, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 4)
!405 = !DILocalVariable(name: "j", scope: !393, file: !2, line: 1141, type: !47)
!406 = !DILocation(line: 0, scope: !393)
!407 = !DILocation(line: 1143, column: 33, scope: !393)
!408 = !DILocation(line: 1143, column: 29, scope: !393)
!409 = !DILocation(line: 1143, column: 37, scope: !393)
!410 = !DILocation(line: 1143, column: 20, scope: !393)
!411 = !DILocation(line: 1145, column: 18, scope: !412)
!412 = distinct !DILexicalBlock(scope: !413, file: !2, line: 1145, column: 3)
!413 = distinct !DILexicalBlock(scope: !393, file: !2, line: 1145, column: 3)
!414 = !DILocation(line: 1145, column: 3, scope: !413)
!415 = !DILocation(line: 1147, column: 5, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !2, line: 1147, column: 5)
!417 = distinct !DILexicalBlock(scope: !412, file: !2, line: 1146, column: 3)
!418 = !DILocalVariable(name: "iseed", arg: 1, scope: !419, file: !2, line: 1041, type: !46)
!419 = distinct !DISubprogram(name: "r8_random", scope: !2, file: !2, line: 1041, type: !420, scopeLine: 1070, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{!44, !46}
!422 = !{!418, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434}
!423 = !DILocalVariable(name: "ipw2", scope: !419, file: !2, line: 1071, type: !47)
!424 = !DILocalVariable(name: "it1", scope: !419, file: !2, line: 1072, type: !47)
!425 = !DILocalVariable(name: "it2", scope: !419, file: !2, line: 1073, type: !47)
!426 = !DILocalVariable(name: "it3", scope: !419, file: !2, line: 1074, type: !47)
!427 = !DILocalVariable(name: "it4", scope: !419, file: !2, line: 1075, type: !47)
!428 = !DILocalVariable(name: "m1", scope: !419, file: !2, line: 1076, type: !47)
!429 = !DILocalVariable(name: "m2", scope: !419, file: !2, line: 1077, type: !47)
!430 = !DILocalVariable(name: "m3", scope: !419, file: !2, line: 1078, type: !47)
!431 = !DILocalVariable(name: "m4", scope: !419, file: !2, line: 1079, type: !47)
!432 = !DILocalVariable(name: "one", scope: !419, file: !2, line: 1080, type: !44)
!433 = !DILocalVariable(name: "r", scope: !419, file: !2, line: 1081, type: !44)
!434 = !DILocalVariable(name: "value", scope: !419, file: !2, line: 1082, type: !44)
!435 = !DILocation(line: 0, scope: !419, inlinedAt: !436)
!436 = distinct !DILocation(line: 1149, column: 26, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !2, line: 1148, column: 5)
!438 = distinct !DILexicalBlock(scope: !416, file: !2, line: 1147, column: 5)
!439 = !DILocation(line: 1086, column: 18, scope: !419, inlinedAt: !436)
!440 = !DILocation(line: 1087, column: 13, scope: !419, inlinedAt: !436)
!441 = !DILocation(line: 1088, column: 20, scope: !419, inlinedAt: !436)
!442 = !DILocation(line: 1088, column: 13, scope: !419, inlinedAt: !436)
!443 = !DILocation(line: 1089, column: 24, scope: !419, inlinedAt: !436)
!444 = !DILocation(line: 1089, column: 40, scope: !419, inlinedAt: !436)
!445 = !DILocation(line: 1089, column: 13, scope: !419, inlinedAt: !436)
!446 = !DILocation(line: 1089, column: 29, scope: !419, inlinedAt: !436)
!447 = !DILocation(line: 1090, column: 13, scope: !419, inlinedAt: !436)
!448 = !DILocation(line: 1091, column: 20, scope: !419, inlinedAt: !436)
!449 = !DILocation(line: 1091, column: 13, scope: !419, inlinedAt: !436)
!450 = !DILocation(line: 1092, column: 24, scope: !419, inlinedAt: !436)
!451 = !DILocation(line: 1092, column: 40, scope: !419, inlinedAt: !436)
!452 = !DILocation(line: 1092, column: 56, scope: !419, inlinedAt: !436)
!453 = !DILocation(line: 1092, column: 13, scope: !419, inlinedAt: !436)
!454 = !DILocation(line: 1092, column: 29, scope: !419, inlinedAt: !436)
!455 = !DILocation(line: 1092, column: 45, scope: !419, inlinedAt: !436)
!456 = !DILocation(line: 1093, column: 13, scope: !419, inlinedAt: !436)
!457 = !DILocation(line: 1094, column: 20, scope: !419, inlinedAt: !436)
!458 = !DILocation(line: 1094, column: 13, scope: !419, inlinedAt: !436)
!459 = !DILocation(line: 1095, column: 24, scope: !419, inlinedAt: !436)
!460 = !DILocation(line: 1095, column: 40, scope: !419, inlinedAt: !436)
!461 = !DILocation(line: 1095, column: 56, scope: !419, inlinedAt: !436)
!462 = !DILocation(line: 1095, column: 72, scope: !419, inlinedAt: !436)
!463 = !DILocation(line: 1095, column: 13, scope: !419, inlinedAt: !436)
!464 = !DILocation(line: 1095, column: 29, scope: !419, inlinedAt: !436)
!465 = !DILocation(line: 1095, column: 45, scope: !419, inlinedAt: !436)
!466 = !DILocation(line: 1095, column: 61, scope: !419, inlinedAt: !436)
!467 = !DILocation(line: 1096, column: 15, scope: !419, inlinedAt: !436)
!468 = !DILocation(line: 1108, column: 13, scope: !419, inlinedAt: !436)
!469 = !DILocation(line: 1109, column: 13, scope: !419, inlinedAt: !436)
!470 = !DILocation(line: 1110, column: 13, scope: !419, inlinedAt: !436)
!471 = !DILocation(line: 1111, column: 13, scope: !419, inlinedAt: !436)
!472 = !DILocation(line: 1111, column: 5, scope: !419, inlinedAt: !436)
!473 = !DILocation(line: 1110, column: 5, scope: !419, inlinedAt: !436)
!474 = !DILocation(line: 1109, column: 5, scope: !419, inlinedAt: !436)
!475 = !DILocation(line: 1108, column: 9, scope: !419, inlinedAt: !436)
!476 = !DILocation(line: 1149, column: 45, scope: !437)
!477 = !DILocation(line: 1149, column: 12, scope: !437)
!478 = !DILocation(line: 1149, column: 7, scope: !437)
!479 = !DILocation(line: 1149, column: 24, scope: !437)
!480 = !DILocation(line: 1147, column: 27, scope: !438)
!481 = !DILocation(line: 1147, column: 20, scope: !438)
!482 = distinct !{!482, !415, !483, !172}
!483 = !DILocation(line: 1150, column: 5, scope: !416)
!484 = !DILocation(line: 1145, column: 25, scope: !412)
!485 = distinct !{!485, !414, !486, !172}
!486 = !DILocation(line: 1151, column: 3, scope: !413)
!487 = !DILocation(line: 1153, column: 3, scope: !393)
!488 = !DISubprogram(name: "malloc", scope: !489, file: !489, line: 540, type: !490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!489 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!490 = !DISubroutineType(types: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !494, line: 18, baseType: !495)
!494 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!495 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!496 = !DILocation(line: 0, scope: !179)
!497 = !DILocation(line: 1029, column: 10, scope: !188)
!498 = !DILocation(line: 1037, column: 3, scope: !179)
!499 = distinct !DISubprogram(name: "dgefa", scope: !2, file: !2, line: 516, type: !500, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !502)
!500 = !DISubroutineType(types: !501)
!501 = !{!47, !45, !47, !47, !46}
!502 = !{!503, !504, !505, !506, !507, !508, !509, !510, !511}
!503 = !DILocalVariable(name: "a", arg: 1, scope: !499, file: !2, line: 516, type: !45)
!504 = !DILocalVariable(name: "lda", arg: 2, scope: !499, file: !2, line: 516, type: !47)
!505 = !DILocalVariable(name: "n", arg: 3, scope: !499, file: !2, line: 516, type: !47)
!506 = !DILocalVariable(name: "ipvt", arg: 4, scope: !499, file: !2, line: 516, type: !46)
!507 = !DILocalVariable(name: "info", scope: !499, file: !2, line: 562, type: !47)
!508 = !DILocalVariable(name: "j", scope: !499, file: !2, line: 563, type: !47)
!509 = !DILocalVariable(name: "k", scope: !499, file: !2, line: 564, type: !47)
!510 = !DILocalVariable(name: "l", scope: !499, file: !2, line: 565, type: !47)
!511 = !DILocalVariable(name: "t", scope: !499, file: !2, line: 566, type: !44)
!512 = !DILocation(line: 0, scope: !499)
!513 = !DILocation(line: 572, column: 18, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !2, line: 572, column: 3)
!515 = distinct !DILexicalBlock(scope: !499, file: !2, line: 572, column: 3)
!516 = !DILocation(line: 572, column: 3, scope: !515)
!517 = !DILocation(line: 577, column: 19, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !2, line: 573, column: 3)
!519 = !DILocation(line: 577, column: 29, scope: !518)
!520 = !DILocation(line: 577, column: 26, scope: !518)
!521 = !DILocation(line: 577, column: 38, scope: !518)
!522 = !DILocation(line: 577, column: 32, scope: !518)
!523 = !DILocalVariable(name: "n", arg: 1, scope: !524, file: !2, line: 830, type: !47)
!524 = distinct !DISubprogram(name: "idamax", scope: !2, file: !2, line: 830, type: !525, scopeLine: 874, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !527)
!525 = !DISubroutineType(types: !526)
!526 = !{!47, !47, !45, !47}
!527 = !{!523, !528, !529, !530, !531, !532, !533}
!528 = !DILocalVariable(name: "dx", arg: 2, scope: !524, file: !2, line: 830, type: !45)
!529 = !DILocalVariable(name: "incx", arg: 3, scope: !524, file: !2, line: 830, type: !47)
!530 = !DILocalVariable(name: "dmax", scope: !524, file: !2, line: 875, type: !44)
!531 = !DILocalVariable(name: "i", scope: !524, file: !2, line: 876, type: !47)
!532 = !DILocalVariable(name: "ix", scope: !524, file: !2, line: 877, type: !47)
!533 = !DILocalVariable(name: "value", scope: !524, file: !2, line: 878, type: !47)
!534 = !DILocation(line: 0, scope: !524, inlinedAt: !535)
!535 = distinct !DILocation(line: 577, column: 9, scope: !518)
!536 = !DILocation(line: 882, column: 10, scope: !537, inlinedAt: !535)
!537 = distinct !DILexicalBlock(scope: !524, file: !2, line: 882, column: 8)
!538 = !DILocation(line: 882, column: 14, scope: !537, inlinedAt: !535)
!539 = !DILocation(line: 0, scope: !309, inlinedAt: !540)
!540 = distinct !DILocation(line: 896, column: 12, scope: !541, inlinedAt: !535)
!541 = distinct !DILexicalBlock(scope: !542, file: !2, line: 895, column: 3)
!542 = distinct !DILexicalBlock(scope: !524, file: !2, line: 894, column: 8)
!543 = !DILocation(line: 0, scope: !309, inlinedAt: !544)
!544 = distinct !DILocation(line: 910, column: 12, scope: !545, inlinedAt: !535)
!545 = distinct !DILexicalBlock(scope: !542, file: !2, line: 908, column: 3)
!546 = !DILocation(line: 0, scope: !542, inlinedAt: !535)
!547 = !DILocation(line: 953, column: 12, scope: !317, inlinedAt: !548)
!548 = distinct !DILocation(line: 0, scope: !542, inlinedAt: !535)
!549 = !DILocation(line: 953, column: 8, scope: !309, inlinedAt: !548)
!550 = !DILocation(line: 898, column: 5, scope: !551, inlinedAt: !535)
!551 = distinct !DILexicalBlock(scope: !541, file: !2, line: 898, column: 5)
!552 = !DILocation(line: 900, column: 28, scope: !553, inlinedAt: !535)
!553 = distinct !DILexicalBlock(scope: !554, file: !2, line: 900, column: 12)
!554 = distinct !DILexicalBlock(scope: !555, file: !2, line: 899, column: 5)
!555 = distinct !DILexicalBlock(scope: !551, file: !2, line: 898, column: 5)
!556 = !DILocation(line: 0, scope: !309, inlinedAt: !557)
!557 = distinct !DILocation(line: 900, column: 19, scope: !553, inlinedAt: !535)
!558 = !DILocation(line: 953, column: 12, scope: !317, inlinedAt: !557)
!559 = !DILocation(line: 953, column: 8, scope: !309, inlinedAt: !557)
!560 = !DILocation(line: 900, column: 17, scope: !553, inlinedAt: !535)
!561 = !DILocation(line: 898, column: 26, scope: !555, inlinedAt: !535)
!562 = !DILocation(line: 900, column: 12, scope: !554, inlinedAt: !535)
!563 = distinct !{!563, !550, !564, !172}
!564 = !DILocation(line: 905, column: 5, scope: !551, inlinedAt: !535)
!565 = !DILocation(line: 577, column: 48, scope: !518)
!566 = !DILocation(line: 577, column: 52, scope: !518)
!567 = !DILocation(line: 578, column: 5, scope: !518)
!568 = !DILocation(line: 578, column: 15, scope: !518)
!569 = !{!570, !570, i64 0}
!570 = !{!"int", !167, i64 0}
!571 = !DILocation(line: 582, column: 13, scope: !572)
!572 = distinct !DILexicalBlock(scope: !518, file: !2, line: 582, column: 10)
!573 = !DILocation(line: 582, column: 15, scope: !572)
!574 = !DILocation(line: 582, column: 10, scope: !572)
!575 = !DILocation(line: 582, column: 27, scope: !572)
!576 = !DILocation(line: 582, column: 10, scope: !518)
!577 = !DILocation(line: 590, column: 12, scope: !578)
!578 = distinct !DILexicalBlock(scope: !518, file: !2, line: 590, column: 10)
!579 = !DILocation(line: 0, scope: !518)
!580 = !DILocation(line: 590, column: 10, scope: !518)
!581 = !DILocation(line: 593, column: 26, scope: !582)
!582 = distinct !DILexicalBlock(scope: !578, file: !2, line: 591, column: 5)
!583 = !DILocation(line: 593, column: 24, scope: !582)
!584 = !DILocation(line: 594, column: 24, scope: !582)
!585 = !DILocation(line: 595, column: 5, scope: !582)
!586 = !DILocation(line: 599, column: 16, scope: !518)
!587 = !DILocation(line: 599, column: 14, scope: !518)
!588 = !DILocation(line: 601, column: 22, scope: !518)
!589 = !DILocation(line: 601, column: 24, scope: !518)
!590 = !DILocalVariable(name: "n", arg: 1, scope: !591, file: !2, line: 744, type: !47)
!591 = distinct !DISubprogram(name: "dscal", scope: !2, file: !2, line: 744, type: !592, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !594)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !47, !44, !45, !47}
!594 = !{!590, !595, !596, !597, !598, !599, !600}
!595 = !DILocalVariable(name: "sa", arg: 2, scope: !591, file: !2, line: 744, type: !44)
!596 = !DILocalVariable(name: "x", arg: 3, scope: !591, file: !2, line: 744, type: !45)
!597 = !DILocalVariable(name: "incx", arg: 4, scope: !591, file: !2, line: 744, type: !47)
!598 = !DILocalVariable(name: "i", scope: !591, file: !2, line: 784, type: !47)
!599 = !DILocalVariable(name: "ix", scope: !591, file: !2, line: 785, type: !47)
!600 = !DILocalVariable(name: "m", scope: !591, file: !2, line: 786, type: !47)
!601 = !DILocation(line: 0, scope: !591, inlinedAt: !602)
!602 = distinct !DILocation(line: 601, column: 5, scope: !518)
!603 = !DILocation(line: 788, column: 10, scope: !604, inlinedAt: !602)
!604 = distinct !DILexicalBlock(scope: !591, file: !2, line: 788, column: 8)
!605 = !DILocation(line: 788, column: 8, scope: !591, inlinedAt: !602)
!606 = !DILocation(line: 795, column: 20, scope: !607, inlinedAt: !602)
!607 = distinct !DILexicalBlock(scope: !608, file: !2, line: 795, column: 5)
!608 = distinct !DILexicalBlock(scope: !609, file: !2, line: 795, column: 5)
!609 = distinct !DILexicalBlock(scope: !610, file: !2, line: 792, column: 3)
!610 = distinct !DILexicalBlock(scope: !604, file: !2, line: 791, column: 13)
!611 = !DILocation(line: 795, column: 5, scope: !608, inlinedAt: !602)
!612 = !DILocation(line: 795, column: 26, scope: !607, inlinedAt: !602)
!613 = !DILocation(line: 797, column: 19, scope: !614, inlinedAt: !602)
!614 = distinct !DILexicalBlock(scope: !607, file: !2, line: 796, column: 5)
!615 = !DILocation(line: 797, column: 17, scope: !614, inlinedAt: !602)
!616 = !DILocation(line: 797, column: 12, scope: !614, inlinedAt: !602)
!617 = distinct !{!617, !611, !618, !172, !173, !174}
!618 = !DILocation(line: 798, column: 5, scope: !608, inlinedAt: !602)
!619 = !DILocation(line: 800, column: 20, scope: !620, inlinedAt: !602)
!620 = distinct !DILexicalBlock(scope: !621, file: !2, line: 800, column: 5)
!621 = distinct !DILexicalBlock(scope: !609, file: !2, line: 800, column: 5)
!622 = !DILocation(line: 800, column: 5, scope: !621, inlinedAt: !602)
!623 = !DILocation(line: 802, column: 21, scope: !624, inlinedAt: !602)
!624 = distinct !DILexicalBlock(scope: !620, file: !2, line: 801, column: 5)
!625 = !DILocation(line: 803, column: 21, scope: !624, inlinedAt: !602)
!626 = !DILocation(line: 804, column: 21, scope: !624, inlinedAt: !602)
!627 = !DILocation(line: 805, column: 21, scope: !624, inlinedAt: !602)
!628 = !DILocation(line: 806, column: 21, scope: !624, inlinedAt: !602)
!629 = !DILocation(line: 806, column: 14, scope: !624, inlinedAt: !602)
!630 = distinct !{!630, !622, !631, !172, !173, !174}
!631 = !DILocation(line: 807, column: 5, scope: !621, inlinedAt: !602)
!632 = distinct !{!632, !611, !618, !172, !174, !173}
!633 = !DILocation(line: 802, column: 19, scope: !624, inlinedAt: !602)
!634 = !DILocation(line: 802, column: 14, scope: !624, inlinedAt: !602)
!635 = !DILocation(line: 804, column: 19, scope: !624, inlinedAt: !602)
!636 = !DILocation(line: 804, column: 14, scope: !624, inlinedAt: !602)
!637 = !DILocation(line: 806, column: 19, scope: !624, inlinedAt: !602)
!638 = !DILocation(line: 800, column: 31, scope: !620, inlinedAt: !602)
!639 = distinct !{!639, !622, !631, !172, !173}
!640 = !DILocation(line: 605, column: 5, scope: !641)
!641 = distinct !DILexicalBlock(scope: !518, file: !2, line: 605, column: 5)
!642 = !DILocation(line: 605, scope: !641)
!643 = !DILocation(line: 607, column: 22, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !2, line: 606, column: 5)
!645 = distinct !DILexicalBlock(scope: !641, file: !2, line: 605, column: 5)
!646 = !DILocation(line: 607, column: 11, scope: !644)
!647 = !DILocation(line: 608, column: 12, scope: !644)
!648 = !DILocation(line: 610, column: 28, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !2, line: 609, column: 7)
!650 = distinct !DILexicalBlock(scope: !644, file: !2, line: 608, column: 12)
!651 = !DILocation(line: 610, column: 26, scope: !649)
!652 = !DILocation(line: 611, column: 26, scope: !649)
!653 = !DILocation(line: 612, column: 7, scope: !649)
!654 = !DILocation(line: 613, column: 44, scope: !644)
!655 = !DILocalVariable(name: "n", arg: 1, scope: !656, file: !2, line: 281, type: !47)
!656 = distinct !DISubprogram(name: "daxpy", scope: !2, file: !2, line: 281, type: !657, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !47, !44, !45, !47, !45, !47}
!659 = !{!655, !660, !661, !662, !663, !664, !665, !666, !667, !668}
!660 = !DILocalVariable(name: "da", arg: 2, scope: !656, file: !2, line: 281, type: !44)
!661 = !DILocalVariable(name: "dx", arg: 3, scope: !656, file: !2, line: 281, type: !45)
!662 = !DILocalVariable(name: "incx", arg: 4, scope: !656, file: !2, line: 281, type: !47)
!663 = !DILocalVariable(name: "dy", arg: 5, scope: !656, file: !2, line: 281, type: !45)
!664 = !DILocalVariable(name: "incy", arg: 6, scope: !656, file: !2, line: 281, type: !47)
!665 = !DILocalVariable(name: "i", scope: !656, file: !2, line: 330, type: !47)
!666 = !DILocalVariable(name: "ix", scope: !656, file: !2, line: 331, type: !47)
!667 = !DILocalVariable(name: "iy", scope: !656, file: !2, line: 332, type: !47)
!668 = !DILocalVariable(name: "m", scope: !656, file: !2, line: 333, type: !47)
!669 = !DILocation(line: 0, scope: !656, inlinedAt: !670)
!670 = distinct !DILocation(line: 613, column: 7, scope: !644)
!671 = !DILocation(line: 335, column: 8, scope: !656, inlinedAt: !670)
!672 = !DILocation(line: 382, column: 5, scope: !673, inlinedAt: !670)
!673 = distinct !DILexicalBlock(scope: !674, file: !2, line: 382, column: 5)
!674 = distinct !DILexicalBlock(scope: !675, file: !2, line: 379, column: 3)
!675 = distinct !DILexicalBlock(scope: !656, file: !2, line: 348, column: 8)
!676 = !DILocation(line: 387, column: 5, scope: !677, inlinedAt: !670)
!677 = distinct !DILexicalBlock(scope: !674, file: !2, line: 387, column: 5)
!678 = !DILocation(line: 389, column: 17, scope: !679, inlinedAt: !670)
!679 = distinct !DILexicalBlock(scope: !680, file: !2, line: 388, column: 5)
!680 = distinct !DILexicalBlock(scope: !677, file: !2, line: 387, column: 5)
!681 = !{!682}
!682 = distinct !{!682, !683}
!683 = distinct !{!683, !"LVerDomain"}
!684 = !{!685, !686, !687, !688, !689, !690, !691}
!685 = distinct !{!685, !683}
!686 = distinct !{!686, !683}
!687 = distinct !{!687, !683}
!688 = distinct !{!688, !683}
!689 = distinct !{!689, !683}
!690 = distinct !{!690, !683}
!691 = distinct !{!691, !683}
!692 = !DILocation(line: 389, column: 32, scope: !679, inlinedAt: !670)
!693 = !{!688}
!694 = !DILocation(line: 390, column: 21, scope: !679, inlinedAt: !670)
!695 = !DILocation(line: 390, column: 17, scope: !679, inlinedAt: !670)
!696 = !{!685}
!697 = !{!686, !687, !688, !689, !690, !691}
!698 = !DILocation(line: 390, column: 32, scope: !679, inlinedAt: !670)
!699 = !{!689}
!700 = !DILocation(line: 391, column: 21, scope: !679, inlinedAt: !670)
!701 = !DILocation(line: 391, column: 17, scope: !679, inlinedAt: !670)
!702 = !{!686}
!703 = !{!687, !688, !689, !690, !691}
!704 = !DILocation(line: 391, column: 32, scope: !679, inlinedAt: !670)
!705 = !{!690}
!706 = !DILocation(line: 392, column: 21, scope: !679, inlinedAt: !670)
!707 = !DILocation(line: 392, column: 17, scope: !679, inlinedAt: !670)
!708 = !{!687}
!709 = !{!688, !689, !690, !691}
!710 = !DILocation(line: 392, column: 32, scope: !679, inlinedAt: !670)
!711 = !{!691}
!712 = !DILocation(line: 392, column: 15, scope: !679, inlinedAt: !670)
!713 = distinct !{!713, !676, !714, !172, !173, !174}
!714 = !DILocation(line: 393, column: 5, scope: !677, inlinedAt: !670)
!715 = !DILocation(line: 384, column: 15, scope: !716, inlinedAt: !670)
!716 = distinct !DILexicalBlock(scope: !717, file: !2, line: 383, column: 5)
!717 = distinct !DILexicalBlock(scope: !673, file: !2, line: 382, column: 5)
!718 = !DILocation(line: 384, column: 28, scope: !716, inlinedAt: !670)
!719 = !DILocation(line: 384, column: 21, scope: !716, inlinedAt: !670)
!720 = !DILocation(line: 384, column: 13, scope: !716, inlinedAt: !670)
!721 = distinct !{!721, !672, !722, !172}
!722 = !DILocation(line: 385, column: 5, scope: !673, inlinedAt: !670)
!723 = !DILocation(line: 389, column: 25, scope: !679, inlinedAt: !670)
!724 = !DILocation(line: 389, column: 15, scope: !679, inlinedAt: !670)
!725 = !DILocation(line: 390, column: 25, scope: !679, inlinedAt: !670)
!726 = !DILocation(line: 390, column: 15, scope: !679, inlinedAt: !670)
!727 = !DILocation(line: 391, column: 25, scope: !679, inlinedAt: !670)
!728 = !DILocation(line: 391, column: 15, scope: !679, inlinedAt: !670)
!729 = !DILocation(line: 392, column: 25, scope: !679, inlinedAt: !670)
!730 = !DILocation(line: 387, column: 31, scope: !680, inlinedAt: !670)
!731 = !DILocation(line: 387, column: 20, scope: !680, inlinedAt: !670)
!732 = distinct !{!732, !676, !714, !172, !173}
!733 = !DILocation(line: 605, column: 22, scope: !645)
!734 = distinct !{!734, !640, !735, !172}
!735 = !DILocation(line: 614, column: 5, scope: !641)
!736 = !DILocation(line: 572, column: 27, scope: !514)
!737 = distinct !{!737, !516, !738, !172}
!738 = !DILocation(line: 616, column: 3, scope: !515)
!739 = !DILocation(line: 572, column: 22, scope: !514)
!740 = !DILocation(line: 618, column: 3, scope: !499)
!741 = !DILocation(line: 618, column: 13, scope: !499)
!742 = !DILocation(line: 620, column: 13, scope: !743)
!743 = distinct !DILexicalBlock(scope: !499, file: !2, line: 620, column: 8)
!744 = !DILocation(line: 620, column: 8, scope: !743)
!745 = !DILocation(line: 620, column: 25, scope: !743)
!746 = !DILocation(line: 620, column: 8, scope: !499)
!747 = !DILocation(line: 625, column: 3, scope: !499)
!748 = !DISubprogram(name: "exit", scope: !489, file: !489, line: 624, type: !749, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !47}
!751 = distinct !DISubprogram(name: "dgesl", scope: !2, file: !2, line: 629, type: !752, scopeLine: 685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !754)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !45, !47, !47, !46, !45, !47}
!754 = !{!755, !756, !757, !758, !759, !760, !761, !762, !763}
!755 = !DILocalVariable(name: "a", arg: 1, scope: !751, file: !2, line: 629, type: !45)
!756 = !DILocalVariable(name: "lda", arg: 2, scope: !751, file: !2, line: 629, type: !47)
!757 = !DILocalVariable(name: "n", arg: 3, scope: !751, file: !2, line: 629, type: !47)
!758 = !DILocalVariable(name: "ipvt", arg: 4, scope: !751, file: !2, line: 629, type: !46)
!759 = !DILocalVariable(name: "b", arg: 5, scope: !751, file: !2, line: 629, type: !45)
!760 = !DILocalVariable(name: "job", arg: 6, scope: !751, file: !2, line: 629, type: !47)
!761 = !DILocalVariable(name: "k", scope: !751, file: !2, line: 686, type: !47)
!762 = !DILocalVariable(name: "l", scope: !751, file: !2, line: 687, type: !47)
!763 = !DILocalVariable(name: "t", scope: !751, file: !2, line: 688, type: !44)
!764 = !DILocation(line: 0, scope: !751)
!765 = !DILocation(line: 692, column: 12, scope: !766)
!766 = distinct !DILexicalBlock(scope: !751, file: !2, line: 692, column: 8)
!767 = !DILocation(line: 692, column: 8, scope: !751)
!768 = !DILocation(line: 721, column: 20, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !2, line: 721, column: 5)
!770 = distinct !DILexicalBlock(scope: !771, file: !2, line: 721, column: 5)
!771 = distinct !DILexicalBlock(scope: !766, file: !2, line: 720, column: 3)
!772 = !DILocation(line: 721, column: 5, scope: !770)
!773 = !DILocation(line: 694, column: 5, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !2, line: 694, column: 5)
!775 = distinct !DILexicalBlock(scope: !766, file: !2, line: 693, column: 3)
!776 = !DILocation(line: 694, column: 20, scope: !777)
!777 = distinct !DILexicalBlock(scope: !774, file: !2, line: 694, column: 5)
!778 = !DILocation(line: 709, column: 20, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !2, line: 709, column: 5)
!780 = distinct !DILexicalBlock(scope: !775, file: !2, line: 709, column: 5)
!781 = !DILocation(line: 709, column: 5, scope: !780)
!782 = !DILocation(line: 711, column: 19, scope: !783)
!783 = distinct !DILexicalBlock(scope: !779, file: !2, line: 710, column: 5)
!784 = !DILocation(line: 696, column: 17, scope: !785)
!785 = distinct !DILexicalBlock(scope: !777, file: !2, line: 695, column: 5)
!786 = !DILocation(line: 696, column: 11, scope: !785)
!787 = !DILocation(line: 697, column: 11, scope: !785)
!788 = !DILocation(line: 699, column: 14, scope: !789)
!789 = distinct !DILexicalBlock(scope: !785, file: !2, line: 699, column: 12)
!790 = !DILocation(line: 699, column: 12, scope: !785)
!791 = !DILocation(line: 701, column: 18, scope: !792)
!792 = distinct !DILexicalBlock(scope: !789, file: !2, line: 700, column: 7)
!793 = !DILocation(line: 701, column: 16, scope: !792)
!794 = !DILocation(line: 702, column: 16, scope: !792)
!795 = !DILocation(line: 703, column: 7, scope: !792)
!796 = !DILocation(line: 705, column: 16, scope: !785)
!797 = !DILocation(line: 705, column: 24, scope: !785)
!798 = !DILocation(line: 705, column: 32, scope: !785)
!799 = !DILocation(line: 705, column: 26, scope: !785)
!800 = !DILocation(line: 705, column: 42, scope: !785)
!801 = !DILocation(line: 0, scope: !656, inlinedAt: !802)
!802 = distinct !DILocation(line: 705, column: 7, scope: !785)
!803 = !DILocation(line: 335, column: 10, scope: !804, inlinedAt: !802)
!804 = distinct !DILexicalBlock(scope: !656, file: !2, line: 335, column: 8)
!805 = !DILocation(line: 335, column: 8, scope: !656, inlinedAt: !802)
!806 = !DILocation(line: 382, column: 20, scope: !717, inlinedAt: !802)
!807 = !DILocation(line: 382, column: 5, scope: !673, inlinedAt: !802)
!808 = !DILocation(line: 384, column: 15, scope: !716, inlinedAt: !802)
!809 = !DILocation(line: 384, column: 28, scope: !716, inlinedAt: !802)
!810 = !DILocation(line: 384, column: 21, scope: !716, inlinedAt: !802)
!811 = !DILocation(line: 384, column: 13, scope: !716, inlinedAt: !802)
!812 = distinct !{!812, !807, !813, !172}
!813 = !DILocation(line: 385, column: 5, scope: !673, inlinedAt: !802)
!814 = !DILocation(line: 387, column: 20, scope: !680, inlinedAt: !802)
!815 = !DILocation(line: 387, column: 5, scope: !677, inlinedAt: !802)
!816 = !DILocation(line: 389, column: 17, scope: !679, inlinedAt: !802)
!817 = !{!818}
!818 = distinct !{!818, !819}
!819 = distinct !{!819, !"LVerDomain"}
!820 = !{!821}
!821 = distinct !{!821, !819}
!822 = !DILocation(line: 389, column: 32, scope: !679, inlinedAt: !802)
!823 = !DILocation(line: 390, column: 21, scope: !679, inlinedAt: !802)
!824 = !DILocation(line: 390, column: 17, scope: !679, inlinedAt: !802)
!825 = !DILocation(line: 390, column: 32, scope: !679, inlinedAt: !802)
!826 = !DILocation(line: 391, column: 21, scope: !679, inlinedAt: !802)
!827 = !DILocation(line: 391, column: 17, scope: !679, inlinedAt: !802)
!828 = !DILocation(line: 391, column: 32, scope: !679, inlinedAt: !802)
!829 = !DILocation(line: 392, column: 21, scope: !679, inlinedAt: !802)
!830 = !DILocation(line: 392, column: 17, scope: !679, inlinedAt: !802)
!831 = !DILocation(line: 392, column: 32, scope: !679, inlinedAt: !802)
!832 = !DILocation(line: 392, column: 15, scope: !679, inlinedAt: !802)
!833 = distinct !{!833, !815, !834, !172, !173, !174}
!834 = !DILocation(line: 393, column: 5, scope: !677, inlinedAt: !802)
!835 = !DILocation(line: 389, column: 25, scope: !679, inlinedAt: !802)
!836 = !DILocation(line: 389, column: 15, scope: !679, inlinedAt: !802)
!837 = !DILocation(line: 390, column: 25, scope: !679, inlinedAt: !802)
!838 = !DILocation(line: 390, column: 15, scope: !679, inlinedAt: !802)
!839 = !DILocation(line: 391, column: 25, scope: !679, inlinedAt: !802)
!840 = !DILocation(line: 391, column: 15, scope: !679, inlinedAt: !802)
!841 = !DILocation(line: 392, column: 25, scope: !679, inlinedAt: !802)
!842 = !DILocation(line: 387, column: 31, scope: !680, inlinedAt: !802)
!843 = distinct !{!843, !815, !834, !172, !173}
!844 = !DILocation(line: 694, column: 29, scope: !777)
!845 = distinct !{!845, !773, !846, !172}
!846 = !DILocation(line: 707, column: 5, scope: !774)
!847 = !DILocation(line: 711, column: 16, scope: !783)
!848 = !DILocation(line: 711, column: 36, scope: !783)
!849 = !DILocation(line: 711, column: 30, scope: !783)
!850 = !DILocation(line: 711, column: 25, scope: !783)
!851 = !DILocation(line: 711, column: 23, scope: !783)
!852 = !DILocation(line: 711, column: 14, scope: !783)
!853 = !DILocation(line: 712, column: 11, scope: !783)
!854 = !DILocation(line: 713, column: 26, scope: !783)
!855 = !DILocation(line: 0, scope: !656, inlinedAt: !856)
!856 = distinct !DILocation(line: 713, column: 7, scope: !783)
!857 = !DILocation(line: 335, column: 10, scope: !804, inlinedAt: !856)
!858 = !DILocation(line: 335, column: 8, scope: !656, inlinedAt: !856)
!859 = !DILocation(line: 382, column: 20, scope: !717, inlinedAt: !856)
!860 = !DILocation(line: 382, column: 5, scope: !673, inlinedAt: !856)
!861 = !DILocation(line: 384, column: 15, scope: !716, inlinedAt: !856)
!862 = !DILocation(line: 384, column: 28, scope: !716, inlinedAt: !856)
!863 = !DILocation(line: 384, column: 21, scope: !716, inlinedAt: !856)
!864 = !DILocation(line: 384, column: 13, scope: !716, inlinedAt: !856)
!865 = distinct !{!865, !860, !866, !172}
!866 = !DILocation(line: 385, column: 5, scope: !673, inlinedAt: !856)
!867 = !DILocation(line: 387, column: 20, scope: !680, inlinedAt: !856)
!868 = !DILocation(line: 387, column: 5, scope: !677, inlinedAt: !856)
!869 = !DILocation(line: 389, column: 17, scope: !679, inlinedAt: !856)
!870 = !{!871}
!871 = distinct !{!871, !872}
!872 = distinct !{!872, !"LVerDomain"}
!873 = !{!874}
!874 = distinct !{!874, !872}
!875 = !DILocation(line: 389, column: 32, scope: !679, inlinedAt: !856)
!876 = !DILocation(line: 390, column: 21, scope: !679, inlinedAt: !856)
!877 = !DILocation(line: 390, column: 17, scope: !679, inlinedAt: !856)
!878 = !DILocation(line: 390, column: 32, scope: !679, inlinedAt: !856)
!879 = !DILocation(line: 391, column: 21, scope: !679, inlinedAt: !856)
!880 = !DILocation(line: 391, column: 17, scope: !679, inlinedAt: !856)
!881 = !DILocation(line: 391, column: 32, scope: !679, inlinedAt: !856)
!882 = !DILocation(line: 392, column: 21, scope: !679, inlinedAt: !856)
!883 = !DILocation(line: 392, column: 17, scope: !679, inlinedAt: !856)
!884 = !DILocation(line: 392, column: 32, scope: !679, inlinedAt: !856)
!885 = !DILocation(line: 392, column: 15, scope: !679, inlinedAt: !856)
!886 = distinct !{!886, !868, !887, !172, !173, !174}
!887 = !DILocation(line: 393, column: 5, scope: !677, inlinedAt: !856)
!888 = !DILocation(line: 389, column: 25, scope: !679, inlinedAt: !856)
!889 = !DILocation(line: 389, column: 15, scope: !679, inlinedAt: !856)
!890 = !DILocation(line: 390, column: 25, scope: !679, inlinedAt: !856)
!891 = !DILocation(line: 390, column: 15, scope: !679, inlinedAt: !856)
!892 = !DILocation(line: 391, column: 25, scope: !679, inlinedAt: !856)
!893 = !DILocation(line: 391, column: 15, scope: !679, inlinedAt: !856)
!894 = !DILocation(line: 392, column: 25, scope: !679, inlinedAt: !856)
!895 = !DILocation(line: 387, column: 31, scope: !680, inlinedAt: !856)
!896 = distinct !{!896, !868, !887, !172, !173}
!897 = distinct !{!897, !781, !898, !172}
!898 = !DILocation(line: 714, column: 5, scope: !780)
!899 = !DILocation(line: 727, column: 5, scope: !900)
!900 = distinct !DILexicalBlock(scope: !771, file: !2, line: 727, column: 5)
!901 = !DILocation(line: 727, column: 22, scope: !902)
!902 = distinct !DILexicalBlock(scope: !900, file: !2, line: 727, column: 5)
!903 = !DILocation(line: 723, column: 19, scope: !904)
!904 = distinct !DILexicalBlock(scope: !769, file: !2, line: 722, column: 5)
!905 = !DILocation(line: 723, column: 32, scope: !904)
!906 = !DILocation(line: 723, column: 26, scope: !904)
!907 = !DILocalVariable(name: "n", arg: 1, scope: !908, file: !2, line: 399, type: !47)
!908 = distinct !DISubprogram(name: "ddot", scope: !2, file: !2, line: 399, type: !909, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !911)
!909 = !DISubroutineType(types: !910)
!910 = !{!44, !47, !45, !47, !45, !47}
!911 = !{!907, !912, !913, !914, !915, !916, !917, !918, !919, !920}
!912 = !DILocalVariable(name: "dx", arg: 2, scope: !908, file: !2, line: 399, type: !45)
!913 = !DILocalVariable(name: "incx", arg: 3, scope: !908, file: !2, line: 399, type: !47)
!914 = !DILocalVariable(name: "dy", arg: 4, scope: !908, file: !2, line: 399, type: !45)
!915 = !DILocalVariable(name: "incy", arg: 5, scope: !908, file: !2, line: 399, type: !47)
!916 = !DILocalVariable(name: "dtemp", scope: !908, file: !2, line: 448, type: !44)
!917 = !DILocalVariable(name: "i", scope: !908, file: !2, line: 449, type: !47)
!918 = !DILocalVariable(name: "ix", scope: !908, file: !2, line: 450, type: !47)
!919 = !DILocalVariable(name: "iy", scope: !908, file: !2, line: 451, type: !47)
!920 = !DILocalVariable(name: "m", scope: !908, file: !2, line: 452, type: !47)
!921 = !DILocation(line: 0, scope: !908, inlinedAt: !922)
!922 = distinct !DILocation(line: 723, column: 11, scope: !904)
!923 = !DILocation(line: 456, column: 10, scope: !924, inlinedAt: !922)
!924 = distinct !DILexicalBlock(scope: !908, file: !2, line: 456, column: 8)
!925 = !DILocation(line: 456, column: 8, scope: !908, inlinedAt: !922)
!926 = !DILocation(line: 498, column: 20, scope: !927, inlinedAt: !922)
!927 = distinct !DILexicalBlock(scope: !928, file: !2, line: 498, column: 5)
!928 = distinct !DILexicalBlock(scope: !929, file: !2, line: 498, column: 5)
!929 = distinct !DILexicalBlock(scope: !930, file: !2, line: 495, column: 3)
!930 = distinct !DILexicalBlock(scope: !908, file: !2, line: 464, column: 8)
!931 = !DILocation(line: 498, column: 5, scope: !928, inlinedAt: !922)
!932 = !DILocation(line: 500, column: 23, scope: !933, inlinedAt: !922)
!933 = distinct !DILexicalBlock(scope: !927, file: !2, line: 499, column: 5)
!934 = !DILocation(line: 500, column: 31, scope: !933, inlinedAt: !922)
!935 = !DILocation(line: 500, column: 21, scope: !933, inlinedAt: !922)
!936 = !DILocation(line: 498, column: 26, scope: !927, inlinedAt: !922)
!937 = distinct !{!937, !938}
!938 = !{!"llvm.loop.unroll.disable"}
!939 = !DILocation(line: 503, column: 20, scope: !940, inlinedAt: !922)
!940 = distinct !DILexicalBlock(scope: !941, file: !2, line: 503, column: 5)
!941 = distinct !DILexicalBlock(scope: !929, file: !2, line: 503, column: 5)
!942 = !DILocation(line: 503, column: 5, scope: !941, inlinedAt: !922)
!943 = distinct !{!943, !931, !944, !172}
!944 = !DILocation(line: 501, column: 5, scope: !928, inlinedAt: !922)
!945 = !DILocation(line: 505, column: 23, scope: !946, inlinedAt: !922)
!946 = distinct !DILexicalBlock(scope: !940, file: !2, line: 504, column: 5)
!947 = !DILocation(line: 505, column: 33, scope: !946, inlinedAt: !922)
!948 = !DILocation(line: 505, column: 21, scope: !946, inlinedAt: !922)
!949 = !DILocation(line: 506, column: 27, scope: !946, inlinedAt: !922)
!950 = !DILocation(line: 506, column: 23, scope: !946, inlinedAt: !922)
!951 = !DILocation(line: 506, column: 33, scope: !946, inlinedAt: !922)
!952 = !DILocation(line: 506, column: 21, scope: !946, inlinedAt: !922)
!953 = !DILocation(line: 507, column: 27, scope: !946, inlinedAt: !922)
!954 = !DILocation(line: 507, column: 23, scope: !946, inlinedAt: !922)
!955 = !DILocation(line: 507, column: 33, scope: !946, inlinedAt: !922)
!956 = !DILocation(line: 507, column: 21, scope: !946, inlinedAt: !922)
!957 = !DILocation(line: 508, column: 27, scope: !946, inlinedAt: !922)
!958 = !DILocation(line: 508, column: 23, scope: !946, inlinedAt: !922)
!959 = !DILocation(line: 508, column: 33, scope: !946, inlinedAt: !922)
!960 = !DILocation(line: 508, column: 21, scope: !946, inlinedAt: !922)
!961 = !DILocation(line: 509, column: 27, scope: !946, inlinedAt: !922)
!962 = !DILocation(line: 509, column: 23, scope: !946, inlinedAt: !922)
!963 = !DILocation(line: 509, column: 33, scope: !946, inlinedAt: !922)
!964 = !DILocation(line: 509, column: 21, scope: !946, inlinedAt: !922)
!965 = !DILocation(line: 503, column: 31, scope: !940, inlinedAt: !922)
!966 = distinct !{!966, !942, !967, !172}
!967 = !DILocation(line: 510, column: 5, scope: !941, inlinedAt: !922)
!968 = !DILocation(line: 724, column: 18, scope: !904)
!969 = !DILocation(line: 724, column: 25, scope: !904)
!970 = !DILocation(line: 724, column: 33, scope: !904)
!971 = !DILocation(line: 724, column: 31, scope: !904)
!972 = !DILocation(line: 724, column: 14, scope: !904)
!973 = !DILocation(line: 721, column: 27, scope: !769)
!974 = distinct !{!974, !772, !975, !172}
!975 = !DILocation(line: 725, column: 5, scope: !770)
!976 = !DILocation(line: 727, scope: !900)
!977 = !DILocation(line: 729, column: 19, scope: !978)
!978 = distinct !DILexicalBlock(scope: !902, file: !2, line: 728, column: 5)
!979 = !DILocation(line: 729, column: 16, scope: !978)
!980 = !DILocation(line: 729, column: 33, scope: !978)
!981 = !DILocation(line: 729, column: 38, scope: !978)
!982 = !DILocation(line: 729, column: 46, scope: !978)
!983 = !DILocation(line: 729, column: 40, scope: !978)
!984 = !DILocation(line: 729, column: 56, scope: !978)
!985 = !DILocation(line: 0, scope: !908, inlinedAt: !986)
!986 = distinct !DILocation(line: 729, column: 25, scope: !978)
!987 = !DILocation(line: 498, column: 20, scope: !927, inlinedAt: !986)
!988 = !DILocation(line: 498, column: 5, scope: !928, inlinedAt: !986)
!989 = !DILocation(line: 500, column: 23, scope: !933, inlinedAt: !986)
!990 = !DILocation(line: 500, column: 31, scope: !933, inlinedAt: !986)
!991 = !DILocation(line: 500, column: 21, scope: !933, inlinedAt: !986)
!992 = !DILocation(line: 498, column: 26, scope: !927, inlinedAt: !986)
!993 = distinct !{!993, !938}
!994 = !DILocation(line: 503, column: 20, scope: !940, inlinedAt: !986)
!995 = !DILocation(line: 503, column: 5, scope: !941, inlinedAt: !986)
!996 = distinct !{!996, !988, !997, !172}
!997 = !DILocation(line: 501, column: 5, scope: !928, inlinedAt: !986)
!998 = !DILocation(line: 505, column: 23, scope: !946, inlinedAt: !986)
!999 = !DILocation(line: 505, column: 33, scope: !946, inlinedAt: !986)
!1000 = !DILocation(line: 505, column: 21, scope: !946, inlinedAt: !986)
!1001 = !DILocation(line: 506, column: 27, scope: !946, inlinedAt: !986)
!1002 = !DILocation(line: 506, column: 23, scope: !946, inlinedAt: !986)
!1003 = !DILocation(line: 506, column: 33, scope: !946, inlinedAt: !986)
!1004 = !DILocation(line: 506, column: 21, scope: !946, inlinedAt: !986)
!1005 = !DILocation(line: 507, column: 27, scope: !946, inlinedAt: !986)
!1006 = !DILocation(line: 507, column: 23, scope: !946, inlinedAt: !986)
!1007 = !DILocation(line: 507, column: 33, scope: !946, inlinedAt: !986)
!1008 = !DILocation(line: 507, column: 21, scope: !946, inlinedAt: !986)
!1009 = !DILocation(line: 508, column: 27, scope: !946, inlinedAt: !986)
!1010 = !DILocation(line: 508, column: 23, scope: !946, inlinedAt: !986)
!1011 = !DILocation(line: 508, column: 33, scope: !946, inlinedAt: !986)
!1012 = !DILocation(line: 508, column: 21, scope: !946, inlinedAt: !986)
!1013 = !DILocation(line: 509, column: 27, scope: !946, inlinedAt: !986)
!1014 = !DILocation(line: 509, column: 23, scope: !946, inlinedAt: !986)
!1015 = !DILocation(line: 509, column: 33, scope: !946, inlinedAt: !986)
!1016 = !DILocation(line: 509, column: 21, scope: !946, inlinedAt: !986)
!1017 = !DILocation(line: 503, column: 31, scope: !940, inlinedAt: !986)
!1018 = distinct !{!1018, !995, !1019, !172}
!1019 = !DILocation(line: 510, column: 5, scope: !941, inlinedAt: !986)
!1020 = !DILocation(line: 729, column: 23, scope: !978)
!1021 = !DILocation(line: 729, column: 14, scope: !978)
!1022 = !DILocation(line: 730, column: 11, scope: !978)
!1023 = !DILocation(line: 732, column: 14, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !978, file: !2, line: 732, column: 12)
!1025 = !DILocation(line: 732, column: 12, scope: !978)
!1026 = !DILocation(line: 734, column: 13, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 733, column: 7)
!1028 = !DILocation(line: 735, column: 16, scope: !1027)
!1029 = !DILocation(line: 736, column: 16, scope: !1027)
!1030 = !DILocation(line: 737, column: 7, scope: !1027)
!1031 = distinct !{!1031, !899, !1032, !172}
!1032 = !DILocation(line: 738, column: 5, scope: !900)
!1033 = !DILocation(line: 741, column: 1, scope: !751)
!1034 = !DISubprogram(name: "free", scope: !489, file: !489, line: 555, type: !1035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !492}
!1037 = !DILocation(line: 0, scope: !309)
!1038 = !DILocation(line: 953, column: 12, scope: !317)
!1039 = !DILocation(line: 953, column: 8, scope: !309)
!1040 = !DILocation(line: 961, column: 3, scope: !309)
!1041 = !DILocation(line: 274, column: 22, scope: !220)
!1042 = !DILocation(line: 274, column: 11, scope: !220)
!1043 = !DILocation(line: 275, column: 9, scope: !220)
!1044 = !DILocation(line: 0, scope: !220)
!1045 = !DILocation(line: 277, column: 3, scope: !220)
!1046 = !DISubprogram(name: "clock", scope: !1047, file: !1047, line: 72, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!1050}
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !1051, line: 7, baseType: !48)
!1051 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!1052 = !DILocation(line: 0, scope: !656)
!1053 = !DILocation(line: 335, column: 10, scope: !804)
!1054 = !DILocation(line: 335, column: 8, scope: !656)
!1055 = !DILocation(line: 348, column: 13, scope: !675)
!1056 = !DILocation(line: 348, column: 18, scope: !675)
!1057 = !DILocation(line: 359, column: 10, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !675, file: !2, line: 349, column: 3)
!1059 = !DILocation(line: 350, column: 10, scope: !1058)
!1060 = !DILocation(line: 368, column: 5, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 368, column: 5)
!1062 = !DILocation(line: 370, column: 16, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 369, column: 5)
!1064 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 368, column: 5)
!1065 = !{!1066}
!1066 = distinct !{!1066, !1067}
!1067 = distinct !{!1067, !"LVerDomain"}
!1068 = !{!1069}
!1069 = distinct !{!1069, !1067}
!1070 = !DILocation(line: 370, column: 30, scope: !1063)
!1071 = !DILocation(line: 370, column: 23, scope: !1063)
!1072 = !DILocation(line: 370, column: 14, scope: !1063)
!1073 = distinct !{!1073, !1060, !1074, !172, !173, !174}
!1074 = !DILocation(line: 373, column: 5, scope: !1061)
!1075 = !DILocation(line: 371, column: 15, scope: !1063)
!1076 = !DILocation(line: 372, column: 15, scope: !1063)
!1077 = !DILocation(line: 368, column: 26, scope: !1064)
!1078 = !DILocation(line: 368, column: 20, scope: !1064)
!1079 = distinct !{!1079, !1060, !1074, !172, !173}
!1080 = !DILocation(line: 382, column: 20, scope: !717)
!1081 = !DILocation(line: 382, column: 5, scope: !673)
!1082 = !DILocation(line: 387, column: 20, scope: !680)
!1083 = !DILocation(line: 387, column: 5, scope: !677)
!1084 = !DILocation(line: 389, column: 17, scope: !679)
!1085 = !{!1086}
!1086 = distinct !{!1086, !1087}
!1087 = distinct !{!1087, !"LVerDomain"}
!1088 = !{!1089}
!1089 = distinct !{!1089, !1087}
!1090 = !DILocation(line: 389, column: 32, scope: !679)
!1091 = !DILocation(line: 390, column: 21, scope: !679)
!1092 = !DILocation(line: 390, column: 17, scope: !679)
!1093 = !DILocation(line: 390, column: 32, scope: !679)
!1094 = !DILocation(line: 391, column: 21, scope: !679)
!1095 = !DILocation(line: 391, column: 17, scope: !679)
!1096 = !DILocation(line: 391, column: 32, scope: !679)
!1097 = !DILocation(line: 392, column: 21, scope: !679)
!1098 = !DILocation(line: 392, column: 17, scope: !679)
!1099 = !DILocation(line: 392, column: 32, scope: !679)
!1100 = !DILocation(line: 392, column: 15, scope: !679)
!1101 = distinct !{!1101, !1083, !1102, !172, !173, !174}
!1102 = !DILocation(line: 393, column: 5, scope: !677)
!1103 = !DILocation(line: 384, column: 15, scope: !716)
!1104 = !DILocation(line: 384, column: 28, scope: !716)
!1105 = !DILocation(line: 384, column: 21, scope: !716)
!1106 = !DILocation(line: 384, column: 13, scope: !716)
!1107 = distinct !{!1107, !1081, !1108, !172}
!1108 = !DILocation(line: 385, column: 5, scope: !673)
!1109 = !DILocation(line: 389, column: 25, scope: !679)
!1110 = !DILocation(line: 389, column: 15, scope: !679)
!1111 = !DILocation(line: 390, column: 25, scope: !679)
!1112 = !DILocation(line: 390, column: 15, scope: !679)
!1113 = !DILocation(line: 391, column: 25, scope: !679)
!1114 = !DILocation(line: 391, column: 15, scope: !679)
!1115 = !DILocation(line: 392, column: 25, scope: !679)
!1116 = !DILocation(line: 387, column: 31, scope: !680)
!1117 = distinct !{!1117, !1083, !1102, !172, !173}
!1118 = !DILocation(line: 396, column: 1, scope: !656)
!1119 = !DILocation(line: 0, scope: !908)
!1120 = !DILocation(line: 456, column: 10, scope: !924)
!1121 = !DILocation(line: 456, column: 8, scope: !908)
!1122 = !DILocation(line: 464, column: 13, scope: !930)
!1123 = !DILocation(line: 464, column: 18, scope: !930)
!1124 = !DILocation(line: 475, column: 10, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !930, file: !2, line: 465, column: 3)
!1126 = !DILocation(line: 466, column: 10, scope: !1125)
!1127 = !DILocation(line: 484, column: 5, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 484, column: 5)
!1129 = !DILocation(line: 486, column: 23, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 485, column: 5)
!1131 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 484, column: 5)
!1132 = !DILocation(line: 486, column: 32, scope: !1130)
!1133 = !DILocation(line: 486, column: 21, scope: !1130)
!1134 = !DILocation(line: 487, column: 15, scope: !1130)
!1135 = !DILocation(line: 488, column: 15, scope: !1130)
!1136 = distinct !{!1136, !1127, !1137, !172}
!1137 = !DILocation(line: 489, column: 5, scope: !1128)
!1138 = !DILocation(line: 498, column: 20, scope: !927)
!1139 = !DILocation(line: 498, column: 5, scope: !928)
!1140 = !DILocation(line: 500, column: 23, scope: !933)
!1141 = !DILocation(line: 500, column: 31, scope: !933)
!1142 = !DILocation(line: 500, column: 21, scope: !933)
!1143 = !DILocation(line: 498, column: 26, scope: !927)
!1144 = distinct !{!1144, !938}
!1145 = !DILocation(line: 503, column: 20, scope: !940)
!1146 = !DILocation(line: 503, column: 5, scope: !941)
!1147 = distinct !{!1147, !1139, !1148, !172}
!1148 = !DILocation(line: 501, column: 5, scope: !928)
!1149 = !DILocation(line: 505, column: 23, scope: !946)
!1150 = !DILocation(line: 505, column: 33, scope: !946)
!1151 = !DILocation(line: 505, column: 21, scope: !946)
!1152 = !DILocation(line: 506, column: 27, scope: !946)
!1153 = !DILocation(line: 506, column: 23, scope: !946)
!1154 = !DILocation(line: 506, column: 33, scope: !946)
!1155 = !DILocation(line: 506, column: 21, scope: !946)
!1156 = !DILocation(line: 507, column: 27, scope: !946)
!1157 = !DILocation(line: 507, column: 23, scope: !946)
!1158 = !DILocation(line: 507, column: 33, scope: !946)
!1159 = !DILocation(line: 507, column: 21, scope: !946)
!1160 = !DILocation(line: 508, column: 27, scope: !946)
!1161 = !DILocation(line: 508, column: 23, scope: !946)
!1162 = !DILocation(line: 508, column: 33, scope: !946)
!1163 = !DILocation(line: 508, column: 21, scope: !946)
!1164 = !DILocation(line: 509, column: 27, scope: !946)
!1165 = !DILocation(line: 509, column: 23, scope: !946)
!1166 = !DILocation(line: 509, column: 33, scope: !946)
!1167 = !DILocation(line: 509, column: 21, scope: !946)
!1168 = !DILocation(line: 503, column: 31, scope: !940)
!1169 = distinct !{!1169, !1146, !1170, !172}
!1170 = !DILocation(line: 510, column: 5, scope: !941)
!1171 = !DILocation(line: 513, column: 1, scope: !908)
!1172 = !DILocation(line: 0, scope: !524)
!1173 = !DILocation(line: 882, column: 10, scope: !537)
!1174 = !DILocation(line: 882, column: 14, scope: !537)
!1175 = !DILocation(line: 889, column: 10, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !524, file: !2, line: 889, column: 8)
!1177 = !DILocation(line: 889, column: 8, scope: !524)
!1178 = !DILocation(line: 894, column: 13, scope: !542)
!1179 = !DILocation(line: 0, scope: !309, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 896, column: 12, scope: !541)
!1181 = !DILocation(line: 0, scope: !309, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 910, column: 12, scope: !545)
!1183 = !DILocation(line: 0, scope: !542)
!1184 = !DILocation(line: 953, column: 12, scope: !317, inlinedAt: !1183)
!1185 = !DILocation(line: 953, column: 8, scope: !309, inlinedAt: !1183)
!1186 = !DILocation(line: 894, column: 8, scope: !524)
!1187 = !DILocation(line: 898, column: 20, scope: !555)
!1188 = !DILocation(line: 898, column: 5, scope: !551)
!1189 = !DILocation(line: 900, column: 28, scope: !553)
!1190 = !DILocation(line: 0, scope: !309, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 900, column: 19, scope: !553)
!1192 = !DILocation(line: 953, column: 12, scope: !317, inlinedAt: !1191)
!1193 = !DILocation(line: 953, column: 8, scope: !309, inlinedAt: !1191)
!1194 = !DILocation(line: 900, column: 17, scope: !553)
!1195 = !DILocation(line: 898, column: 26, scope: !555)
!1196 = !DILocation(line: 900, column: 12, scope: !554)
!1197 = distinct !{!1197, !1188, !1198, !172}
!1198 = !DILocation(line: 905, column: 5, scope: !551)
!1199 = !DILocation(line: 913, column: 5, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !545, file: !2, line: 913, column: 5)
!1201 = !DILocation(line: 915, column: 28, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 915, column: 12)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 914, column: 5)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 913, column: 5)
!1205 = !DILocation(line: 0, scope: !309, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 915, column: 19, scope: !1202)
!1207 = !DILocation(line: 953, column: 12, scope: !317, inlinedAt: !1206)
!1208 = !DILocation(line: 953, column: 8, scope: !309, inlinedAt: !1206)
!1209 = !DILocation(line: 915, column: 17, scope: !1202)
!1210 = !DILocation(line: 915, column: 12, scope: !1203)
!1211 = !DILocation(line: 920, column: 15, scope: !1203)
!1212 = distinct !{!1212, !1199, !1213, !172}
!1213 = !DILocation(line: 921, column: 5, scope: !1200)
!1214 = !DILocation(line: 925, column: 1, scope: !524)
!1215 = !DILocation(line: 0, scope: !591)
!1216 = !DILocation(line: 788, column: 10, scope: !604)
!1217 = !DILocation(line: 788, column: 8, scope: !591)
!1218 = !DILocation(line: 791, column: 18, scope: !610)
!1219 = !DILocation(line: 791, column: 13, scope: !604)
!1220 = !DILocation(line: 795, column: 20, scope: !607)
!1221 = !DILocation(line: 795, column: 5, scope: !608)
!1222 = !DILocation(line: 795, column: 26, scope: !607)
!1223 = !DILocation(line: 797, column: 19, scope: !614)
!1224 = !DILocation(line: 797, column: 17, scope: !614)
!1225 = !DILocation(line: 797, column: 12, scope: !614)
!1226 = distinct !{!1226, !1221, !1227, !172, !173, !174}
!1227 = !DILocation(line: 798, column: 5, scope: !608)
!1228 = !DILocation(line: 800, column: 20, scope: !620)
!1229 = !DILocation(line: 800, column: 5, scope: !621)
!1230 = !DILocation(line: 802, column: 19, scope: !624)
!1231 = distinct !{!1231, !1221, !1227, !172, !174, !173}
!1232 = !DILocation(line: 802, column: 21, scope: !624)
!1233 = !DILocation(line: 802, column: 14, scope: !624)
!1234 = !DILocation(line: 804, column: 21, scope: !624)
!1235 = !DILocation(line: 804, column: 19, scope: !624)
!1236 = !DILocation(line: 804, column: 14, scope: !624)
!1237 = !DILocation(line: 806, column: 21, scope: !624)
!1238 = !DILocation(line: 806, column: 19, scope: !624)
!1239 = !DILocation(line: 806, column: 14, scope: !624)
!1240 = !DILocation(line: 800, column: 31, scope: !620)
!1241 = distinct !{!1241, !1229, !1242, !172}
!1242 = !DILocation(line: 807, column: 5, scope: !621)
!1243 = !DILocation(line: 811, column: 10, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !610, file: !2, line: 810, column: 3)
!1245 = !DILocation(line: 820, column: 5, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 820, column: 5)
!1247 = !DILocation(line: 822, column: 20, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 821, column: 5)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !2, line: 820, column: 5)
!1250 = !DILocation(line: 822, column: 18, scope: !1248)
!1251 = !DILocation(line: 822, column: 13, scope: !1248)
!1252 = !DILocation(line: 823, column: 15, scope: !1248)
!1253 = distinct !{!1253, !1245, !1254, !172, !173}
!1254 = !DILocation(line: 824, column: 5, scope: !1246)
!1255 = distinct !{!1255, !938}
!1256 = !DILocation(line: 827, column: 1, scope: !591)
!1257 = distinct !DISubprogram(name: "r8_epsilon", scope: !2, file: !2, line: 965, type: !221, scopeLine: 997, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1258)
!1258 = !{!1259}
!1259 = !DILocalVariable(name: "value", scope: !1257, file: !2, line: 998, type: !1260)
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!1261 = !DILocation(line: 0, scope: !1257)
!1262 = !DILocation(line: 1000, column: 3, scope: !1257)
!1263 = !DILocation(line: 0, scope: !419)
!1264 = !DILocation(line: 1086, column: 9, scope: !419)
!1265 = !DILocation(line: 1086, column: 18, scope: !419)
!1266 = !DILocation(line: 1087, column: 13, scope: !419)
!1267 = !DILocation(line: 1088, column: 20, scope: !419)
!1268 = !DILocation(line: 1088, column: 13, scope: !419)
!1269 = !DILocation(line: 1089, column: 15, scope: !419)
!1270 = !DILocation(line: 1089, column: 24, scope: !419)
!1271 = !DILocation(line: 1089, column: 40, scope: !419)
!1272 = !DILocation(line: 1089, column: 13, scope: !419)
!1273 = !DILocation(line: 1089, column: 29, scope: !419)
!1274 = !DILocation(line: 1090, column: 13, scope: !419)
!1275 = !DILocation(line: 1091, column: 20, scope: !419)
!1276 = !DILocation(line: 1091, column: 13, scope: !419)
!1277 = !DILocation(line: 1092, column: 15, scope: !419)
!1278 = !DILocation(line: 1092, column: 24, scope: !419)
!1279 = !DILocation(line: 1092, column: 40, scope: !419)
!1280 = !DILocation(line: 1092, column: 56, scope: !419)
!1281 = !DILocation(line: 1092, column: 13, scope: !419)
!1282 = !DILocation(line: 1092, column: 29, scope: !419)
!1283 = !DILocation(line: 1092, column: 45, scope: !419)
!1284 = !DILocation(line: 1093, column: 13, scope: !419)
!1285 = !DILocation(line: 1094, column: 20, scope: !419)
!1286 = !DILocation(line: 1094, column: 13, scope: !419)
!1287 = !DILocation(line: 1095, column: 15, scope: !419)
!1288 = !DILocation(line: 1095, column: 24, scope: !419)
!1289 = !DILocation(line: 1095, column: 40, scope: !419)
!1290 = !DILocation(line: 1095, column: 56, scope: !419)
!1291 = !DILocation(line: 1095, column: 72, scope: !419)
!1292 = !DILocation(line: 1095, column: 13, scope: !419)
!1293 = !DILocation(line: 1095, column: 29, scope: !419)
!1294 = !DILocation(line: 1095, column: 45, scope: !419)
!1295 = !DILocation(line: 1095, column: 61, scope: !419)
!1296 = !DILocation(line: 1096, column: 15, scope: !419)
!1297 = !DILocation(line: 1100, column: 12, scope: !419)
!1298 = !DILocation(line: 1101, column: 12, scope: !419)
!1299 = !DILocation(line: 1102, column: 12, scope: !419)
!1300 = !DILocation(line: 1103, column: 12, scope: !419)
!1301 = !DILocation(line: 1108, column: 13, scope: !419)
!1302 = !DILocation(line: 1109, column: 13, scope: !419)
!1303 = !DILocation(line: 1110, column: 13, scope: !419)
!1304 = !DILocation(line: 1111, column: 13, scope: !419)
!1305 = !DILocation(line: 1111, column: 5, scope: !419)
!1306 = !DILocation(line: 1110, column: 5, scope: !419)
!1307 = !DILocation(line: 1109, column: 5, scope: !419)
!1308 = !DILocation(line: 1108, column: 9, scope: !419)
!1309 = !DILocation(line: 1113, column: 3, scope: !419)
