.class Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$5;
.super Lc/h/a/k;
.source "CameraFocusSplitAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startNormalFocusSuccessAnimation(Lcom/android/camera/ui/drawable/CameraPaintBase;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

.field final synthetic val$circlePaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

.field final synthetic val$indicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;Lcom/android/camera/ui/drawable/CameraPaintBase;Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$5;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iput-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$5;->val$circlePaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    iput-object p3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$5;->val$indicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {p0}, Lc/h/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lc/h/a/k;->getInterpolation(F)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$5;->val$circlePaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$5;->val$indicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->updateValue(F)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$5;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method
