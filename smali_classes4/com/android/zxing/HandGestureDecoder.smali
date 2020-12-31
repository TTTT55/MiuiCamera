.class public Lcom/android/zxing/HandGestureDecoder;
.super Lcom/android/zxing/Decoder;
.source "HandGestureDecoder.java"


# static fields
.field private static DEBUG:Z = false

.field private static DETECTION_FRAMES_PER_SECOND:I = 0x10

.field public static final TAG:Ljava/lang/String; = "HandGestureDecoder"


# instance fields
.field private mCameraId:I

.field private mContinuousInterval:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mHandGesture:Lcom/android/camera/handgesture/HandGesture;

.field private mTargetDetected:Z

.field private mTipShowInterval:I

.field private mTipVisible:Z

.field private mTriggeringPhoto:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/zxing/Decoder;-><init>()V

    .line 2
    sget v0, Lcom/android/zxing/HandGestureDecoder;->DETECTION_FRAMES_PER_SECOND:I

    iput v0, p0, Lcom/android/zxing/HandGestureDecoder;->mTipShowInterval:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/zxing/HandGestureDecoder;->mTriggeringPhoto:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/zxing/HandGestureDecoder;->mTargetDetected:Z

    .line 5
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/zxing/HandGestureDecoder;->mContinuousInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/zxing/HandGestureDecoder;->mTipVisible:Z

    .line 7
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    iput-object v1, p0, Lcom/android/zxing/Decoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    .line 8
    new-instance v1, Lcom/android/camera/handgesture/HandGesture;

    invoke-direct {v1}, Lcom/android/camera/handgesture/HandGesture;-><init>()V

    iput-object v1, p0, Lcom/android/zxing/HandGestureDecoder;->mHandGesture:Lcom/android/camera/handgesture/HandGesture;

    const/16 v1, 0x1388

    .line 9
    iput v1, p0, Lcom/android/zxing/Decoder;->mDecodeMaxCount:I

    .line 10
    sget v1, Lcom/android/zxing/HandGestureDecoder;->DETECTION_FRAMES_PER_SECOND:I

    const/16 v2, 0x3e8

    div-int/2addr v2, v1

    int-to-long v1, v2

    iput-wide v1, p0, Lcom/android/zxing/Decoder;->mDecodeAutoInterval:J

    .line 11
    iput-boolean v0, p0, Lcom/android/zxing/Decoder;->mEnable:Z

    .line 12
    iget-object v0, p0, Lcom/android/zxing/Decoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    sget-object v1, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 13
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/zxing/a;

    invoke-direct {v1, p0}, Lcom/android/zxing/a;-><init>(Lcom/android/zxing/HandGestureDecoder;)V

    .line 14
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 15
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/zxing/b;

    invoke-direct {v1, p0}, Lcom/android/zxing/b;-><init>(Lcom/android/zxing/HandGestureDecoder;)V

    .line 16
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic a(Lcom/android/zxing/PreviewImage;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "HandGestureDecoder"

    const-string v1, "HandGestureDecoder: decode E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getPreviewStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/zxing/HandGestureDecoder;->mHandGesture:Lcom/android/camera/handgesture/HandGesture;

    invoke-virtual {p0}, Lcom/android/camera/handgesture/HandGesture;->unInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    sget-boolean v0, Lcom/android/zxing/HandGestureDecoder;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 6
    invoke-direct {p0, p1}, Lcom/android/zxing/HandGestureDecoder;->dumpPreviewImage(Lcom/android/zxing/PreviewImage;)V

    .line 7
    :cond_3
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/zxing/HandGestureDecoder;->decode(Lcom/android/zxing/PreviewImage;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 8
    :cond_4
    iget-object p0, p0, Lcom/android/zxing/HandGestureDecoder;->mHandGesture:Lcom/android/camera/handgesture/HandGesture;

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getCameraId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/handgesture/HandGesture;->init(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    :goto_0
    const/4 p0, -0x1

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c(Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected rect left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/zxing/HandGestureDecoder;->mTipShowInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HandGestureDecoder"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ltz p1, :cond_0

    .line 3
    iput-boolean v2, p0, Lcom/android/zxing/HandGestureDecoder;->mTargetDetected:Z

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v0, p0, Lcom/android/zxing/HandGestureDecoder;->mTargetDetected:Z

    .line 5
    iget-object p1, p0, Lcom/android/zxing/HandGestureDecoder;->mContinuousInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6
    :goto_0
    iget-boolean p1, p0, Lcom/android/zxing/HandGestureDecoder;->mTriggeringPhoto:Z

    if-eqz p1, :cond_1

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous interval: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/zxing/HandGestureDecoder;->mContinuousInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/android/zxing/HandGestureDecoder;->mContinuousInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/android/zxing/HandGestureDecoder;->mContinuousInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto :goto_1

    .line 10
    :cond_2
    iget-boolean p1, p0, Lcom/android/zxing/HandGestureDecoder;->mTargetDetected:Z

    if-eqz p1, :cond_3

    const-string p1, "Triggering countdown..."

    .line 11
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xa1

    .line 13
    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p1, :cond_3

    .line 14
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x64

    .line 15
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    .line 16
    iput-boolean v2, p0, Lcom/android/zxing/HandGestureDecoder;->mTriggeringPhoto:Z

    .line 17
    iget-object p1, p0, Lcom/android/zxing/HandGestureDecoder;->mContinuousInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v1, Lcom/android/zxing/HandGestureDecoder;->DETECTION_FRAMES_PER_SECOND:I

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/zxing/HandGestureDecoder;->mTriggeringPhoto:Z

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->setHandGestureRunning(Z)V

    .line 19
    iput-boolean v0, p0, Lcom/android/zxing/HandGestureDecoder;->mTipVisible:Z

    .line 20
    sget p1, Lcom/android/zxing/HandGestureDecoder;->DETECTION_FRAMES_PER_SECOND:I

    iput p1, p0, Lcom/android/zxing/HandGestureDecoder;->mTipShowInterval:I

    .line 21
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/zxing/HandGestureDecoder;->mTipVisible:Z

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/zxing/HandGestureDecoder;->mTipShowInterval:I

    if-gtz p1, :cond_5

    .line 22
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->setHandGestureRunning(Z)V

    .line 23
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    .line 24
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_4

    .line 25
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 26
    invoke-interface {p1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->reInitAlert(Z)V

    .line 27
    :cond_4
    iput-boolean v2, p0, Lcom/android/zxing/HandGestureDecoder;->mTipVisible:Z

    .line 28
    :cond_5
    iget p1, p0, Lcom/android/zxing/HandGestureDecoder;->mTipShowInterval:I

    if-lez p1, :cond_6

    sub-int/2addr p1, v2

    .line 29
    iput p1, p0, Lcom/android/zxing/HandGestureDecoder;->mTipShowInterval:I

    :cond_6
    return-void
.end method

.method private dumpPreviewImage(Lcom/android/zxing/PreviewImage;)V
    .locals 13

    const-string p0, "Close stream failed!"

    const-string v0, "HandGestureDecoder"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getTimestamp()J

    move-result-wide v2

    .line 2
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v10

    .line 3
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v11

    .line 4
    new-instance v12, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/DCIM/Camera/hand_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PreviewImage timestamp: ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v1, Landroid/graphics/YuvImage;

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v5

    const/16 v6, 0x11

    const/4 v9, 0x0

    move-object v4, v1

    move v7, v10

    move v8, v11

    invoke-direct/range {v4 .. v9}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 8
    new-instance p1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x64

    invoke-virtual {v1, p1, v2, v12}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v12

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v12

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_0
    :try_start_3
    const-string v2, "Dump preview Image failed!"

    .line 10
    invoke-static {v0, v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 11
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 12
    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v1, :cond_1

    .line 13
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 14
    invoke-static {v0, p0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    :cond_1
    :goto_3
    throw p1
.end method


# virtual methods
.method public synthetic b(Lcom/android/zxing/PreviewImage;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/zxing/HandGestureDecoder;->a(Lcom/android/zxing/PreviewImage;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public synthetic d(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/zxing/HandGestureDecoder;->c(Ljava/lang/Integer;)V

    return-void
.end method

.method protected decode(Lcom/android/zxing/PreviewImage;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    :cond_0
    iget v1, p0, Lcom/android/zxing/HandGestureDecoder;->mCameraId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDisplayMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    rsub-int v0, v0, 0x10e

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDisplayMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    rsub-int/lit8 v0, v0, 0x5a

    add-int/lit16 v0, v0, 0x168

    .line 5
    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x5a

    .line 6
    rem-int/lit16 v0, v0, 0x168

    .line 7
    :goto_0
    iget-object p0, p0, Lcom/android/zxing/HandGestureDecoder;->mHandGesture:Lcom/android/camera/handgesture/HandGesture;

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result p1

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/camera/handgesture/HandGesture;->detectGesture([BIII)I

    move-result p0

    return p0
.end method

.method public init(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/zxing/HandGestureDecoder;->reset()V

    .line 2
    iput p1, p0, Lcom/android/zxing/HandGestureDecoder;->mCameraId:I

    .line 3
    iget-object p0, p0, Lcom/android/zxing/Decoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    new-instance v0, Lcom/android/zxing/PreviewImage;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/zxing/PreviewImage;-><init>(II)V

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->setHandGestureRunning(Z)V

    return-void
.end method

.method public needPreviewFrame()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/zxing/Decoder;->needPreviewFrame()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPreviewFrame(Lcom/android/zxing/PreviewImage;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/zxing/Decoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/zxing/Decoder;->quit()V

    .line 2
    iget-object v0, p0, Lcom/android/zxing/Decoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    new-instance v1, Lcom/android/zxing/PreviewImage;

    iget v2, p0, Lcom/android/zxing/HandGestureDecoder;->mCameraId:I

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/android/zxing/PreviewImage;-><init>(II)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object p0, p0, Lcom/android/zxing/Decoder;->mSubjects:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "HandGestureDecoder"

    const-string v1, "Reset"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/zxing/Decoder;->mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    iput-boolean v1, p0, Lcom/android/zxing/HandGestureDecoder;->mTriggeringPhoto:Z

    return-void
.end method

.method public startDecode()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    .line 2
    iget-object p0, p0, Lcom/android/zxing/Decoder;->mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
