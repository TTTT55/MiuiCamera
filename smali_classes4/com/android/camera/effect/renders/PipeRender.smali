.class public Lcom/android/camera/effect/renders/PipeRender;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "PipeRender.java"


# static fields
.field private static final DUMP_TEXTURE:Z = false

.field private static final TAG:Ljava/lang/String; = "PipeRender"


# instance fields
.field private mBufferHeight:I

.field private mBufferWidth:I

.field private mFrameBufferTextures:[I

.field private mFrameBuffers:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method

.method private declared-synchronized destroyFrameBuffers()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyFrameBuffers: count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    array-length v2, v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    move v0, v3

    .line 3
    :goto_1
    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4
    sget-object v1, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "delete fbo thread=%d id=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 6
    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    array-length v0, v0

    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 9
    iput-object v1, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    array-length v0, v0

    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 12
    iput-object v1, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initFrameBuffers(III)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    monitor-enter p0

    if-gtz v0, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "initFrameBuffers: count=%d size=%dx%d"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x2

    aput-object v7, v6, v10

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-array v2, v0, [I

    iput-object v2, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    .line 4
    new-array v2, v0, [I

    iput-object v2, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    move v2, v8

    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    iget-object v3, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    invoke-static {v9, v3, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 6
    iget-object v3, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    invoke-static {v9, v3, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 7
    iget-object v3, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    aget v3, v3, v2

    const/16 v4, 0xde1

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v11, 0xde1

    const/4 v12, 0x0

    const/16 v13, 0x1908

    const/16 v16, 0x0

    const/16 v17, 0x1908

    const/16 v18, 0x1401

    const/16 v19, 0x0

    move/from16 v14, p2

    move/from16 v15, p3

    .line 8
    invoke-static/range {v11 .. v19}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v3, 0x2800

    const v6, 0x46180400    # 9729.0f

    .line 9
    invoke-static {v4, v3, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2801

    .line 10
    invoke-static {v4, v3, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2802

    const v6, 0x47012f00    # 33071.0f

    .line 11
    invoke-static {v4, v3, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2803

    .line 12
    invoke-static {v4, v3, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 13
    iget-object v3, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    aget v3, v3, v2

    const v6, 0x8d40

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v3, 0x8ce0

    .line 14
    iget-object v7, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    aget v7, v7, v2

    invoke-static {v6, v3, v4, v7, v8}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 15
    sget-object v3, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "fbo[%d]: %d %d %d*%d thread=%d"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    iget-object v13, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    aget v13, v13, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    iget-object v13, v1, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    aget v13, v13, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    const/4 v13, 0x4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v7, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 17
    invoke-static {v6, v8}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 18
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 3
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-le p1, v0, :cond_1

    :cond_0
    iget p1, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferWidth:I

    if-lez p1, :cond_1

    iget v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferHeight:I

    if-lez v0, :cond_1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/PipeRender;->reInitFrameBuffers(II)V

    :cond_1
    return-void
.end method

.method public deleteBuffer()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/effect/renders/RenderGroup;->deleteBuffer()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/effect/renders/PipeRender;->destroyFrameBuffers()V

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    if-nez v2, :cond_0

    goto/16 :goto_b

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v2

    const/4 v4, 0x5

    const/16 v5, 0xb

    if-eq v2, v4, :cond_4

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3

    if-eq v2, v5, :cond_1

    .line 3
    sget-object v4, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unsupported target "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    const/16 v16, 0x0

    goto :goto_3

    .line 4
    :cond_1
    move-object v4, v1

    check-cast v4, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    .line 5
    iget v7, v4, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockWidth:I

    if-nez v7, :cond_2

    iget v7, v4, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockHeight:I

    if-nez v7, :cond_2

    .line 6
    iget-object v7, v4, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    .line 7
    iget-object v4, v4, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    goto :goto_1

    .line 8
    :cond_2
    iget v7, v4, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockWidth:I

    .line 9
    iget v4, v4, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockHeight:I

    :goto_1
    move v15, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_0

    .line 10
    :cond_3
    move-object v4, v1

    check-cast v4, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    .line 11
    iget v7, v4, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mX:I

    .line 12
    iget v8, v4, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mY:I

    .line 13
    iget v9, v4, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    .line 14
    iget v10, v4, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    .line 15
    iget v11, v4, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mTexId:I

    .line 16
    iget-boolean v4, v4, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mIsSnapshot:Z

    goto :goto_2

    .line 17
    :cond_4
    move-object v4, v1

    check-cast v4, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 18
    iget v7, v4, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    .line 19
    iget v8, v4, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    .line 20
    iget v9, v4, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    .line 21
    iget v10, v4, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    .line 22
    iget-object v11, v4, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v11}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v11

    .line 23
    iget-boolean v4, v4, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    :goto_2
    move v14, v4

    move v13, v7

    move v12, v8

    move v15, v9

    move v4, v10

    move/from16 v16, v11

    :goto_3
    if-eqz v15, :cond_d

    if-nez v4, :cond_5

    goto/16 :goto_a

    .line 24
    :cond_5
    iget v11, v0, Lcom/android/camera/effect/renders/PipeRender;->mBufferWidth:I

    .line 25
    iget v10, v0, Lcom/android/camera/effect/renders/PipeRender;->mBufferHeight:I

    const/4 v7, 0x0

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenders()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 27
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v8, :cond_c

    .line 28
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Lcom/android/camera/effect/renders/Render;

    add-int/lit8 v5, v8, -0x1

    if-ge v3, v5, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    move/from16 v18, v8

    if-eqz v5, :cond_7

    .line 29
    iget-object v8, v0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    aget v8, v8, v3

    invoke-virtual {v0, v8, v11, v10}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(III)V

    :cond_7
    if-nez v3, :cond_9

    const/16 v8, 0xb

    if-eq v8, v2, :cond_8

    if-eqz v5, :cond_8

    .line 30
    new-instance v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v7

    move/from16 v21, v8

    move/from16 v8, v16

    move-object/from16 v22, v9

    move/from16 v9, v17

    move/from16 v17, v10

    move/from16 v10, v19

    move/from16 v19, v11

    move/from16 v23, v12

    move/from16 v12, v17

    move/from16 v24, v2

    move v2, v13

    move v13, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(IIIIIZ)V

    .line 31
    invoke-virtual {v6, v7}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    :goto_6
    move/from16 v13, v19

    move/from16 v11, v23

    goto :goto_8

    :cond_8
    move/from16 v24, v2

    move/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v17, v10

    move/from16 v19, v11

    move/from16 v23, v12

    move v2, v13

    .line 32
    invoke-virtual {v6, v1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move/from16 v12, v17

    goto :goto_6

    :cond_9
    move/from16 v24, v2

    move-object/from16 v22, v9

    move/from16 v17, v10

    move/from16 v19, v11

    move/from16 v23, v12

    move v2, v13

    const/16 v21, 0xb

    .line 33
    iget-object v8, v0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBuffers:[I

    add-int/lit8 v9, v3, -0x1

    aget v8, v8, v9

    move/from16 v12, v17

    move/from16 v13, v19

    invoke-virtual {v6, v8, v13, v12}, Lcom/android/camera/effect/renders/Render;->setPreviousFrameBufferInfo(III)V

    if-nez v5, :cond_a

    .line 34
    iput v2, v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mX:I

    move/from16 v11, v23

    .line 35
    iput v11, v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mY:I

    .line 36
    iput v15, v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    .line 37
    iput v4, v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    goto :goto_7

    :cond_a
    move/from16 v11, v23

    .line 38
    :goto_7
    invoke-virtual {v6, v7}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    :goto_8
    if-eqz v5, :cond_b

    .line 39
    new-instance v5, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    iget-object v6, v0, Lcom/android/camera/effect/renders/PipeRender;->mFrameBufferTextures:[I

    aget v8, v6, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v5

    move v6, v11

    move v11, v13

    move/from16 v17, v12

    move/from16 v19, v13

    move v13, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(IIIIIZ)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    goto :goto_9

    :cond_b
    move v6, v11

    move/from16 v17, v12

    move/from16 v19, v13

    :goto_9
    add-int/lit8 v3, v3, 0x1

    move v13, v2

    move v12, v6

    move/from16 v10, v17

    move/from16 v8, v18

    move/from16 v11, v19

    move/from16 v5, v21

    move-object/from16 v9, v22

    move/from16 v2, v24

    goto/16 :goto_4

    :cond_c
    const/4 v0, 0x1

    return v0

    :cond_d
    :goto_a
    const/4 v0, 0x1

    .line 41
    sget-object v1, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "invalid size: %dx%d"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_e
    :goto_b
    const/4 v6, 0x0

    .line 42
    sget-object v0, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    const-string v1, "framebuffer hasn\'t been initialized"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public drawOnExtraFrameBufferOnce(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v1, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported target "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    move v1, v0

    goto :goto_0

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    .line 4
    iget v1, v0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    .line 5
    iget v0, v0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    goto :goto_0

    .line 6
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 7
    iget v1, v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    .line 8
    iget v0, v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    :goto_0
    const/4 v3, 0x1

    if-eqz v1, :cond_5

    if-nez v0, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenders()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 11
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/renders/Render;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    goto :goto_1

    .line 13
    :cond_3
    sget-object p0, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "renders more than 1: %d"

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return v3

    .line 14
    :cond_5
    :goto_2
    sget-object p0, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "invalid size: %dx%d"

    invoke-static {p1, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public reInitFrameBuffers(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/renders/PipeRender;->destroyFrameBuffers()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/effect/renders/PipeRender;->initFrameBuffers(III)V

    return-void
.end method

.method public setFrameBufferSize(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferHeight:I

    if-eq v0, p2, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferWidth:I

    .line 3
    iput p2, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferHeight:I

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/PipeRender;->reInitFrameBuffers(II)V

    :cond_1
    return-void
.end method
