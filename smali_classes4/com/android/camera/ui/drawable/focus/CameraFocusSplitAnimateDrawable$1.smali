.class Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;
.super Lc/h/a/m;
.source "CameraFocusSplitAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startTouchDownAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-direct {p0}, Lc/h/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lc/h/a/m;->getInterpolation(F)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->access$100(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->updateValue(F)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method
