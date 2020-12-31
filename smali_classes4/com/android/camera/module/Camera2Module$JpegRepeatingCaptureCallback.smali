.class final Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;
.super Lcom/android/camera2/Camera2Proxy$PictureCallbackWrapper;
.source "Camera2Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegRepeatingCaptureCallback"
.end annotation


# instance fields
.field mBurstShotTitle:Ljava/lang/String;

.field private mDropped:Z

.field private mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field

.field mParallelParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

.field mPressDownTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Lcom/android/camera2/Camera2Proxy$PictureCallbackWrapper;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mParallelParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getBurstShotTitle()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$900(Lcom/android/camera/module/Camera2Module;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1000(Lcom/android/camera/module/Camera2Module;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mPressDownTitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6
    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x13

    if-eq v0, v4, :cond_1

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    .line 8
    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_UBIFOCUS_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->access$1000(Lcom/android/camera/module/Camera2Module;)I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 11
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_BURST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->access$1000(Lcom/android/camera/module/Camera2Module;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private tryCheckNeedStop()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1300(Lcom/android/camera/module/Camera2Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->access$2800(Lcom/android/camera/module/Camera2Module;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/CameraSize;Z)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 9

    .line 1
    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$1100(Lcom/android/camera/module/Camera2Module;)Z

    move-result p3

    const-string v0, "onCaptureStart: revNum = "

    const/4 v1, 0x1

    if-eqz p3, :cond_11

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-boolean p3, p3, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p3, :cond_11

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 2
    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$1000(Lcom/android/camera/module/Camera2Module;)I

    move-result p3

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v2}, Lcom/android/camera/module/Camera2Module;->access$1200(Lcom/android/camera/module/Camera2Module;)I

    move-result v2

    if-ge p3, v2, :cond_11

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$1300(Lcom/android/camera/module/Camera2Module;)Z

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$1000(Lcom/android/camera/module/Camera2Module;)I

    move-result p3

    if-ne p3, v1, :cond_2

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$1400(Lcom/android/camera/module/Camera2Module;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 4
    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$1500(Lcom/android/camera/module/Camera2Module;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$1600(Lcom/android/camera/module/Camera2Module;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onShutter()V

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p3, p3, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p3}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result p3

    if-nez p3, :cond_2

    .line 7
    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p3, p3, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p3}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p3

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mPressDownTitle:Ljava/lang/String;

    invoke-virtual {p3, v2, v3}, Lcom/android/camera/storage/ImageSaver;->updateImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->tryCheckNeedStop()Z

    move-result p3

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCaptureStart: need stop multi capture, return null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 10
    :cond_3
    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mParallelParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    const/4 v3, 0x0

    if-nez p3, :cond_9

    .line 11
    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p3, p3, Lcom/android/camera/module/BaseModule;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    if-eqz p3, :cond_4

    invoke-virtual {p3, p2}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 12
    :cond_4
    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iput-object p2, p3, Lcom/android/camera/module/BaseModule;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    .line 13
    :cond_5
    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p3, p3, Lcom/android/camera/module/BaseModule;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p3}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object p3

    .line 14
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget v4, v4, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    invoke-static {v4}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v4

    .line 15
    iget-object v5, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/module/Camera2Module;->access$1700(Lcom/android/camera/module/Camera2Module;I)I

    move-result v5

    .line 16
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$500()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCaptureStart: isHeic = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", quality = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v4, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    iget-object v6, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v6, v6, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 18
    invoke-virtual {v6}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object p2

    iget-object v7, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget v7, v7, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    invoke-direct {v4, v6, p2, p3, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    .line 19
    invoke-virtual {v4, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasDualWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 20
    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$2600(Lcom/android/camera/module/Camera2Module;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setMirror(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 21
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPortraitLightingPattern()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLightingPattern(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    sget p3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    .line 22
    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    const/4 p3, -0x1

    .line 23
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget v4, v4, Lcom/android/camera/module/BaseModule;->mOrientation:I

    if-ne p3, v4, :cond_6

    move v4, v3

    :cond_6
    invoke-virtual {p2, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 24
    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$2500(Lcom/android/camera/module/Camera2Module;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 25
    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$2400(Lcom/android/camera/module/Camera2Module;)F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setShootRotation(F)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 26
    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$2300(Lcom/android/camera/module/Camera2Module;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setShootOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 27
    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$2200(Lcom/android/camera/module/Camera2Module;)Landroid/location/Location;

    move-result-object p3

    if-eqz p3, :cond_7

    new-instance p3, Landroid/location/Location;

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v4}, Lcom/android/camera/module/Camera2Module;->access$2200(Lcom/android/camera/module/Camera2Module;)Landroid/location/Location;

    move-result-object v4

    invoke-direct {p3, v4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    :cond_7
    move-object p3, v2

    :goto_0
    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLocation(Landroid/location/Location;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 28
    invoke-virtual {p3}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFrontCamera(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 29
    invoke-virtual {p3}, Lcom/android/camera/module/BaseModule;->isPictureUseDualFrontCamera()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setBokehFrontCamera(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 30
    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$2100(Lcom/android/camera/module/Camera2Module;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setAlgorithmName(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 31
    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$2000(Lcom/android/camera/module/Camera2Module;)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 32
    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$1900(Lcom/android/camera/module/Camera2Module;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSuffix(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 33
    invoke-virtual {p2, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSaveGroupshotPrimitive(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 34
    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$1800(Lcom/android/camera/module/Camera2Module;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setDeviceWatermarkParam(Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 35
    invoke-virtual {p2, v5}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegQuality(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 36
    invoke-virtual {p3}, Lcom/android/camera/module/BaseModule;->isZoomRatioBetweenUltraAndWide()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mi/config/a;->Y()Z

    move-result p3

    if-eqz p3, :cond_8

    move p3, v1

    goto :goto_1

    :cond_8
    move p3, v3

    :goto_1
    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setReprocessBurstShotPicture(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 37
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mParallelParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    .line 38
    :cond_9
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mParallelParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    .line 39
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/storage/ImageSaver;->isSaveQueueFull()Z

    move-result p2

    if-nez p2, :cond_d

    .line 40
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$1004(Lcom/android/camera/module/Camera2Module;)I

    .line 41
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result p2

    if-nez p2, :cond_a

    .line 42
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 43
    :cond_a
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->getInstance(Landroid/content/Context;)Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->performBurstCapture()V

    .line 44
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$500()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1000(Lcom/android/camera/module/Camera2Module;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$100(Lcom/android/camera/module/Camera2Module;)Lio/reactivex/ObservableEmitter;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$1000(Lcom/android/camera/module/Camera2Module;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 46
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$1000(Lcom/android/camera/module/Camera2Module;)I

    move-result p2

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$1200(Lcom/android/camera/module/Camera2Module;)I

    move-result p3

    if-gt p2, p3, :cond_e

    .line 47
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget p2, p2, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    invoke-static {p2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result p2

    .line 48
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 49
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$500()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStart: savePath = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setSavePath(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$1000(Lcom/android/camera/module/Camera2Module;)I

    move-result p2

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$1200(Lcom/android/camera/module/Camera2Module;)I

    move-result p3

    if-eq p2, p3, :cond_c

    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 52
    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$1400(Lcom/android/camera/module/Camera2Module;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-boolean p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mDropped:Z

    if-eqz p2, :cond_b

    goto :goto_2

    :cond_b
    move v1, v3

    .line 53
    :cond_c
    :goto_2
    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedThumbnail(Z)V

    .line 54
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2, p1, v3}, Lcom/android/camera/module/Camera2Module;->access$2700(Lcom/android/camera/module/Camera2Module;Lcom/xiaomi/camera/core/ParallelTaskData;Z)V

    .line 55
    iput-boolean v3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mDropped:Z

    goto :goto_3

    .line 56
    :cond_d
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$500()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCaptureStart: queue full and drop "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$1000(Lcom/android/camera/module/Camera2Module;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mDropped:Z

    .line 58
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->access$1000(Lcom/android/camera/module/Camera2Module;)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$1200(Lcom/android/camera/module/Camera2Module;)I

    move-result p2

    if-lt p1, p2, :cond_e

    .line 59
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnailUncached()V

    :cond_e
    move-object p1, v2

    .line 60
    :goto_3
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$1000(Lcom/android/camera/module/Camera2Module;)I

    move-result p2

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p3}, Lcom/android/camera/module/Camera2Module;->access$1200(Lcom/android/camera/module/Camera2Module;)I

    move-result p3

    if-ge p2, p3, :cond_f

    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p2}, Lcom/android/camera/module/Camera2Module;->access$1400(Lcom/android/camera/module/Camera2Module;)Z

    move-result p2

    if-nez p2, :cond_f

    iget-boolean p2, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mDropped:Z

    if-eqz p2, :cond_10

    .line 61
    :cond_f
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->access$2800(Lcom/android/camera/module/Camera2Module;)V

    :cond_10
    return-object p1

    .line 62
    :cond_11
    :goto_4
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$500()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1000(Lcom/android/camera/module/Camera2Module;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " paused = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-boolean v0, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " status = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->access$1300(Lcom/android/camera/module/Camera2Module;)Z

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAbandoned(Z)V

    return-object p1
.end method

.method public onPictureTakenFinished(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$JpegRepeatingCaptureCallback;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    invoke-static {p0, p1}, Lcom/android/camera/module/Camera2Module;->access$2900(Lcom/android/camera/module/Camera2Module;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "callback onShotFinished null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
