.class public Lcom/android/camera/snap/SnapCamera;
.super Ljava/lang/Object;
.source "SnapCamera.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/snap/SnapCamera$SnapStatusListener;
    }
.end annotation


# static fields
.field private static final MSG_FOCUS_TIMEOUT:I = 0x1

.field private static final SUFFIX:Ljava/lang/String; = "_SNAP"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraId:I

.field private mCameraSound:Lcom/android/camera/MiuiCameraSound;

.field private mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mContentValues:Landroid/content/ContentValues;

.field private mContext:Landroid/content/Context;

.field private volatile mFocused:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeight:I

.field private mIsCamcorder:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private final mPhotoAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPhotoImageReader:Landroid/media/ImageReader;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecording:Z

.field private mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/snap/SnapCamera$SnapStatusListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/snap/SnapCamera;->mIsCamcorder:Z

    .line 3
    iput v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientation:I

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/snap/SnapCamera;->mFocused:Z

    .line 6
    new-instance v0, Lcom/android/camera/snap/SnapCamera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/snap/SnapCamera$1;-><init>(Lcom/android/camera/snap/SnapCamera;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 7
    new-instance v0, Lcom/android/camera/snap/SnapCamera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/snap/SnapCamera$2;-><init>(Lcom/android/camera/snap/SnapCamera;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mContentValues:Landroid/content/ContentValues;

    .line 9
    new-instance v0, Lcom/android/camera/snap/SnapCamera$6;

    invoke-direct {v0, p0}, Lcom/android/camera/snap/SnapCamera$6;-><init>(Lcom/android/camera/snap/SnapCamera;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mPhotoAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 10
    new-instance v0, Lcom/android/camera/snap/SnapCamera$7;

    invoke-direct {v0, p0}, Lcom/android/camera/snap/SnapCamera$7;-><init>(Lcom/android/camera/snap/SnapCamera;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 11
    :try_start_0
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 12
    iput-object p2, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    .line 13
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->initSound()V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->initHandler()V

    .line 16
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->initSnapType()V

    .line 17
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->initOrientationListener()V

    .line 18
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->initCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 19
    sget-object p1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init failed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/snap/SnapCamera;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/camera/snap/SnapCamera;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/snap/SnapCamera;)Landroid/media/MediaRecorder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/camera/snap/SnapCamera;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->stopCamcorder()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/snap/SnapCamera;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/camera/snap/SnapCamera;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/snap/SnapCamera;->onPictureTaken([B)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/snap/SnapCamera;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/camera/snap/SnapCamera;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/snap/SnapCamera;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->startPreview()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/snap/SnapCamera;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->capture()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/snap/SnapCamera$SnapStatusListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/snap/SnapCamera;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/snap/SnapCamera;->mFocused:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/camera/snap/SnapCamera;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/snap/SnapCamera;->mFocused:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/snap/SnapCamera;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientation:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/camera/snap/SnapCamera;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/snap/SnapCamera;->mOrientation:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/snap/SnapCamera;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/snap/SnapCamera;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/camera/snap/SnapCamera;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    return p1
.end method

.method private applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x4

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4
    invoke-virtual {p1, p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 5
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized capture()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/snap/SnapCamera;->mFocused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 5
    iget v1, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    iget v2, p0, Lcom/android/camera/snap/SnapCamera;->mOrientation:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v1

    .line 6
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7
    sget-object v2, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture, orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 10
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 11
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    :try_start_2
    sget-object v1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    invoke-interface {v0}, Lcom/android/camera/snap/SnapCamera$SnapStatusListener;->onSkipCapture()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/camera/core/PictureInfo;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/PictureInfo;-><init>()V

    .line 2
    iget p0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/core/PictureInfo;->setSensorType(Z)Lcom/xiaomi/camera/core/PictureInfo;

    return-object v0
.end method

.method private initCamera()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    .line 2
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "persist.camera.snap.auto_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->readPreferredCameraId()I

    move-result v1

    iput v1, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 5
    :try_start_0
    iget v2, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/android/camera2/CameraCapabilities;

    iget v3, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    invoke-direct {v2, v1, v3}, Lcom/android/camera2/CameraCapabilities;-><init>(Landroid/hardware/camera2/CameraCharacteristics;I)V

    iput-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    const/16 v1, 0xa2

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality(II)I

    move-result v0

    .line 11
    iget v1, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget v1, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_0

    .line 13
    :cond_1
    sget-object v1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid camcorder profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/16 v2, 0x100

    .line 16
    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(I)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xa3

    .line 17
    iget v3, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    invoke-static {v1, v0, v2, v3}, Lcom/android/camera/PictureSizeManager;->initialize(Ljava/util/List;III)V

    .line 18
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const-class v3, Landroid/graphics/SurfaceTexture;

    .line 20
    invoke-virtual {v2, v3}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 21
    iget v3, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    iget v4, v1, Lcom/android/camera/CameraSize;->width:I

    iget v5, v1, Lcom/android/camera/CameraSize;->height:I

    .line 22
    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v4

    float-to-double v4, v4

    .line 23
    invoke-static {v0, v3, v2, v4, v5}, Lcom/android/camera/Util;->getOptimalPreviewSize(ZILjava/util/List;D)Lcom/android/camera/CameraSize;

    move-result-object v2

    .line 24
    new-instance v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, v0}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 25
    iget v0, v2, Lcom/android/camera/CameraSize;->width:I

    iget v2, v2, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v3, v0, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 26
    new-instance v0, Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mPreviewSurface:Landroid/view/Surface;

    .line 27
    invoke-direct {p0, v1}, Lcom/android/camera/snap/SnapCamera;->preparePhotoImageReader(Lcom/android/camera/CameraSize;)V

    .line 28
    iget v0, v1, Lcom/android/camera/CameraSize;->width:I

    iput v0, p0, Lcom/android/camera/snap/SnapCamera;->mWidth:I

    .line 29
    iget v0, v1, Lcom/android/camera/CameraSize;->height:I

    iput v0, p0, Lcom/android/camera/snap/SnapCamera;->mHeight:I

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 30
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private initHandler()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SnapCameraThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMainHandler:Landroid/os/Handler;

    .line 4
    new-instance v0, Lcom/android/camera/snap/SnapCamera$3;

    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/snap/SnapCamera$3;-><init>(Lcom/android/camera/snap/SnapCamera;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraHandler:Landroid/os/Handler;

    return-void
.end method

.method private initOrientationListener()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/snap/SnapCamera$4;

    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/mi/config/b;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/snap/SnapCamera$4;-><init>(Lcom/android/camera/snap/SnapCamera;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 3
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v1, "Can detect orientation"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_1

    .line 6
    :cond_1
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v1, "Cannot detect orientation"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :goto_1
    return-void
.end method

.method private initSnapType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/snap/SnapCamera;->mIsCamcorder:Z

    return-void
.end method

.method private initSound()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/MiuiCameraSound;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/MiuiCameraSound;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/camera/MiuiCameraSound;->load(I)V

    return-void
.end method

.method public static isSnapEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_snap_key"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_long_press_volume_down"

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getMiuiSettingsKeyForStreetSnap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v3, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Street-snap-picture"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Street-snap-movie"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private onPictureTaken([B)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_SNAP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientation([B)I

    move-result v8

    .line 4
    iget-object v3, v0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget v10, v0, Lcom/android/camera/snap/SnapCamera;->mWidth:I

    iget v11, v0, Lcom/android/camera/snap/SnapCamera;->mHeight:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/snap/SnapCamera;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v16

    move-object/from16 v9, p1

    .line 7
    invoke-static/range {v3 .. v16}, Lcom/android/camera/storage/Storage;->addImageForSnapCamera(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)Landroid/net/Uri;

    move-result-object v1

    .line 8
    iget-object v2, v0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    if-eqz v2, :cond_0

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/snap/SnapCamera;->playSound()V

    .line 10
    iget-object v0, v0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    invoke-interface {v0, v1}, Lcom/android/camera/snap/SnapCamera$SnapStatusListener;->onDone(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    sget-object v1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save picture failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private playSound()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/MiuiCameraSound;->playSound(I)V

    :cond_0
    return-void
.end method

.method private preparePhotoImageReader(Lcom/android/camera/CameraSize;)V
    .locals 3
    .param p1    # Lcom/android/camera/CameraSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mPhotoImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    const/16 v1, 0x100

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera;->mPhotoImageReader:Landroid/media/ImageReader;

    .line 4
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mPhotoAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private setRecorderOrientationHint()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getSensorOrientation()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/android/camera/snap/SnapCamera;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget v1, p0, Lcom/android/camera/snap/SnapCamera;->mOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    .line 5
    :cond_0
    iget v1, p0, Lcom/android/camera/snap/SnapCamera;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 6
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOrientationHint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    return-void
.end method

.method private setupMediaRecorder()V
    .locals 8

    .line 1
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x5

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    const v1, 0x493e0

    iput v1, v0, Landroid/media/CamcorderProfile;->duration:I

    .line 5
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->duration:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 7
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 9
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 10
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    const v4, 0x7f1004db

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 11
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_SNAP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 13
    invoke-static {v3}, Lcom/android/camera/Util;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v3}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 16
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mContentValues:Landroid/content/ContentValues;

    const-string v6, "title"

    .line 17
    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mContentValues:Landroid/content/ContentValues;

    const-string v5, "_display_name"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mContentValues:Landroid/content/ContentValues;

    const-string v2, "mime_type"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mContentValues:Landroid/content/ContentValues;

    const-string v2, "_data"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mContentValues:Landroid/content/ContentValues;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resolution"

    .line 24
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 25
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 26
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v2, "longitude"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 27
    :cond_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-result-wide v0

    const-wide/32 v2, 0xc800000

    sub-long/2addr v0, v2

    const-wide v2, 0xdac00000L

    cmp-long v5, v2, v0

    if-gez v5, :cond_2

    .line 28
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/config/a;->O0()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 29
    sget-object v5, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "need reduce , now maxFileSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v2

    .line 30
    :cond_2
    sget-wide v2, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    cmp-long v5, v0, v2

    if-gez v5, :cond_3

    move-wide v0, v2

    .line 31
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->setRecorderOrientationHint()V

    .line 33
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    const/4 v0, 0x0

    .line 35
    :try_start_1
    sget-object v1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 37
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    .line 38
    invoke-static {v4, v1}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 40
    :goto_0
    iget-object p0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 41
    :try_start_2
    sget-object v1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :goto_1
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :goto_2
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 43
    throw p0
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const/16 v0, -0x10

    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method private declared-synchronized startPreview()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v1, "startPreview: CameraDevice was already closed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v1, "startPreview: null capture session"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_2
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 9
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    :try_start_3
    sget-object v1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopBackgroundThread()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 4
    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private declared-synchronized stopCamcorder()V
    .locals 14

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_3
    iput-boolean v1, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    .line 6
    sget-object v2, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v3, "mMediaRecorder stop failed"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 10
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->stopBackgroundThread()V

    .line 11
    iget-boolean v2, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    if-eqz v2, :cond_8

    .line 12
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mContentValues:Landroid/content/ContentValues;

    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 13
    :try_start_4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_7

    .line 14
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v7

    if-nez v7, :cond_3

    .line 15
    invoke-static {v2}, Lcom/android/camera/Util;->getDuration(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-nez v9, :cond_2

    .line 16
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_2
    move-object v9, v0

    goto :goto_1

    .line 17
    :cond_3
    invoke-static {v2, v1}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 18
    :try_start_5
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/Util;->getDuration(Ljava/io/FileDescriptor;)J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-nez v10, :cond_4

    .line 19
    invoke-static {v2}, Lcom/android/camera/FileCompat;->deleteFile(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_4
    move-wide v12, v8

    move-object v9, v7

    move-wide v7, v12

    :goto_1
    cmp-long v5, v7, v5

    if-lez v5, :cond_5

    .line 20
    :try_start_6
    iget-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mContentValues:Landroid/content/ContentValues;

    const-string v6, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 21
    iget-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mContentValues:Landroid/content/ContentValues;

    const-string v6, "_size"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 22
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mContentValues:Landroid/content/ContentValues;

    const-string v4, "duration"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 23
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    .line 24
    invoke-static {v4, v5, v2}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/snap/SnapCamera;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_6

    .line 25
    sget-object v3, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert MediaProvider failed, attempt to find uri by path, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/camera/storage/MediaProviderUtil;->getContentUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v0, v9

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v7, v9

    goto :goto_4

    :cond_5
    :goto_2
    move-object v3, v0

    :cond_6
    move-object v0, v9

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_4

    :cond_7
    move-object v3, v0

    .line 27
    :goto_3
    :try_start_7
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v0, v3

    goto :goto_5

    :catchall_1
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v2

    move-object v7, v0

    .line 28
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    sget-object v3, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write MediaStore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 30
    :try_start_9
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 31
    :goto_5
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    if-eqz v2, :cond_8

    .line 32
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    invoke-interface {v2, v0}, Lcom/android/camera/snap/SnapCamera$SnapStatusListener;->onDone(Landroid/net/Uri;)V

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v0, v7

    .line 33
    :goto_6
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 34
    throw v1

    .line 35
    :cond_8
    :goto_7
    iput-boolean v1, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 36
    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public isCamcorder()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/snap/SnapCamera;->mIsCamcorder:Z

    return p0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->stopCamcorder()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const/16 p1, 0x320

    if-eq p2, p1, :cond_0

    const/16 p1, 0x321

    if-ne p2, p1, :cond_1

    .line 1
    :cond_0
    sget-object p1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string p2, "duration or file size reach MAX"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->stopCamcorder()V

    :cond_1
    return-void
.end method

.method public declared-synchronized release()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v1, "release(): E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_1
    iput v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientation:I

    .line 3
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 6
    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {v0}, Lcom/android/camera/MiuiCameraSound;->release()V

    .line 9
    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCameraSound:Lcom/android/camera/MiuiCameraSound;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    :try_start_2
    sget-object v2, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_1
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->stopCamcorder()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 12
    :try_start_4
    sget-object v2, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13
    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 15
    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 16
    :try_start_6
    sget-object v2, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 23
    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_6

    .line 25
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 26
    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 27
    :cond_6
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v1, "release(): X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startCamcorder()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v1, "startCamcorder: CameraDevice is opening or was already closed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->startBackgroundThread()V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->setupMediaRecorder()V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/Surface;

    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x3

    .line 8
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 9
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v2, Lcom/android/camera/snap/SnapCamera$5;

    invoke-direct {v2, p0}, Lcom/android/camera/snap/SnapCamera$5;-><init>(Lcom/android/camera/snap/SnapCamera;)V

    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    :try_start_3
    sget-object v1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to startCamcorder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized takeSnap()V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v1, "takeSnap: CameraDevice is opening or was already closed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 5
    :try_start_2
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string v1, "createCaptureSession"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 8
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/android/camera/snap/SnapCamera;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 15
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/snap/SnapCamera;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v8, p0, Lcom/android/camera/snap/SnapCamera;->mCameraHandler:Landroid/os/Handler;

    .line 16
    invoke-static/range {v2 .. v8}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/Surface;

    const/4 v2, 0x0

    .line 17
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mPreviewSurface:Landroid/view/Surface;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    :try_start_3
    sget-object v1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takeSnap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 20
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->capture()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
