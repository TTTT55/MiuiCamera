.class public Lcom/android/camera2/ArcsoftDepthMap;
.super Ljava/lang/Object;
.source "ArcsoftDepthMap.java"


# static fields
.field private static final BLUR_LEVEL_START_ADDR:I = 0x10

.field private static final DAPTH_MAP_START_ADDR:I = 0x98

.field private static final DATA_LENGTH_4:I = 0x4

.field private static final DATA_LENGTH_START_ADDR:I = 0x94

.field private static final HEADER_LENGTH_START_ADDR:I = 0x4

.field private static final HEADER_START_ADDR:I = 0x0

.field private static final POINT_X_START_ADDR:I = 0x8

.field private static final POINT_Y_START_ADDR:I = 0xc

.field private static final TAG:Ljava/lang/String; = "ArcsoftDepthMap"

.field public static final TAG_DEPTH_MAP_BLUR_LEVEL:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_DEPTH_MAP_FOCUS_POINT:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mDepthMapHeader:[B

.field private mDepthMapOriginalData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, -0x7770

    .line 1
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera2/ArcsoftDepthMap;->TAG_DEPTH_MAP_FOCUS_POINT:I

    const/16 v1, -0x776f

    .line 2
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera2/ArcsoftDepthMap;->TAG_DEPTH_MAP_BLUR_LEVEL:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/android/camera2/ArcsoftDepthMap;->getHeaderTag([B)I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapOriginalData:[B

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/ArcsoftDepthMap;->getDepthMapHeader()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapHeader:[B

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal depth format! 0x80 != "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null depth data!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getBytes([BII)[B
    .locals 2

    if-lez p2, :cond_0

    if-ltz p1, :cond_0

    .line 1
    array-length v0, p0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_0

    .line 2
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WRONG ARGUMENT: from ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", length = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getHeaderTag([B)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1
    invoke-static {p0, v0, v1}, Lcom/android/camera2/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/ArcsoftDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method private static getInteger([B)I
    .locals 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes can not covert to a integer value!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isDepthMapData([B)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/camera2/ArcsoftDepthMap;->getHeaderTag([B)I

    move-result p0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 2
    sget-object v0, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "Illegal depthmap format"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method


# virtual methods
.method public getBlurLevel()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapHeader:[B

    const/16 v0, 0x10

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera2/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/ArcsoftDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method public getDepthMapData()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapOriginalData:[B

    invoke-virtual {p0}, Lcom/android/camera2/ArcsoftDepthMap;->getDepthMapLength()I

    move-result p0

    const/16 v1, 0x98

    invoke-static {v0, v1, p0}, Lcom/android/camera2/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public getDepthMapHeader()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapOriginalData:[B

    const/4 v1, 0x4

    invoke-static {v0, v1, v1}, Lcom/android/camera2/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/ArcsoftDepthMap;->getInteger([B)I

    move-result v0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapOriginalData:[B

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/camera2/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public getDepthMapLength()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapHeader:[B

    const/16 v0, 0x94

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera2/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/ArcsoftDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method public getFocusPoint()Landroid/graphics/Point;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/camera2/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/ArcsoftDepthMap;->getInteger([B)I

    move-result v0

    .line 2
    iget-object p0, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0xc

    invoke-static {p0, v1, v2}, Lcom/android/camera2/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/ArcsoftDepthMap;->getInteger([B)I

    move-result p0

    .line 3
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public writePortraitExif(I[B[B[I[B[I[B[IIZZZLcom/xiaomi/camera/core/PictureInfo;IIJ)[B
    .locals 32
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v0, p9

    move/from16 v7, p14

    move/from16 v8, p15

    move-wide/from16 v9, p16

    const-string v11, "evminusyuv"

    const-string v12, "mainyuv"

    const-string v13, "depthmap"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/ArcsoftDepthMap;->getFocusPoint()Landroid/graphics/Point;

    move-result-object v14

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/ArcsoftDepthMap;->getBlurLevel()I

    move-result v15

    .line 3
    invoke-virtual/range {p13 .. p13}, Lcom/xiaomi/camera/core/PictureInfo;->isFrontCamera()Z

    move-result v16

    const/16 v17, -0x1

    const/16 v4, 0xa

    const/16 v18, 0x5

    if-lez v1, :cond_3

    if-eqz v16, :cond_1

    .line 4
    invoke-virtual/range {p13 .. p13}, Lcom/xiaomi/camera/core/PictureInfo;->isAiEnabled()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual/range {p13 .. p13}, Lcom/xiaomi/camera/core/PictureInfo;->getAiType()I

    move-result v3

    if-ne v3, v4, :cond_0

    const/16 v17, 0x46

    goto :goto_0

    :cond_0
    const/16 v17, 0x28

    :goto_0
    move/from16 v4, v17

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual/range {p13 .. p13}, Lcom/xiaomi/camera/core/PictureInfo;->isAiEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p13 .. p13}, Lcom/xiaomi/camera/core/PictureInfo;->getAiType()I

    move-result v3

    if-ne v3, v4, :cond_2

    const/16 v17, 0x1e

    goto :goto_0

    :cond_2
    :goto_1
    move/from16 v3, v18

    goto :goto_2

    :cond_3
    move/from16 v3, v17

    move v4, v3

    .line 6
    :goto_2
    sget-object v6, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v11

    const-string v11, "writePortraitExif: focusPoint: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object v5, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writePortraitExif: blurLevel: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object v5, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writePortraitExif: shineThreshold: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget-object v5, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writePortraitExif: shineLevel: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object v5, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writePortraitExif: lightingPattern: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    sget-object v5, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writePortraitExif: isCinematicAspectRatio: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p12

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    new-instance v6, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v6}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 14
    invoke-virtual {v6, v2}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 15
    invoke-virtual {v6, v1}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiDepthmapVersion(I)Z

    .line 16
    invoke-virtual {v6, v15}, Lcom/android/gallery3d/exif/ExifInterface;->addDepthMapBlurLevel(I)Z

    .line 17
    invoke-virtual {v6, v0}, Lcom/android/gallery3d/exif/ExifInterface;->addPortraitLighting(I)Z

    if-eqz p11, :cond_5

    if-eqz p10, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 18
    :goto_3
    invoke-virtual {v6, v0}, Lcom/android/gallery3d/exif/ExifInterface;->addFrontMirror(I)Z

    .line 19
    :cond_5
    invoke-virtual {v6, v2, v5}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 20
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v6, v0

    .line 22
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_4
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 23
    :catch_1
    sget-object v5, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    const-string v6, "writePortraitExif(): Failed to write depthmap associated exif metadata"

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object v5, v0

    if-eqz v5, :cond_1b

    .line 24
    array-length v0, v5

    array-length v6, v2

    if-gt v0, v6, :cond_6

    goto/16 :goto_1b

    .line 25
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sdcard/DCIM/Camera/evZeroMainImage"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".yuv"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sdcard/DCIM/Camera/evZeroSubImage"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p9, v5

    const-string v5, "sdcard/DCIM/Camera/evMinusMainImage"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 28
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v11, 0x4

    const-wide/16 v18, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    .line 31
    invoke-static {v6, v1}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v9

    .line 32
    invoke-static {v6, v11}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v10

    .line 33
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v20

    const-wide/16 v22, 0x8

    sub-long v20, v20, v22

    move-object/from16 p16, v6

    .line 34
    invoke-static {v0, v1}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v6

    .line 35
    invoke-static {v0, v11}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v1

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v24

    sub-long v24, v24, v22

    .line 37
    sget-object v11, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "main width = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", main height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sub width ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sub height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    move-object/from16 v22, v0

    move-object/from16 p16, v6

    move-wide/from16 v20, v18

    move-wide/from16 v24, v20

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 38
    :goto_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    .line 40
    invoke-static {v0, v2}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v5

    const/4 v2, 0x4

    .line 41
    invoke-static {v0, v2}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v11

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v26

    const-wide/16 v28, 0x8

    sub-long v26, v26, v28

    goto :goto_7

    :cond_8
    move-wide/from16 v26, v18

    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 43
    :goto_7
    :try_start_5
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e

    move-object/from16 p10, v0

    .line 44
    :try_start_6
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 45
    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    move-object/from16 p11, v0

    const-string v0, "UTF-8"

    move/from16 v23, v11

    .line 46
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d

    const/4 v11, 0x0

    .line 47
    :try_start_7
    invoke-interface {v2, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "version"

    move/from16 v28, v5

    .line 48
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v11, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    :try_start_8
    const-string v0, "focuspoint"

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v14, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v14, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d

    const/4 v11, 0x0

    :try_start_9
    invoke-interface {v2, v11, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "blurlevel"

    .line 50
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v11, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "shinethreshold"

    .line 51
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v11, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "shinelevel"

    .line 52
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v11, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "rawlength"

    .line 53
    invoke-static/range {p14 .. p14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v11, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "depthlength"

    .line 54
    invoke-static/range {p15 .. p15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v11, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "mimovie"

    .line 55
    invoke-static/range {p12 .. p12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v11, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    invoke-interface {v2, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    add-long v3, v20, v24

    add-long v3, v3, v26

    cmp-long v0, v3, v18

    const-string v5, "height"

    const-string v13, "width"

    const-string v14, "length"

    const-string v15, "offset"

    if-eqz v0, :cond_9

    .line 57
    :try_start_a
    invoke-interface {v2, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    add-int v0, v7, v8

    move-object/from16 v29, v12

    int-to-long v11, v0

    add-long v30, v11, v3

    .line 58
    :try_start_b
    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    move-wide/from16 v30, v3

    const/4 v3, 0x0

    .line 59
    :try_start_c
    invoke-interface {v2, v3, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v14, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v13, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v4, v29

    .line 63
    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "subyuv"

    .line 64
    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-long v11, v11, v24

    add-long v11, v11, v26

    .line 65
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-interface {v2, v3, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v14, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v13, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "subyuv"

    .line 70
    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    :cond_9
    move-wide/from16 v30, v3

    :goto_8
    cmp-long v0, v26, v18

    if-eqz v0, :cond_a

    move-object/from16 v1, v16

    const/4 v3, 0x0

    .line 71
    invoke-interface {v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int v0, v7, v8

    int-to-long v9, v0

    add-long v9, v9, v26

    .line 72
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-interface {v2, v3, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v14, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v13, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    invoke-interface {v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_a

    :catch_2
    move-object/from16 v12, p5

    move-object/from16 v9, p8

    move-object v11, v3

    :goto_9
    move-object/from16 v3, p3

    goto/16 :goto_14

    :cond_a
    :goto_a
    const-string v1, "paddingy"

    const-string v4, "paddingx"

    move-object/from16 v6, p7

    if-eqz v6, :cond_e

    .line 78
    :try_start_d
    array-length v9, v6
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    if-lez v9, :cond_e

    move-object/from16 v9, p8

    if-eqz v9, :cond_d

    :try_start_e
    array-length v10, v9

    const/4 v11, 0x4

    if-lt v10, v11, :cond_d

    const-string v10, "subimage"
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    const/4 v11, 0x0

    .line 79
    :try_start_f
    invoke-interface {v2, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 80
    :try_start_10
    array-length v10, v6
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    move-object/from16 v11, p3

    if-eqz v11, :cond_b

    .line 81
    :try_start_11
    array-length v12, v11
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    goto :goto_b

    :catch_3
    move-object/from16 v12, p5

    :catch_4
    move-object v3, v11

    goto/16 :goto_13

    :cond_b
    const/4 v12, 0x0

    :goto_b
    add-int/2addr v10, v12

    move-object/from16 v12, p5

    if-eqz v12, :cond_c

    .line 82
    :try_start_12
    array-length v0, v12
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4

    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    :goto_c
    add-int/2addr v10, v0

    move-object v0, v4

    int-to-long v3, v10

    add-long v3, v3, v30

    int-to-long v10, v7

    add-long/2addr v3, v10

    int-to-long v10, v8

    add-long/2addr v3, v10

    .line 83
    :try_start_13
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    const/4 v4, 0x0

    .line 84
    :try_start_14
    invoke-interface {v2, v4, v15, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    array-length v3, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v14, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    .line 86
    aget v10, v9, v3

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x1

    .line 87
    aget v10, v9, v3

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x2

    .line 88
    aget v10, v9, v3

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v13, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x3

    .line 89
    aget v10, v9, v3

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "subimage"

    .line 90
    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5

    goto :goto_f

    :catch_5
    move-object/from16 v3, p3

    move-object v11, v4

    goto/16 :goto_14

    :catch_6
    move-object/from16 v12, p5

    goto/16 :goto_9

    :catch_7
    move-object/from16 v12, p5

    goto :goto_d

    :cond_d
    move-object/from16 v12, p5

    goto :goto_e

    :catch_8
    move-object/from16 v12, p5

    move-object/from16 v9, p8

    :catch_9
    :goto_d
    move-object/from16 v3, p3

    goto/16 :goto_13

    :cond_e
    move-object/from16 v12, p5

    move-object/from16 v9, p8

    :goto_e
    move-object v0, v4

    :goto_f
    move-object/from16 v3, p3

    if-eqz v3, :cond_10

    .line 91
    :try_start_15
    array-length v4, v3

    if-lez v4, :cond_10

    const-string v4, "lenswatermark"
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f

    const/4 v10, 0x0

    .line 92
    :try_start_16
    invoke-interface {v2, v10, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    .line 93
    :try_start_17
    array-length v4, v3

    if-eqz v12, :cond_f

    .line 94
    array-length v10, v12

    goto :goto_10

    :cond_f
    const/4 v10, 0x0

    :goto_10
    add-int/2addr v4, v10

    int-to-long v10, v4

    add-long v10, v10, v30

    move-object/from16 v16, v0

    move-object v4, v1

    int-to-long v0, v7

    add-long/2addr v10, v0

    int-to-long v0, v8

    add-long/2addr v10, v0

    .line 95
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    const/4 v1, 0x0

    .line 96
    :try_start_18
    invoke-interface {v2, v1, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    array-length v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v14, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    .line 98
    aget v0, p4, v10

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v13, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x1

    .line 99
    aget v0, p4, v10

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x2

    .line 100
    aget v10, p4, v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v10, v16

    invoke-interface {v2, v1, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x3

    .line 101
    aget v11, p4, v0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "lenswatermark"

    .line 102
    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_b

    goto :goto_11

    :catch_a
    move-object v11, v10

    goto/16 :goto_14

    :cond_10
    move-object v10, v0

    move-object v4, v1

    :goto_11
    if-eqz v12, :cond_11

    .line 103
    :try_start_19
    array-length v0, v12

    if-lez v0, :cond_11

    const-string v0, "timewatermark"
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_f

    const/4 v1, 0x0

    .line 104
    :try_start_1a
    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b

    .line 105
    :try_start_1b
    array-length v0, v12

    int-to-long v0, v0

    add-long v0, v0, v30

    int-to-long v6, v7

    add-long/2addr v0, v6

    int-to-long v6, v8

    add-long/2addr v0, v6

    .line 106
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_f

    const/4 v11, 0x0

    .line 107
    :try_start_1c
    invoke-interface {v2, v11, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    array-length v0, v12

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v11, v14, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    .line 109
    aget v0, p6, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v11, v13, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x1

    .line 110
    aget v0, p6, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v11, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x2

    .line 111
    aget v0, p6, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v11, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x3

    .line 112
    aget v0, p6, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v11, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "timewatermark"

    .line 113
    invoke-interface {v2, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_12

    :catch_b
    move-object v11, v1

    goto :goto_14

    :cond_11
    const/4 v11, 0x0

    .line 114
    :goto_12
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 115
    invoke-virtual/range {p11 .. p11}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_10

    goto :goto_15

    :catch_c
    move-object/from16 v3, p3

    move-object/from16 v12, p5

    move-object/from16 v9, p8

    goto :goto_14

    :catch_d
    move-object/from16 v3, p3

    move-object/from16 v12, p5

    move-object/from16 v9, p8

    goto :goto_13

    :catch_e
    move-object/from16 v3, p3

    move-object/from16 v12, p5

    move-object/from16 v9, p8

    move-object/from16 p10, v0

    :catch_f
    :goto_13
    const/4 v11, 0x0

    .line 116
    :catch_10
    :goto_14
    sget-object v0, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): Failed to generate depthmap associated xmp metadata"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    :goto_15
    if-nez v0, :cond_12

    .line 117
    sget-object v0, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): #2: return original jpeg"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 118
    :cond_12
    :try_start_1d
    new-instance v1, Ljava/io/ByteArrayInputStream;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_11
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1d .. :try_end_1d} :catch_11

    move-object/from16 v2, p9

    :try_start_1e
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_12
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1e .. :try_end_1e} :catch_12

    .line 119
    :try_start_1f
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    .line 120
    :try_start_20
    invoke-static {}, Lcom/android/camera/XmpHelper;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v5

    const-string v6, "http://ns.xiaomi.com/photos/1.0/camera/"

    const-string v7, "XMPMeta"

    .line 121
    invoke-interface {v5, v6, v7, v0}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    invoke-static {v1, v4, v5}, Lcom/android/camera/XmpHelper;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z

    move-object/from16 v5, p7

    if-eqz v5, :cond_13

    .line 123
    array-length v0, v5

    if-lez v0, :cond_13

    if-eqz v9, :cond_13

    array-length v0, v9

    const/4 v6, 0x4

    if-lt v0, v6, :cond_13

    .line 124
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_13
    if-eqz v3, :cond_14

    .line 125
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_14
    if-eqz v12, :cond_15

    .line 126
    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_15
    cmp-long v0, v20, v18

    const/16 v3, 0x8

    if-eqz v0, :cond_16

    move-object/from16 v0, p16

    .line 127
    invoke-static {v0, v4, v3}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_16
    cmp-long v0, v24, v18

    if-eqz v0, :cond_17

    move-object/from16 v0, v22

    .line 129
    invoke-static {v0, v4, v3}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_17
    cmp-long v0, v26, v18

    if-eqz v0, :cond_18

    move-object/from16 v0, p10

    .line 131
    invoke-static {v0, v4, v3}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 133
    :cond_18
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 134
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 135
    :try_start_21
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    :try_start_22
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_13
    .catch Lcom/adobe/xmp/XMPException; {:try_start_22 .. :try_end_22} :catch_13

    goto :goto_19

    :catchall_2
    move-exception v0

    move-object v3, v0

    goto :goto_17

    :catchall_3
    move-exception v0

    move-object v3, v0

    .line 136
    :try_start_23
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    goto :goto_16

    :catchall_4
    move-exception v0

    move-object v4, v0

    :try_start_24
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw v3
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    move-object v5, v11

    :goto_17
    :try_start_25
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    goto :goto_18

    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_26
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw v3
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_13
    .catch Lcom/adobe/xmp/XMPException; {:try_start_26 .. :try_end_26} :catch_13

    :catch_11
    move-object/from16 v2, p9

    :catch_12
    move-object v5, v11

    .line 137
    :catch_13
    sget-object v0, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): Failed to insert depthmap associated xmp metadata"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    if-eqz v5, :cond_1a

    .line 138
    array-length v0, v5

    array-length v1, v2

    if-gt v0, v1, :cond_19

    goto :goto_1a

    :cond_19
    return-object v5

    .line 139
    :cond_1a
    :goto_1a
    sget-object v0, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): #3: return original jpeg"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 140
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): #1: return original jpeg"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method
