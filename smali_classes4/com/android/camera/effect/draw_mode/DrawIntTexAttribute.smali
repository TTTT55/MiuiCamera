.class public Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawIntTexAttribute.java"


# instance fields
.field public mHeight:I

.field public mIsSnapshot:Z

.field public mTexId:I

.field public mWidth:I

.field public mX:I

.field public mY:I


# direct methods
.method public constructor <init>(IIIIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 2
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mX:I

    .line 3
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mY:I

    .line 4
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    .line 5
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    .line 6
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mTexId:I

    const/4 p1, 0x6

    .line 7
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    .line 8
    iput-boolean p6, p0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mIsSnapshot:Z

    return-void
.end method
