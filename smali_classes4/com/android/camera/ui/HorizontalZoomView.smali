.class public Lcom/android/camera/ui/HorizontalZoomView;
.super Lcom/android/camera/ui/BaseHorizontalZoomView;
.source "HorizontalZoomView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HorizontalZoomView"

.field private static final TOUCH_SCROLL_THRESHOLD:I = 0xa

.field private static final TOUCH_STATE_CLICK:I = 0x1

.field private static final TOUCH_STATE_IDLE:I = 0x0

.field private static final TOUCH_STATE_SCROLL:I = 0x2


# instance fields
.field private isOnlyDrawLine:Z

.field private mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

.field private mDrawEndX:F

.field private mDrawStartX:F

.field private mEnableCallBack:Z

.field private mFirstItemWidth:F

.field protected mItemGap:F

.field private mItemWidthNormal:F

.field private mLastItemWidth:F

.field private mMargin:I

.field private mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

.field private mSelectPointX:F

.field protected mTotalWidth:F

.field private mTouchStartTime:F

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private mTouchState:I

.field private mTouchX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawEndX:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mEnableCallBack:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/BaseHorizontalZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 7
    iput p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    iput p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawEndX:F

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mEnableCallBack:Z

    const/4 p2, 0x0

    .line 9
    iput p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/BaseHorizontalZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 12
    iput p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    iput p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawEndX:F

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mEnableCallBack:Z

    const/4 p2, 0x0

    .line 14
    iput p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getFirstOrLastWidth(Z)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mFirstItemWidth:F

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mLastItemWidth:F

    :goto_0
    iget p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemWidthNormal:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method private getItemWidth(I)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->measureWidth(I)F

    move-result p0

    return p0
.end method

.method private setSelectPointXToEffectiveRang(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/HorizontalZoomView;->getFirstOrLastWidth(Z)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawEndX:F

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->getFirstOrLastWidth(Z)F

    move-result v2

    sub-float/2addr v1, v2

    .line 3
    invoke-static {p1, v0, v1}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    return-void
.end method

.method private startScrollIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float v0, v0

    .line 3
    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartX:F

    const/high16 v2, 0x41200000    # 10.0f

    sub-float v3, v1, v2

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_1

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    int-to-float p1, p1

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartY:F

    sub-float v1, v0, v2

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    add-float/2addr v0, v2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070308

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mMargin:I

    int-to-float v0, p1

    .line 2
    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    .line 3
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    sub-int v1, v0, p1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawEndX:F

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    int-to-float p1, v0

    .line 4
    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTotalWidth:F

    return-void
.end method

.method public isIdle()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-direct {v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->setSelectPointXToEffectiveRang(F)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v2, v4

    .line 3
    iget-object v4, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    const/4 v5, 0x1

    if-eqz v4, :cond_d

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iget-object v7, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v7}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v7

    sub-int/2addr v7, v5

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v4, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    .line 6
    :cond_1
    iget-object v8, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v8}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v5

    :goto_1
    if-eqz v4, :cond_2

    const/4 v10, -0x1

    goto :goto_2

    :cond_2
    move v10, v5

    .line 7
    :goto_2
    iget v11, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    move v13, v5

    const/4 v12, 0x0

    const/4 v14, -0x1

    .line 8
    :goto_3
    iget-object v15, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v15}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v15

    if-ge v12, v15, :cond_a

    mul-int v15, v12, v10

    add-int/2addr v15, v7

    .line 9
    invoke-direct {v0, v15}, Lcom/android/camera/ui/HorizontalZoomView;->getItemWidth(I)F

    move-result v16

    if-nez v12, :cond_3

    .line 10
    invoke-direct {v0, v5}, Lcom/android/camera/ui/HorizontalZoomView;->getFirstOrLastWidth(Z)F

    move-result v17

    add-float v17, v11, v17

    iget v9, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    sub-float v17, v17, v9

    move/from16 v3, v17

    goto :goto_4

    .line 11
    :cond_3
    iget v9, v0, Lcom/android/camera/ui/HorizontalZoomView;->mItemWidthNormal:F

    div-float/2addr v9, v3

    add-float/2addr v9, v11

    iget v3, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    sub-float v3, v9, v3

    :goto_4
    if-eqz v13, :cond_7

    .line 12
    iget v9, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    iget v6, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawStartX:F

    invoke-direct {v0, v5}, Lcom/android/camera/ui/HorizontalZoomView;->getFirstOrLastWidth(Z)F

    move-result v18

    add-float v6, v6, v18

    cmpg-float v6, v9, v6

    if-gtz v6, :cond_4

    move v14, v7

    :goto_5
    const/high16 v9, 0x40000000    # 2.0f

    :goto_6
    const/4 v13, 0x0

    goto :goto_8

    .line 13
    :cond_4
    iget v6, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    iget v9, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawEndX:F

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/android/camera/ui/HorizontalZoomView;->getFirstOrLastWidth(Z)F

    move-result v19

    sub-float v9, v9, v19

    cmpl-float v5, v6, v9

    if-ltz v5, :cond_5

    move v14, v8

    goto :goto_5

    .line 14
    :cond_5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, v0, Lcom/android/camera/ui/HorizontalZoomView;->mItemWidthNormal:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_6

    :goto_7
    move v14, v15

    goto :goto_6

    .line 15
    :cond_6
    iget-boolean v5, v0, Lcom/android/camera/ui/HorizontalZoomView;->isOnlyDrawLine:Z

    if-eqz v5, :cond_8

    .line 16
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, v0, Lcom/android/camera/ui/HorizontalZoomView;->mItemGap:F

    div-float/2addr v5, v9

    iget v6, v0, Lcom/android/camera/ui/HorizontalZoomView;->mItemWidthNormal:F

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_8

    goto :goto_7

    :cond_7
    const/high16 v9, 0x40000000    # 2.0f

    .line 17
    :cond_8
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 19
    iget-object v3, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-nez v13, :cond_9

    if-ne v14, v15, :cond_9

    const/4 v5, 0x1

    goto :goto_9

    :cond_9
    const/4 v5, 0x0

    :goto_9
    invoke-virtual {v3, v11, v15, v1, v5}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->draw(FILandroid/graphics/Canvas;Z)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 21
    iget v3, v0, Lcom/android/camera/ui/HorizontalZoomView;->mItemGap:F

    add-float v16, v16, v3

    add-float v11, v11, v16

    add-int/lit8 v12, v12, 0x1

    move v3, v9

    const/4 v5, 0x1

    goto/16 :goto_3

    .line 22
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v13, :cond_b

    .line 24
    iget-object v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    iget v3, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v5, v1, v13}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->draw(FILandroid/graphics/Canvas;Z)V

    .line 25
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 26
    iget-object v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mEnableCallBack:Z

    if-eqz v1, :cond_d

    .line 27
    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->getFirstOrLastWidth(Z)F

    move-result v3

    sub-float/2addr v1, v3

    iget v3, v0, Lcom/android/camera/ui/HorizontalZoomView;->mMargin:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, v0, Lcom/android/camera/ui/HorizontalZoomView;->mTotalWidth:F

    .line 28
    invoke-direct {v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->getFirstOrLastWidth(Z)F

    move-result v5

    sub-float/2addr v3, v5

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->getFirstOrLastWidth(Z)F

    move-result v5

    sub-float/2addr v3, v5

    div-float/2addr v1, v3

    if-eqz v4, :cond_c

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    .line 29
    :cond_c
    iget-object v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

    invoke-interface {v2, v0, v14, v1}, Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;->onPositionSelect(Landroid/view/View;IF)V

    :cond_d
    const/4 v1, 0x0

    .line 30
    iput-boolean v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->isOnlyDrawLine:Z

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mEnableCallBack:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    goto :goto_1

    .line 3
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-ne v0, v3, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->startScrollIfNeeded(Landroid/view/MotionEvent;)Z

    .line 5
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-ne v0, v2, :cond_7

    .line 6
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-float v0, v4

    iget v4, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartTime:F

    sub-float/2addr v0, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    .line 9
    iput v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    return v3

    .line 10
    :cond_4
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-ne v0, v2, :cond_5

    .line 11
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchX:F

    sub-float/2addr v2, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    .line 13
    :goto_0
    iput v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    .line 14
    iput-boolean v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->isOnlyDrawLine:Z

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 16
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartTime:F

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartX:F

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchStartY:F

    .line 19
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    if-eq v0, v2, :cond_7

    .line 20
    iput v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    .line 21
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchX:F

    return v3
.end method

.method public setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    const/4 p1, 0x0

    const/4 v0, 0x0

    move v1, p1

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->getItemWidth(I)F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mFirstItemWidth:F

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    invoke-virtual {v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->getItemWidth(I)F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mLastItemWidth:F

    goto :goto_1

    .line 6
    :cond_1
    iget v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemWidthNormal:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_2

    .line 7
    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->getItemWidth(I)F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemWidthNormal:F

    .line 8
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->getItemWidth(I)F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTotalWidth:F

    sub-float/2addr p1, v1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mItemGap:F

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEvent(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchState:I

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public setJustifyEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setOnPositionSelectListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

    return-void
.end method

.method public setSelection(FZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mDrawAdapter:Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTotalWidth:F

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/HorizontalZoomView;->getFirstOrLastWidth(Z)F

    move-result v2

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->getFirstOrLastWidth(Z)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    .line 3
    invoke-direct {p0, v1}, Lcom/android/camera/ui/HorizontalZoomView;->getFirstOrLastWidth(Z)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->mMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    xor-int/lit8 v0, p2, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mEnableCallBack:Z

    .line 5
    iput-boolean p2, p0, Lcom/android/camera/ui/HorizontalZoomView;->isOnlyDrawLine:Z

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSelection   "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HorizontalZoomView"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
