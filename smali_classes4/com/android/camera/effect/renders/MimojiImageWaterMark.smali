.class Lcom/android/camera/effect/renders/MimojiImageWaterMark;
.super Lcom/android/camera/effect/renders/WaterMark;
.source "MimojiImageWaterMark.java"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mHeight:I

.field private mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mPaddingX:I

.field private mPaddingY:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIIFFF)V
    .locals 7

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/effect/renders/WaterMark;-><init>(III)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v0, p2

    move v1, p3

    move v4, p5

    move v5, p6

    move v6, p7

    .line 3
    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->calcDualCameraWatermarkLocation(IIIIFFF)[I

    move-result-object p2

    const/4 p3, 0x0

    .line 4
    aget p4, p2, p3

    iput p4, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mWidth:I

    const/4 p5, 0x1

    .line 5
    aget p5, p2, p5

    iput p5, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mHeight:I

    const/4 p6, 0x2

    .line 6
    aget p6, p2, p6

    iput p6, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mPaddingX:I

    const/4 p6, 0x3

    .line 7
    aget p2, p2, p6

    iput p2, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mPaddingY:I

    int-to-double p6, p4

    const-wide v0, 0x3ff0a3d70a3d70a4L    # 1.04

    mul-double/2addr p6, v0

    double-to-int p2, p6

    .line 8
    iput p2, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mWidth:I

    int-to-double p4, p5

    mul-double/2addr p4, v0

    double-to-int p2, p4

    .line 9
    iput p2, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mHeight:I

    .line 10
    new-instance p2, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 11
    invoke-virtual {p2, p3}, Lcom/android/gallery3d/ui/UploadedTexture;->setOpaque(Z)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->calcCenterAxis()V

    return-void
.end method

.method private calcCenterAxis()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mOrientation:I

    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mCenterX:I

    .line 3
    iget v0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mCenterY:I

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mCenterX:I

    .line 5
    iget v0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mCenterY:I

    goto :goto_0

    .line 6
    :cond_2
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mCenterX:I

    .line 7
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mCenterY:I

    goto :goto_0

    .line 8
    :cond_3
    iget v0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mCenterX:I

    .line 9
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mCenterY:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mCenterX:I

    return p0
.end method

.method public getCenterY()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mCenterY:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mHeight:I

    return p0
.end method

.method public getPaddingX()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mPaddingX:I

    return p0
.end method

.method public getPaddingY()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mPaddingY:I

    return p0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/MimojiImageWaterMark;->mWidth:I

    return p0
.end method
