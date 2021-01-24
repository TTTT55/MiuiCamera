.class public Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CameraZoomAnimateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

.field private mContext:Landroid/content/Context;

.field private mIsHorizontal:Z

.field private mMaxZoomRatio:F

.field private mMinZoomRatio:F

.field private mSpeed:F

.field private mTouchDownAnimator:Landroid/animation/ValueAnimator;

.field private mZoomRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    .line 4
    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mContext:Landroid/content/Context;

    .line 5
    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mIsHorizontal:Z

    .line 6
    new-instance v0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    return p0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    return p1
.end method

.method static synthetic access$016(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;F)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mMinZoomRatio:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mMaxZoomRatio:F

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    return-object p0
.end method

.method private isAnimatorRunning(Landroid/animation/Animator;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public containsSliderTouchRect(Landroid/graphics/Point;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->getSliderTouchRect()Landroid/graphics/Rect;

    move-result-object p0

    .line 2
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCurrentZoomRatio()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public move(Landroid/graphics/Point;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mIsHorizontal:Z

    if-eqz v0, :cond_1

    .line 3
    iget v0, p1, Landroid/graphics/Point;->x:I

    sget v1, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->SLIDER_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    neg-int v0, v0

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p1, Landroid/graphics/Point;->y:I

    sget v1, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->SLIDER_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    neg-float v0, v0

    .line 5
    sget v1, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->SLIDER_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->move(Landroid/graphics/Point;)V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setCurrentZoomRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mZoomRatio:F

    return-void
.end method

.method public setSmoothSpeed(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public startTouchDownAnimation(Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$1;-><init>(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    const/4 p0, 0x1

    return p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public stopTouchUpAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->startSliderBackAnimation()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    new-instance v1, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;-><init>(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mSpeed:F

    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateZoomRatio(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mMinZoomRatio:F

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mMaxZoomRatio:F

    .line 3
    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->mCameraZoomAdjustPaint:Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->setZoomRange(FF)V

    return-void
.end method
