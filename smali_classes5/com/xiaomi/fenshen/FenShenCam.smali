.class public Lcom/xiaomi/fenshen/FenShenCam;
.super Ljava/lang/Object;
.source "FenShenCam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/fenshen/FenShenCam$Listener;,
        Lcom/xiaomi/fenshen/FenShenCam$Message;,
        Lcom/xiaomi/fenshen/FenShenCam$Mode;
    }
.end annotation


# static fields
.field public static DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FenShen"

.field private static listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "fenshen"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load native library failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FenShen"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPhoto(Landroid/media/Image;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPhoto "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FenShen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    .line 3
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .line 6
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 7
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    .line 8
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 9
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    .line 10
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v11

    invoke-static/range {v2 .. v11}, Lcom/xiaomi/fenshen/FenShenCam;->nativeAddPhoto(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 11
    sget-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz p0, :cond_0

    .line 12
    invoke-interface {p0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "illegal image format, expect YUV image"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addPreviewFrame(Landroid/media/Image;)V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPreviewFrame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FenShen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    .line 4
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .line 7
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 8
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    .line 9
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 10
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    .line 11
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v11

    invoke-static/range {v2 .. v11}, Lcom/xiaomi/fenshen/FenShenCam;->nativeAddPreviewFrame(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 12
    sget-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz p0, :cond_1

    .line 13
    invoke-interface {p0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_1
    return-void

    .line 14
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "illegal image format, expect YUV image"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cancelPhoto()V
    .locals 2

    const-string v0, "FenShen"

    const-string v1, "cancelPhoto"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeCancelPhoto()V

    return-void
.end method

.method public static cancelVideo()V
    .locals 2

    const-string v0, "FenShen"

    const-string v1, "cancelVideo"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeCancelVideo()V

    return-void
.end method

.method private static extractRawTo(Landroid/app/Activity;Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractRawTo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FenShen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "xseg2_dlc"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 p1, 0x2800

    :try_start_2
    new-array p1, p1, [B

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 7
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p0, :cond_2

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_3

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "extract raw file failed"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static finishPhoto()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeFinishPhoto()V

    return-void
.end method

.method public static getCurrentSubjectCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeGetCurrentSubjectCount()I

    move-result v0

    return v0
.end method

.method public static init(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init previewWidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", previewHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FenShen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/fenshen/FenShenCam;->nativeInit(IILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initResources(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "FenShen"

    const-string v1, "initResources E"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 4
    new-instance v2, Ljava/io/File;

    const-string v3, "xseg2.dlc"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/xiaomi/fenshen/FenShenCam;->extractRawTo(Landroid/app/Activity;Ljava/io/File;)V

    const-string p0, "initResources X"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native nativeAddPhoto(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
.end method

.method private static native nativeAddPreviewFrame(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
.end method

.method private static native nativeCancelPhoto()V
.end method

.method private static native nativeCancelVideo()V
.end method

.method private static native nativeFinishPhoto()V
.end method

.method private static native nativeGetCurrentSubjectCount()I
.end method

.method private static native nativeGetResultJpeg()[B
.end method

.method private static native nativeInit(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativePullCmd()Ljava/lang/String;
.end method

.method private static native nativeRelease()V
.end method

.method private static native nativeRender()I
.end method

.method private static native nativeRenderInit(IIIIII)I
.end method

.method private static native nativeSaveVideo(Ljava/lang/String;)V
.end method

.method private static native nativeSetMode(I)V
.end method

.method private static native nativeStart()V
.end method

.method private static native nativeStartRecordVideo()V
.end method

.method private static native nativeStopRecordVideo()V
.end method

.method public static release()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeRelease()V

    return-void
.end method

.method public static render()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeRender()I

    .line 2
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeGetCurrentSubjectCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onSubjectCount(I)V

    .line 4
    :cond_0
    :goto_0
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativePullCmd()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "render cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FenShen"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_2
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "request_render"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    goto :goto_0

    :cond_4
    const-string v1, "start_preview"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onStartPreview()V

    goto :goto_0

    :cond_5
    const-string v1, "stop_preview"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onStopPreview()V

    goto :goto_0

    :cond_6
    const-string v1, "stop_record"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onStopRecord()V

    goto :goto_0

    :cond_7
    const-string v1, "jpg_available"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 17
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeGetResultJpeg()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onPhotoResult([B)V

    goto :goto_0

    :cond_8
    const-string v1, "video_saved "

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0xc

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 20
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v1, v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onVideoSaved(I)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "msg_start"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 22
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Message;->START:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v0, v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "align_ok"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 24
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_OK:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v0, v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "align_warning"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 26
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_WARNING:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v0, v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "align_fail"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 28
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_TOO_LARGE_OR_FAILED:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v0, v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_d
    const-string v1, "preview_no_person"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 30
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v0, v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_e
    const-string v1, "no_person"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 32
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Message;->NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v0, v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_f
    const-string v1, "move_outside"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 34
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Message;->MOVE_OUTSIDE:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v0, v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_10
    const-string v1, "dynamic_scene"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Message;->DYNAMIC_SCENE:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v0, v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0
.end method

.method public static renderInit(IIIIII)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renderInit screenW "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drawX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drawY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drawW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drawH = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FenShen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static/range {p0 .. p5}, Lcom/xiaomi/fenshen/FenShenCam;->nativeRenderInit(IIIIII)I

    return-void
.end method

.method public static saveVideo(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSaveVideo(Ljava/lang/String;)V

    return-void
.end method

.method public static setListener(Lcom/xiaomi/fenshen/FenShenCam$Listener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FenShen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sput-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    return-void
.end method

.method public static setMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FenShen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSetMode(I)V

    return-void
.end method

.method public static start()V
    .locals 2

    const-string v0, "FenShen"

    const-string v1, "start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStart()V

    return-void
.end method

.method public static startRecordVideo()V
    .locals 2

    const-string v0, "FenShen"

    const-string v1, "startRecordVideo"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStartRecordVideo()V

    return-void
.end method

.method public static stopRecordVideo()V
    .locals 2

    const-string v0, "FenShen"

    const-string v1, "stopRecordVideo"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStopRecordVideo()V

    return-void
.end method
