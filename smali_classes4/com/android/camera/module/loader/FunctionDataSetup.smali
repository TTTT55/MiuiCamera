.class public Lcom/android/camera/module/loader/FunctionDataSetup;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionDataSetup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base<",
        "Lcom/android/camera/module/BaseModule;",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 8
    .param p1    # Lcom/android/camera/module/loader/NullHolder;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;)",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p0, 0xe1

    .line 5
    invoke-static {v0, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v1

    if-nez v1, :cond_2

    return-object p1

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v4

    .line 11
    iget v5, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getBogusCameraId()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/camera/data/data/config/DataItemConfig;->reInitComponent(IILcom/android/camera2/CameraCapabilities;)V

    .line 12
    iget v2, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getBogusCameraId()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    invoke-virtual {v3, v2, v5, v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->reInitComponent(IILcom/android/camera2/CameraCapabilities;)V

    .line 13
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getBogusCameraId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-virtual {v4, p0, v2, v3}, Lcom/android/camera/data/data/extra/DataItemLive;->reInitComponent(IILcom/android/camera2/CameraCapabilities;)V

    .line 14
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->reInit()V

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/CameraSize;->width:I

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    .line 17
    invoke-static {v1, p0}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result p0

    .line 18
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->setUiStyle(I)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionDataSetup;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method public getWorkThread()Lio/reactivex/Scheduler;
    .locals 0

    .line 1
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    return-object p0
.end method
