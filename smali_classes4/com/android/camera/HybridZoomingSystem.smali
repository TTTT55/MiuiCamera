.class public Lcom/android/camera/HybridZoomingSystem;
.super Ljava/lang/Object;
.source "HybridZoomingSystem.java"


# static fields
.field private static final DEFAULT_OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

.field public static final FLOAT_MICRO_SCENE_ZOOM_MAX:F = 1.0f

.field public static final FLOAT_MOON_MODE_ZOOM_MAX:F = 20.0f

.field public static final FLOAT_MOON_MODE_ZOOM_MIN:F = 1.0f

.field public static final FLOAT_STEP_FOR_ZOOM_RATIO_CHANGE:F = 0.1f

.field public static final FLOAT_ULTRA_WIDE_ZOOM_MAX:F = 6.0f

.field public static final FLOAT_ZOOM_RATIO_10X:F = 10.0f

.field public static final FLOAT_ZOOM_RATIO_2X:F = 2.0f

.field public static final FLOAT_ZOOM_RATIO_30X:F = 30.0f

.field public static final FLOAT_ZOOM_RATIO_3X:F = 3.0f

.field public static final FLOAT_ZOOM_RATIO_5X:F = 5.0f

.field public static final FLOAT_ZOOM_RATIO_MACRO:F = 0.0f

.field public static final FLOAT_ZOOM_RATIO_NONE:F = 1.0f

.field public static final FLOAT_ZOOM_RATIO_ULTR:F = 0.6f

.field public static final FLOAT_ZOOM_RATIO_ULTRA_TELE_THRESHHOLD:F = 3.7f

.field public static final FLOAT_ZOOM_RATIO_WIDE:F = 1.0f

.field public static final IS_2_OR_MORE_SAT:Z

.field public static final IS_2_SAT:Z

.field public static final IS_3_OR_MORE_SAT:Z

.field public static final IS_3_SAT:Z

.field public static final IS_4_OR_MORE_SAT:Z

.field public static final IS_4_SAT:Z

.field private static final MACRO_OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

.field private static final OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

.field public static final STRING_ZOOM_RATIO_NONE:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "HybridZoomingSystem"

.field public static final TOLERANCE_FOR_ZOOM_RATIO_CHANGED:F = 0.01f

.field public static sDefaultMacroOpticalZoomRatio:F

.field private static sDefaultOpticalZoomRatioIndex:I

.field private static sFunOrLiveSupportedOpticalZoomRatios:[F

.field private static sFunOrLiveSupportedZoomRatioIndex:I

.field private static sMacroSupportedOpticalZoomRatios:[F

.field private static sMacroZoomRatioIndex:I

.field private static sNightSupportedOpticalZoomRatios:[F

.field private static sNightSupportedZoomRatioIndex:I

.field private static sPixelSupportedOpticalZoomRatios:[F

.field private static sPixelSupportedZoomRatioIndex:I

.field private static sSupportedOpticalZoomRatios:[F

.field private static final sZoomRatioHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sZoomingSourceIdentity:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "\\s*[:,]\\s*"

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/android/camera/HybridZoomingSystem;->sZoomingSourceIdentity:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/android/camera/HybridZoomingSystem;->sZoomRatioHistory:Ljava/util/Map;

    .line 3
    invoke-static {}, Lcom/mi/config/b;->A0()Z

    move-result v1

    const-string v3, "1.0"

    if-eqz v1, :cond_0

    const-string v1, "1.0:2.0"

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    sput-object v1, Lcom/android/camera/HybridZoomingSystem;->DEFAULT_OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    sget-object v4, Lcom/android/camera/HybridZoomingSystem;->DEFAULT_OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v4}, Lcom/mi/config/a;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/HybridZoomingSystem;->OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    sget-object v4, Lcom/android/camera/HybridZoomingSystem;->DEFAULT_OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/mi/config/a;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/HybridZoomingSystem;->MACRO_OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    const/4 v1, -0x1

    .line 7
    sput v1, Lcom/android/camera/HybridZoomingSystem;->sMacroZoomRatioIndex:I

    const/4 v4, 0x3

    new-array v5, v4, [F

    .line 8
    fill-array-data v5, :array_0

    sput-object v5, Lcom/android/camera/HybridZoomingSystem;->sFunOrLiveSupportedOpticalZoomRatios:[F

    const/4 v5, 0x1

    .line 9
    sput v5, Lcom/android/camera/HybridZoomingSystem;->sFunOrLiveSupportedZoomRatioIndex:I

    const/4 v6, 0x2

    new-array v6, v6, [F

    .line 10
    fill-array-data v6, :array_1

    sput-object v6, Lcom/android/camera/HybridZoomingSystem;->sPixelSupportedOpticalZoomRatios:[F

    .line 11
    sput v2, Lcom/android/camera/HybridZoomingSystem;->sPixelSupportedZoomRatioIndex:I

    new-array v6, v4, [F

    .line 12
    fill-array-data v6, :array_2

    sput-object v6, Lcom/android/camera/HybridZoomingSystem;->sNightSupportedOpticalZoomRatios:[F

    .line 13
    sput v5, Lcom/android/camera/HybridZoomingSystem;->sNightSupportedZoomRatioIndex:I

    .line 14
    sput v1, Lcom/android/camera/HybridZoomingSystem;->sDefaultOpticalZoomRatioIndex:I

    const/high16 v6, 0x3f800000    # 1.0f

    .line 15
    sput v6, Lcom/android/camera/HybridZoomingSystem;->sDefaultMacroOpticalZoomRatio:F

    .line 16
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v7, Ljava/util/Scanner;

    sget-object v8, Lcom/android/camera/HybridZoomingSystem;->OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-virtual {v7, v0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mi/config/a;->A0()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 20
    sput v2, Lcom/android/camera/HybridZoomingSystem;->sMacroZoomRatioIndex:I

    const-string v8, "0"

    .line 21
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, v1

    .line 22
    :cond_2
    :goto_1
    invoke-virtual {v7}, Ljava/util/Scanner;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 23
    invoke-virtual {v7}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 24
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 25
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    .line 26
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget v9, Lcom/android/camera/HybridZoomingSystem;->sDefaultOpticalZoomRatioIndex:I

    if-ne v9, v1, :cond_2

    .line 27
    sput v8, Lcom/android/camera/HybridZoomingSystem;->sDefaultOpticalZoomRatioIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    .line 29
    sget v3, Lcom/android/camera/HybridZoomingSystem;->sDefaultOpticalZoomRatioIndex:I

    const-string v7, "The supported optical zoom ratios are probably not configured correctly"

    if-ltz v3, :cond_d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v5, :cond_d

    .line 30
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [F

    sput-object v3, Lcom/android/camera/HybridZoomingSystem;->sSupportedOpticalZoomRatios:[F

    .line 31
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v8, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 32
    sget-object v10, Lcom/android/camera/HybridZoomingSystem;->sSupportedOpticalZoomRatios:[F

    add-int/lit8 v11, v8, 0x1

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v10, v8

    move v8, v11

    goto :goto_2

    .line 33
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/HybridZoomingSystem;->sSupportedOpticalZoomRatios:[F

    invoke-static {v8}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/camera/HybridZoomingSystem;->sDefaultOpticalZoomRatioIndex:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "HybridZoomingSystem"

    invoke-static {v8, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-boolean v3, Lcom/mi/config/b;->U:Z

    if-eqz v3, :cond_5

    .line 35
    sget-object v3, Lcom/android/camera/HybridZoomingSystem;->sSupportedOpticalZoomRatios:[F

    sput-object v3, Lcom/android/camera/HybridZoomingSystem;->sFunOrLiveSupportedOpticalZoomRatios:[F

    .line 36
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/a;->F1()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 37
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 38
    new-instance v3, Ljava/util/Scanner;

    sget-object v9, Lcom/android/camera/HybridZoomingSystem;->MACRO_OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 39
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 40
    :cond_6
    :goto_3
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 41
    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 43
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_6

    .line 44
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/android/camera/HybridZoomingSystem;->sDefaultMacroOpticalZoomRatio:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 45
    :cond_7
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 46
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_9

    .line 47
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    sput-object v0, Lcom/android/camera/HybridZoomingSystem;->sMacroSupportedOpticalZoomRatios:[F

    .line 48
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    sget-object v3, Lcom/android/camera/HybridZoomingSystem;->sMacroSupportedOpticalZoomRatios:[F

    add-int/lit8 v6, v2, 0x1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v3, v2

    move v2, v6

    goto :goto_4

    .line 50
    :cond_8
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->sMacroSupportedOpticalZoomRatios:[F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 51
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 52
    :try_start_2
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v0

    .line 53
    :cond_a
    :goto_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->t2()Z

    move-result v0

    if-eqz v0, :cond_c

    new-array v0, v4, [F

    .line 54
    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/HybridZoomingSystem;->sNightSupportedOpticalZoomRatios:[F

    .line 55
    sget-boolean v0, Lcom/mi/config/b;->U:Z

    if-eqz v0, :cond_b

    .line 56
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->sSupportedOpticalZoomRatios:[F

    sput-object v0, Lcom/android/camera/HybridZoomingSystem;->sNightSupportedOpticalZoomRatios:[F

    .line 57
    :cond_b
    sput v5, Lcom/android/camera/HybridZoomingSystem;->sNightSupportedZoomRatioIndex:I

    goto :goto_7

    .line 58
    :cond_c
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->sSupportedOpticalZoomRatios:[F

    sput-object v0, Lcom/android/camera/HybridZoomingSystem;->sNightSupportedOpticalZoomRatios:[F

    .line 59
    sget v0, Lcom/android/camera/HybridZoomingSystem;->sDefaultOpticalZoomRatioIndex:I

    sput v0, Lcom/android/camera/HybridZoomingSystem;->sNightSupportedZoomRatioIndex:I

    .line 60
    :goto_7
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    const-string v1, "^\\d+\\.\\d+\\s*:\\s*\\d+\\.\\d+$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_2_SAT:Z

    .line 61
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    const-string v1, "^\\d+\\.\\d+\\s*:\\s*\\d+\\.\\d+(\\s*:\\s*\\d+\\.\\d+)*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_2_OR_MORE_SAT:Z

    .line 62
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    const-string v1, "^\\d+\\.\\d+\\s*:\\s*\\d+\\.\\d+\\s*:\\s*\\d+\\.\\d+$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_SAT:Z

    .line 63
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    const-string v1, "^\\d+\\.\\d+\\s*:\\s*\\d+\\.\\d+\\s*:\\s*\\d+\\.\\d+(\\s*:\\s*\\d+\\.\\d+)*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    .line 64
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    const-string v1, "^\\d+\\.\\d+\\s*:\\s*\\d+\\.\\d+\\s*:\\s*\\d+\\.\\d+\\s*:\\s*\\d+\\.\\d+$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_4_SAT:Z

    .line 65
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->OPTICAL_ZOOM_RATIO_COMBINATION:Ljava/lang/String;

    const-string v1, "^\\d+\\.\\d+\\s*:\\s*\\d+\\.\\d+\\s*:\\s*\\d+\\.\\d+\\s*:\\s*\\d+\\.\\d+(\\s*:\\s*\\d+\\.\\d+)*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_4_OR_MORE_SAT:Z

    return-void

    .line 66
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 67
    :try_start_3
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v0

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(FF)F
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/2addr p0, p1

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static clearZoomRatioHistory()V
    .locals 2

    const-string v0, "HybridZoomingSystem"

    const-string v1, "clearZoomRatioHistory()"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->sZoomRatioHistory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->sZoomingSourceIdentity:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static getDefaultOpticalZoomRatioIndex(I)I
    .locals 1

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1
    sget p0, Lcom/android/camera/HybridZoomingSystem;->sDefaultOpticalZoomRatioIndex:I

    return p0

    .line 2
    :pswitch_0
    sget p0, Lcom/android/camera/HybridZoomingSystem;->sPixelSupportedZoomRatioIndex:I

    return p0

    .line 3
    :pswitch_1
    sget p0, Lcom/android/camera/HybridZoomingSystem;->sNightSupportedZoomRatioIndex:I

    return p0

    .line 4
    :cond_0
    :pswitch_2
    sget p0, Lcom/android/camera/HybridZoomingSystem;->sFunOrLiveSupportedZoomRatioIndex:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xad
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getMacroZoomRatioIndex(I)I
    .locals 1

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1
    sget p0, Lcom/android/camera/HybridZoomingSystem;->sMacroZoomRatioIndex:I

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, -0x1

    return p0

    :pswitch_data_0
    .packed-switch 0xad
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getMaximumMacroOpticalZoomRatio()F
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->sMacroSupportedOpticalZoomRatios:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 2
    aget v0, v0, v1

    return v0
.end method

.method public static getMaximumOpticalZoomRatio(I)F
    .locals 1

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sSupportedOpticalZoomRatios:[F

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sPixelSupportedOpticalZoomRatios:[F

    goto :goto_0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sNightSupportedOpticalZoomRatios:[F

    goto :goto_0

    .line 4
    :cond_0
    :pswitch_2
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sFunOrLiveSupportedOpticalZoomRatios:[F

    .line 5
    :goto_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 6
    aget p0, p0, v0

    return p0

    :pswitch_data_0
    .packed-switch 0xad
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getMinimumMacroOpticalZoomRatio()F
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->sMacroSupportedOpticalZoomRatios:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static getMinimumOpticalZoomRatio(I)F
    .locals 2

    const/16 v0, 0xa1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 1
    sget p0, Lcom/android/camera/HybridZoomingSystem;->sMacroZoomRatioIndex:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sSupportedOpticalZoomRatios:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0

    .line 3
    :cond_0
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sSupportedOpticalZoomRatios:[F

    aget p0, p0, v1

    return p0

    .line 4
    :pswitch_0
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sPixelSupportedOpticalZoomRatios:[F

    aget p0, p0, v1

    return p0

    .line 5
    :pswitch_1
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sNightSupportedOpticalZoomRatios:[F

    aget p0, p0, v1

    return p0

    .line 6
    :cond_1
    :pswitch_2
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sFunOrLiveSupportedOpticalZoomRatios:[F

    aget p0, p0, v1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xad
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getOpticalZoomRatioAt(II)F
    .locals 5

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sSupportedOpticalZoomRatios:[F

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sPixelSupportedOpticalZoomRatios:[F

    goto :goto_0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sNightSupportedOpticalZoomRatios:[F

    goto :goto_0

    .line 4
    :cond_0
    :pswitch_2
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sFunOrLiveSupportedOpticalZoomRatios:[F

    .line 5
    :goto_0
    array-length v0, p0

    const-string v1, ")   curIndex error : "

    const-string v2, "The given index must be in range [0, "

    const-string v3, "HybridZoomingSystem"

    if-gez p1, :cond_1

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    if-lt p1, v0, :cond_2

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, v0, -0x1

    .line 8
    :cond_2
    :goto_1
    aget p0, p0, p1

    return p0

    :pswitch_data_0
    .packed-switch 0xad
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getOpticalZoomRatioIndex(IF)I
    .locals 2

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sSupportedOpticalZoomRatios:[F

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sPixelSupportedOpticalZoomRatios:[F

    goto :goto_0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sNightSupportedOpticalZoomRatios:[F

    goto :goto_0

    .line 4
    :cond_0
    :pswitch_2
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sFunOrLiveSupportedOpticalZoomRatios:[F

    .line 5
    :goto_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 6
    aget v1, p0, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal zoom ratio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0xad
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getSupportedOpticalZoomRatios(I)[F
    .locals 1

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sSupportedOpticalZoomRatios:[F

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sPixelSupportedOpticalZoomRatios:[F

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sNightSupportedOpticalZoomRatios:[F

    return-object p0

    .line 4
    :cond_0
    :pswitch_2
    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->sFunOrLiveSupportedOpticalZoomRatios:[F

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xad
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getTeleMinZoomRatio()F
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraCapabilities;->getMinZoomRatio(F)F

    move-result v1

    :goto_0
    return v1
.end method

.method public static getZoomRatioHistory(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa5

    if-ne p0, v0, :cond_0

    const/16 p0, 0xa3

    .line 1
    :cond_0
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->sZoomRatioHistory:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    move-object p1, p0

    :cond_1
    return-object p1
.end method

.method public static getZoomingSourceIdentity()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->sZoomingSourceIdentity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static isOpticalZoomRatio(F)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->sSupportedOpticalZoomRatios:[F

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static preload()V
    .locals 2

    const-string v0, "HybridZoomingSystem"

    const-string v1, "preload"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setZoomRatioHistory(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xa5

    if-ne p0, v0, :cond_0

    const/16 p0, 0xa3

    .line 1
    :cond_0
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->sZoomRatioHistory:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setZoomingSourceIdentity(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomingSourceIdentity(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HybridZoomingSystem"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/android/camera/HybridZoomingSystem;->sZoomingSourceIdentity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static sub(FF)F
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    sub-int/2addr p0, p1

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static toCropRegion(FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p0

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    float-to-int p1, p1

    .line 5
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sub-int v4, v0, v2

    sub-int v5, v1, p1

    add-int/2addr v0, v2

    add-int/2addr v1, p1

    .line 6
    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "toCropRegion(): zoom ratio = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", crop region = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HybridZoomingSystem"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activeArraySize must be non null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Zoom ratio must be greater than 0.0f"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toDecimal(F)F
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 2
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid zoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HybridZoomingSystem"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static toString(F)Ljava/lang/String;
    .locals 4

    const v0, 0x3f19999a    # 0.6f

    cmpl-float v0, v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "%.1fx"

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v0, p0

    if-eqz v0, :cond_2

    .line 1
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v0

    cmpl-float v0, v0, p0

    if-eqz v0, :cond_2

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, v0, p0

    if-nez v0, :cond_1

    const-string p0, "macro"

    return-object p0

    .line 2
    :cond_1
    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result p0

    .line 3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
