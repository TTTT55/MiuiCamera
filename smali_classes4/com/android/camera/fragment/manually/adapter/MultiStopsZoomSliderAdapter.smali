.class public abstract Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;
.super Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;
.source "MultiStopsZoomSliderAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiStopsZoomSliderAdapter"


# instance fields
.field protected final mCurrentMode:I

.field private mCurrentValue:Ljava/lang/String;

.field private mCurrentValueIndex:I

.field private mEnable:Z

.field private mEntryLayouts:[Landroid/text/StaticLayout;

.field private mIsLayoutRTL:Z

.field private mLineColorDefault:I

.field private mLineHalfHeight:F

.field private mLineTextGap:I

.field private mLineWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectHalfHeight:I

.field private mSelectPaint:Landroid/graphics/Paint;

.field private mSpaceTextStyle:Landroid/text/style/AbsoluteSizeSpan;

.field private mTargetHalfHeight:I

.field private mTextBoldStyle:Landroid/text/style/StyleSpan;

.field private mTextColor:I

.field private mTextFontStyle:Landroid/text/style/TypefaceSpan;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private final mZoomRatioMax:F

.field private final mZoomRatioMin:F

.field protected final mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/camera/fragment/manually/ZoomValueListener;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;-><init>()V

    const-string v0, "-1"

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mCurrentValue:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mCurrentValueIndex:I

    .line 4
    iput p2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mCurrentMode:I

    .line 5
    iput-object p3, p0, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mZoomValueListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    .line 6
    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mIsLayoutRTL:Z

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p2

    const-string p3, "pref_camera_zoom_key"

    const-string v0, "1.0"

    .line 8
    invoke-virtual {p2, p3, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mCurrentValue:Ljava/lang/String;

    .line 9
    move-object p2, p1

    check-cast p2, Lcom/android/camera/ActivityBase;

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p2

    check-cast p2, Lcom/android/camera/module/BaseModule;

    .line 10
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getMinZoomRatio()F

    move-result p3

    iput p3, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioMin:F

    .line 11
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getMaxZoomRatio()F

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioMax:F

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ZOOM RATIO RANGE ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioMin:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioMax:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MultiStopsZoomSliderAdapter"

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->getZoomRatioResolver()Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->initStyle(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p2, p1, [Ljava/lang/CharSequence;

    .line 15
    iget p3, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioMin:F

    .line 16
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->createZoomRatioLabel(F)Ljava/lang/CharSequence;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    iget p3, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioMax:F

    .line 17
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->createZoomRatioLabel(F)Ljava/lang/CharSequence;

    move-result-object p3

    const/4 v1, 0x1

    aput-object p3, p2, v1

    new-array p3, p1, [Landroid/text/StaticLayout;

    .line 18
    iput-object p3, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    :goto_0
    if-ge v0, p1, :cond_0

    .line 19
    iget-object p3, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    new-instance v9, Landroid/text/StaticLayout;

    aget-object v2, p2, v0

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mTextPaint:Landroid/text/TextPaint;

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

    if-nez v2, :cond_0

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->setStyleSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->setStyleSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mSpaceTextStyle:Landroid/text/style/AbsoluteSizeSpan;

    const/16 v1, 0x21

    const-string v2, " "

    invoke-static {v0, v2, p1, v1}, Lcom/android/camera/Util;->appendInApi26(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    const-string p1, "X"

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->setStyleSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private drawText(FILandroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v2, v2, p2

    .line 2
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 3
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 4
    invoke-virtual {p3, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object p0, p0, p2

    invoke-virtual {p0, p3}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawTextForItemAt(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isFirstStopPoint(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isLastStopPoint(I)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private indexToSection(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isFirstStopPoint(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isLastStopPoint(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private initStyle(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070309

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mTextSize:I

    const v1, 0x7f0600c5

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mTextColor:I

    const v2, 0x7f070303

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mLineHalfHeight:F

    const v2, 0x7f070305

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mTargetHalfHeight:I

    const v2, 0x7f070304

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mSelectHalfHeight:I

    const v2, 0x7f070307

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mLineWidth:I

    const v2, 0x7f070306

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mLineTextGap:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mLineColorDefault:I

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mLineColorDefault:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mSelectPaint:Landroid/graphics/Paint;

    const v2, -0xff5701

    .line 15
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, -0x41000000    # -0.5f

    invoke-virtual {v0, v2, v3, v2, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 17
    new-instance v0, Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mTextPaint:Landroid/text/TextPaint;

    .line 18
    iget v2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mTextColor:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 20
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0x12

    invoke-direct {v0, v2, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mSpaceTextStyle:Landroid/text/style/AbsoluteSizeSpan;

    .line 21
    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-static {p1}, Lcom/android/camera/Util;->getLanTineGBTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mTextFontStyle:Landroid/text/style/TypefaceSpan;

    .line 22
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mTextBoldStyle:Landroid/text/style/StyleSpan;

    return-void
.end method

.method private setStyleSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 2
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mTextFontStyle:Landroid/text/style/TypefaceSpan;

    invoke-static {p2}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object p2

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mTextBoldStyle:Landroid/text/style/StyleSpan;

    invoke-static {p0}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object p0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-virtual {p1, p0, v0, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public draw(FILandroid/graphics/Canvas;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isFirstStopPoint(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mIsLayoutRTL:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isLastStopPoint(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mIsLayoutRTL:Z

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->indexToSection(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->drawText(FILandroid/graphics/Canvas;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->measureWidth(I)F

    move-result v0

    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mLineWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    add-float/2addr p1, v0

    :cond_2
    if-eqz p4, :cond_3

    .line 4
    iget p4, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mSelectHalfHeight:I

    neg-int v0, p4

    int-to-float v2, v0

    int-to-float v4, p4

    iget-object v5, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mSelectPaint:Landroid/graphics/Paint;

    move-object v0, p3

    move v1, p1

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object p4, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {p4, p2}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isStopPoint(I)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 6
    iget p4, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mTargetHalfHeight:I

    neg-int v0, p4

    int-to-float v2, v0

    int-to-float v4, p4

    iget-object v5, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    move-object v0, p3

    move v1, p1

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 7
    :cond_4
    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mLineHalfHeight:F

    neg-float v2, v4

    iget-object v5, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mPaint:Landroid/graphics/Paint;

    move-object v0, p3

    move v1, p1

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 8
    :goto_0
    iget-object p4, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {p4, p2}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isLastStopPoint(I)Z

    move-result p4

    if-eqz p4, :cond_5

    iget-boolean p4, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mIsLayoutRTL:Z

    if-eqz p4, :cond_6

    :cond_5
    iget-object p4, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {p4, p2}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isFirstStopPoint(I)Z

    move-result p4

    if-eqz p4, :cond_7

    iget-boolean p4, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mIsLayoutRTL:Z

    if-eqz p4, :cond_7

    .line 9
    :cond_6
    iget p4, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mLineWidth:I

    int-to-float p4, p4

    add-float/2addr p1, p4

    iget p4, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mLineTextGap:I

    int-to-float p4, p4

    add-float/2addr p1, p4

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->indexToSection(I)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->drawText(FILandroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method public getAlign(I)Landroid/graphics/Paint$Align;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getCurrentCapturingMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mCurrentMode:I

    return p0
.end method

.method public getCurrentValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mCurrentValue:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentValueIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mCurrentValueIndex:I

    return p0
.end method

.method public getZoomRatioMax()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioMax:F

    return p0
.end method

.method public getZoomRatioMin()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioMin:F

    return p0
.end method

.method protected abstract getZoomRatioResolver()Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;
.end method

.method public isEnable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mEnable:Z

    return p0
.end method

.method public measureWidth(I)F
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->drawTextForItemAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->indexToSection(I)I

    move-result p1

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p1

    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mLineWidth:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mLineTextGap:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    return p1

    .line 3
    :cond_0
    iget p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mLineWidth:I

    int-to-float p0, p0

    return p0
.end method

.method public notifyDataChanged(ILjava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->getCurrentValueIndex()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mZoomValueListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {v1, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->isStopPoint(I)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/camera/fragment/manually/ZoomValueListener;->onZoomItemSlideOn(IZ)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mZoomValueListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p2}, Lcom/android/camera/fragment/manually/ZoomValueListener;->onManuallyDataChanged(Ljava/lang/String;)V

    .line 6
    :cond_1
    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mCurrentValue:Ljava/lang/String;

    .line 7
    iput p1, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mCurrentValueIndex:I

    return-void
.end method

.method public onPositionSelect(Landroid/view/View;IF)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mEnable:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    cmpg-float v0, p3, p1

    if-gez v0, :cond_1

    move p3, p1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, p3, p1

    if-ltz v0, :cond_2

    move p3, p1

    .line 2
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {p0, p2, p3}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->checkAndNotifyIfValueChanged(IF)Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mEnable:Z

    return-void
.end method
