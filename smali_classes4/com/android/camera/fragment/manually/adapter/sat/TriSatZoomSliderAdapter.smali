.class public Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;
.super Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;
.source "TriSatZoomSliderAdapter.java"


# static fields
.field public static final ENTRY_COUNT_1X_TO_2X:I = 0xb

.field public static final ENTRY_COUNT_2X_TO_MAX:I = 0x26

.field public static final ENTRY_COUNT_MIN_TO_1X:I = 0x5

.field public static final ENTRY_COUNT_TOTAL:I = 0x34

.field public static final ENTRY_INDEX_1X:I = 0x4

.field public static final ENTRY_INDEX_2X:I = 0xe

.field public static final ENTRY_INDEX_MAX:I = 0x33

.field public static final ENTRY_INDEX_MIN:I = 0x0

.field public static final ENTRY_INDEX_TELE_ACTUAL:I

.field private static final RANGE_1X_TO_2X_ENTRY_INDEX_X:[F

.field private static final RANGE_1X_TO_2X_ZOOM_RATIO_Y:[F

.field private static final RANGE_2X_TO_MAX_ENTRY_INDEX_X:[F

.field private static final RANGE_2X_TO_MAX_ZOOM_RATIO_Y:[F

.field private static final RANGE_MIN_TO_1X_ENTRY_INDEX_X:[F

.field private static final RANGE_MIN_TO_1X_ZOOM_RATIO_Y:[F

.field private static final TAG:Ljava/lang/String; = "TriSatZoomSliderAdapter"

.field private static final sTextActivatedColorState:[I

.field private static final sTextDefaultColorState:[I


# instance fields
.field private mCurrentMode:I

.field private mCurrentValue:Ljava/lang/String;

.field private mCurrentValueIndex:I

.field private mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mDotColorActivated:I

.field private mDotRadius:I

.field private mEnable:Z

.field private mEntryLayouts:[Landroid/text/StaticLayout;

.field private mLineColorDefault:I

.field private mLineDotYGap:I

.field private mLineHalfHeight:F

.field private mLineLineGap:I

.field private mLineTextGap:I

.field private mLineWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRange1XTo2XEntryToZoomRatioSpline:Landroid/util/Spline;

.field private mRange1XTo2XZoomRatioToEntrySpline:Landroid/util/Spline;

.field private mRange2XToMaxEntryToZoomRatioSpline:Landroid/util/Spline;

.field private mRange2XToMaxZoomRatioToEntrySpline:Landroid/util/Spline;

.field private mRangeMinTo1XEntryToZoomRatioSpline:Landroid/util/Spline;

.field private mRangeMinTo1XZoomRatioToEntrySpline:Landroid/util/Spline;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mXTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private final mZoomRatioMax:F

.field private final mZoomRatioMin:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10102fe

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->sTextActivatedColorState:[I

    new-array v0, v0, [I

    aput v3, v0, v3

    .line 2
    sput-object v0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->sTextDefaultColorState:[I

    .line 3
    invoke-static {}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->findActualTeleIndex()I

    move-result v0

    sput v0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->ENTRY_INDEX_TELE_ACTUAL:I

    const/4 v0, 0x5

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->RANGE_MIN_TO_1X_ENTRY_INDEX_X:[F

    new-array v0, v0, [F

    .line 5
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->RANGE_MIN_TO_1X_ZOOM_RATIO_Y:[F

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 6
    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->RANGE_1X_TO_2X_ENTRY_INDEX_X:[F

    new-array v0, v0, [F

    .line 7
    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->RANGE_1X_TO_2X_ZOOM_RATIO_Y:[F

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 8
    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->RANGE_2X_TO_MAX_ENTRY_INDEX_X:[F

    new-array v0, v0, [F

    .line 9
    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->RANGE_2X_TO_MAX_ZOOM_RATIO_Y:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x40800000    # 4.0f
        0x41600000    # 14.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_4
    .array-data 4
        0x41600000    # 14.0f
        0x41800000    # 16.0f
        0x41c00000    # 24.0f
        0x41e80000    # 29.0f
        0x41f80000    # 31.0f
        0x42040000    # 33.0f
        0x42080000    # 34.0f
        0x42100000    # 36.0f
        0x421c0000    # 39.0f
    .end array-data

    :array_5
    .array-data 4
        0x40000000    # 2.0f
        0x400ccccd    # 2.2f
        0x406ccccd    # 3.7f
        0x40a33333    # 5.1f
        0x40b9999a    # 5.8f
        0x40d33333    # 6.6f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/camera/fragment/manually/ZoomValueListener;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;-><init>()V

    .line 2
    iput p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mCurrentMode:I

    .line 3
    iput-object p3, p0, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mZoomValueListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p2

    const-string p3, "pref_camera_zoom_key"

    const-string v0, "1.0"

    .line 5
    invoke-virtual {p2, p3, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mCurrentValue:Ljava/lang/String;

    .line 6
    move-object p2, p1

    check-cast p2, Lcom/android/camera/ActivityBase;

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p2

    check-cast p2, Lcom/android/camera/module/BaseModule;

    .line 7
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getMaxZoomRatio()F

    move-result p3

    iput p3, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mZoomRatioMax:F

    .line 8
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getMinZoomRatio()F

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mZoomRatioMin:F

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ZOOM RATIO RANGE ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mZoomRatioMin:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mZoomRatioMax:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TriSatZoomSliderAdapter"

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object p2, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->RANGE_MIN_TO_1X_ENTRY_INDEX_X:[F

    sget-object p3, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->RANGE_MIN_TO_1X_ZOOM_RATIO_Y:[F

    invoke-static {p2, p3}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mRangeMinTo1XEntryToZoomRatioSpline:Landroid/util/Spline;

    .line 11
    sget-object p2, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->RANGE_MIN_TO_1X_ZOOM_RATIO_Y:[F

    sget-object p3, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->RANGE_MIN_TO_1X_ENTRY_INDEX_X:[F

    invoke-static {p2, p3}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mRangeMinTo1XZoomRatioToEntrySpline:Landroid/util/Spline;

    .line 12
    sget-object p2, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->RANGE_1X_TO_2X_ENTRY_INDEX_X:[F

    sget-object p3, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->RANGE_1X_TO_2X_ZOOM_RATIO_Y:[F

    invoke-static {p2, p3}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mRange1XTo2XEntryToZoomRatioSpline:Landroid/util/Spline;

    .line 13
    sget-object p2, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->RANGE_1X_TO_2X_ZOOM_RATIO_Y:[F

    sget-object p3, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->RANGE_1X_TO_2X_ENTRY_INDEX_X:[F

    invoke-static {p2, p3}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mRange1XTo2XZoomRatioToEntrySpline:Landroid/util/Spline;

    .line 14
    invoke-static {}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->getEntryX()[F

    move-result-object p2

    .line 15
    iget p3, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mZoomRatioMax:F

    invoke-static {p3}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->getZoomRatioY(F)[F

    move-result-object p3

    .line 16
    invoke-static {p2, p3}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mRange2XToMaxEntryToZoomRatioSpline:Landroid/util/Spline;

    .line 17
    invoke-static {p3, p2}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mRange2XToMaxZoomRatioToEntrySpline:Landroid/util/Spline;

    .line 18
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->initStyle(Landroid/content/Context;)V

    const/4 p1, 0x4

    new-array p2, p1, [Ljava/lang/CharSequence;

    const p3, 0x3f19999a    # 0.6f

    .line 19
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->createZoomRatioLabel(F)Ljava/lang/CharSequence;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const/high16 p3, 0x3f800000    # 1.0f

    .line 20
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->createZoomRatioLabel(F)Ljava/lang/CharSequence;

    move-result-object p3

    const/4 v1, 0x1

    aput-object p3, p2, v1

    .line 21
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result p3

    invoke-direct {p0, p3}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->createZoomRatioLabel(F)Ljava/lang/CharSequence;

    move-result-object p3

    const/4 v1, 0x2

    aput-object p3, p2, v1

    iget p3, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mZoomRatioMax:F

    .line 22
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->createZoomRatioLabel(F)Ljava/lang/CharSequence;

    move-result-object p3

    const/4 v1, 0x3

    aput-object p3, p2, v1

    new-array p3, p1, [Landroid/text/StaticLayout;

    .line 23
    iput-object p3, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    :goto_0
    if-ge v0, p1, :cond_0

    .line 24
    iget-object p3, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    new-instance v9, Landroid/text/StaticLayout;

    aget-object v2, p2, v0

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mTextPaint:Landroid/text/TextPaint;

    sget v4, Lcom/android/camera/Util;->sWindowWidth:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    aput-object v9, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createZoomRatioLabel(F)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result p1

    float-to-int v1, p1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, p1

    mul-int/lit8 v3, v1, 0xa

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v3, 0x21

    if-nez v2, :cond_0

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-static {v0, p1, v1, v3}, Lcom/android/camera/Util;->appendInApi26(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-static {v0, p1, v1, v3}, Lcom/android/camera/Util;->appendInApi26(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    const-string p1, "X"

    invoke-static {v0, p1, p0, v3}, Lcom/android/camera/Util;->appendInApi26(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private drawText(ILandroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v2, v2, p1

    .line 2
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 3
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static drawTextForItemAt(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0x33

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static findActualTeleIndex()I
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->getRealZoomRatioTele()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    cmpl-float v3, v0, v1

    if-eqz v3, :cond_0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    sub-float/2addr v0, v2

    float-to-int v0, v0

    return v0

    :cond_0
    const/16 v0, 0xe

    return v0
.end method

.method private static getEntryX()[F
    .locals 7

    .line 1
    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->RANGE_2X_TO_MAX_ENTRY_INDEX_X:[F

    .line 2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    const/16 v2, 0xe

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 3
    array-length v3, v0

    new-array v3, v3, [F

    const/4 v4, 0x0

    .line 4
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 5
    aget v5, v0, v4

    cmpg-float v5, v5, v2

    if-gtz v5, :cond_0

    .line 6
    aget v5, v0, v4

    aput v5, v3, v4

    goto :goto_1

    .line 7
    :cond_0
    aget v5, v0, v4

    sub-float/2addr v5, v2

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x42140000    # 37.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    aput v5, v3, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private static getZoomRatioY(F)[F
    .locals 7

    .line 1
    sget-object v0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->RANGE_2X_TO_MAX_ZOOM_RATIO_Y:[F

    .line 2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    float-to-int v1, v1

    .line 3
    array-length v2, v0

    new-array v2, v2, [F

    .line 4
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v3

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 6
    aget v5, v0, v4

    cmpg-float v5, v5, v3

    if-gtz v5, :cond_0

    .line 7
    aget v5, v0, v4

    aput v5, v2, v4

    goto :goto_1

    .line 8
    :cond_0
    aget v5, v0, v4

    sub-float/2addr v5, v3

    int-to-float v6, v1

    sub-float/2addr v6, v3

    div-float/2addr v5, v6

    sub-float v6, p0, v3

    mul-float/2addr v5, v6

    add-float/2addr v5, v3

    aput v5, v2, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static indexToSection(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v0, 0xe

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/16 v0, 0x33

    if-ne p0, v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private initStyle(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    const v1, 0x7f1100de

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mTextSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mTextSize:I

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070124

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mLineHalfHeight:F

    const v2, 0x7f070127

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mLineWidth:I

    const v2, 0x7f070301

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mDotRadius:I

    const v2, 0x7f070125

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mLineLineGap:I

    const v2, 0x7f070126

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mLineTextGap:I

    const v2, 0x7f070302

    .line 12
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mLineDotYGap:I

    const v2, 0x7f0600c7

    .line 13
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mLineColorDefault:I

    const v2, 0x7f0600c6

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mDotColorActivated:I

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 20
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mTextPaint:Landroid/text/TextPaint;

    .line 21
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v1, 0x7f11018d

    invoke-direct {v0, p1, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    .line 22
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v1, 0x7f11018e

    invoke-direct {v0, p1, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method


# virtual methods
.method public draw(ILandroid/graphics/Canvas;Z)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->drawTextForItemAt(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mTextPaint:Landroid/text/TextPaint;

    if-eqz p3, :cond_0

    .line 3
    sget-object p3, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->sTextActivatedColorState:[I

    goto :goto_0

    .line 4
    :cond_0
    sget-object p3, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->sTextDefaultColorState:[I

    :goto_0
    iput-object p3, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 5
    invoke-static {p1}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->indexToSection(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->drawText(ILandroid/graphics/Canvas;)V

    goto :goto_3

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_2

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->sTextActivatedColorState:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_1

    .line 8
    :cond_2
    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mLineColorDefault:I

    .line 9
    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    .line 10
    iget v6, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mLineHalfHeight:F

    neg-float v4, v6

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 11
    sget v0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->ENTRY_INDEX_TELE_ACTUAL:I

    if-ne p1, v0, :cond_4

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_3

    iget p3, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mDotColorActivated:I

    goto :goto_2

    :cond_3
    iget p3, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mLineColorDefault:I

    :goto_2
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 13
    iget p3, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mLineHalfHeight:F

    neg-float p3, p3

    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mLineDotYGap:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mDotRadius:I

    int-to-float v1, v0

    sub-float/2addr p3, v1

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public getAlign(I)Landroid/graphics/Paint$Align;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->drawTextForItemAt(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    return-object p0
.end method

.method public getCount()I
    .locals 0

    const/16 p0, 0x34

    return p0
.end method

.method public isEnable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mEnable:Z

    return p0
.end method

.method public mapPositionToZoomRatio(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    const/high16 v1, 0x40800000    # 4.0f

    if-gtz v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mRangeMinTo1XEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_0
    cmpg-float v0, v1, p1

    if-gtz v0, :cond_1

    const/high16 v0, 0x41600000    # 14.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mRange1XTo2XEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mRange2XToMaxEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public mapZoomRatioToPosition(F)F
    .locals 2

    const v0, 0x3f19999a    # 0.6f

    cmpg-float v0, v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mRangeMinTo1XZoomRatioToEntrySpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    :cond_0
    cmpg-float v0, v1, p1

    if-gtz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mRange1XTo2XZoomRatioToEntrySpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mRange2XToMaxZoomRatioToEntrySpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public measureGap(I)F
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->drawTextForItemAt(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mLineTextGap:I

    :goto_0
    int-to-float p0, p0

    return p0

    .line 3
    :cond_0
    iget p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mLineLineGap:I

    goto :goto_0
.end method

.method public measureWidth(I)F
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->drawTextForItemAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    invoke-static {p1}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->indexToSection(I)I

    move-result p1

    aget-object p0, p0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p0

    return p0

    .line 3
    :cond_0
    iget p0, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mLineWidth:I

    int-to-float p0, p0

    return p0
.end method

.method public onPositionSelect(Landroid/view/View;IF)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mEnable:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xe

    const/4 v0, 0x1

    if-gt p2, p1, :cond_2

    const p1, 0x3f19999a    # 0.6f

    int-to-float p3, p2

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr p3, v1

    .line 2
    invoke-static {p1, p3}, Lcom/android/camera/HybridZoomingSystem;->add(FF)F

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget p3, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mCurrentValueIndex:I

    if-eq p3, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p3, p1

    .line 6
    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mapPositionToZoomRatio(F)F

    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object p3, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    xor-int/2addr v0, p3

    :goto_0
    if-eqz v0, :cond_5

    .line 9
    iget p3, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mCurrentValueIndex:I

    if-eq p3, p2, :cond_3

    iget-object p3, p0, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mZoomValueListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    if-eqz p3, :cond_3

    .line 10
    invoke-static {p2}, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->drawTextForItemAt(I)Z

    move-result v0

    invoke-interface {p3, p2, v0}, Lcom/android/camera/fragment/manually/ZoomValueListener;->onZoomItemSlideOn(IZ)V

    .line 11
    :cond_3
    iget-object p3, p0, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mZoomValueListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    if-eqz p3, :cond_4

    .line 12
    invoke-interface {p3, p1}, Lcom/android/camera/fragment/manually/ZoomValueListener;->onManuallyDataChanged(Ljava/lang/String;)V

    .line 13
    :cond_4
    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mCurrentValue:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mCurrentValueIndex:I

    :cond_5
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/adapter/sat/TriSatZoomSliderAdapter;->mEnable:Z

    return-void
.end method
