.class public Lcom/android/camera/effect/renders/BeautificationWrapperRender;
.super Lcom/android/camera/effect/renders/WrapperRender;
.source "BeautificationWrapperRender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BeautificationWrapperRender"


# instance fields
.field private mSimpleRender:Lcom/android/camera/effect/renders/NoneEffectRender;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/miui/filtersdk/filter/base/GPUImageFilter;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/effect/renders/WrapperRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    .line 2
    new-instance p2, Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-direct {p2, p1}, Lcom/android/camera/effect/renders/NoneEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object p2, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mSimpleRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    .line 3
    invoke-virtual {p0, p4}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->adjustSize(Z)V

    return-void
.end method

.method private drawToFrameBuffer(IFFFF)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    if-eqz v0, :cond_0

    const v1, 0x8d40

    .line 2
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v0, 0x0

    .line 3
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mSimpleRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/effect/renders/PixelEffectRender;->drawTexture(IFFFFZ)V

    return-void
.end method

.method private dumpGLParams(Ljava/lang/String;)V
    .locals 12

    const/16 p0, 0xb44

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result p0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0xb45

    const/4 v3, 0x0

    .line 2
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 3
    aget v2, v1, v3

    const/16 v4, 0xb46

    .line 4
    invoke-static {v4, v1, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 5
    aget v4, v1, v3

    const v5, 0x84e0

    .line 6
    invoke-static {v5, v1, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 7
    aget v5, v1, v3

    const v6, 0x8069

    .line 8
    invoke-static {v6, v1, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 9
    aget v6, v1, v3

    const v7, 0x8ca6

    .line 10
    invoke-static {v7, v1, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 11
    aget v1, v1, v3

    const/4 v7, 0x4

    new-array v8, v7, [I

    const/16 v9, 0xba2

    .line 12
    invoke-static {v9, v8, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 13
    sget-object v9, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->TAG:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "cullFace=%b faceMode=0x%x frontFace=0x%x activeTex=0x%x bindTex=%d bindBuf=%d viewport=[%d %d %d %d]"

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v11, 0xa

    new-array v11, v11, [Ljava/lang/Object;

    .line 14
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v11, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v11, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v11, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x3

    aput-object p0, v11, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v11, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v11, v1

    aget p0, v8, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x6

    aput-object p0, v11, v1

    aget p0, v8, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x7

    aput-object p0, v11, v0

    aget p0, v8, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v0, 0x8

    aput-object p0, v11, v0

    aget p0, v8, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v0, 0x9

    aput-object p0, v11, v0

    .line 15
    invoke-static {v10, p1, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public adjustSize(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x5a

    .line 1
    iget-object v1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static {p1, v0, v0, v1, p0}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->adjustSize(IZZLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x10e

    const/4 v1, 0x1

    .line 2
    iget-object v2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->adjustSize(IZZLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    :goto_0
    return-void
.end method

.method protected drawTexture(IFFFF)V
    .locals 8

    .line 5
    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iget-object v1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawToTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v3, p1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    const/16 p1, 0xb44

    .line 6
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 7
    invoke-direct/range {v2 .. v7}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->drawToFrameBuffer(IFFFF)V

    return-void
.end method

.method protected drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFF)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawToTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v0

    :cond_0
    move v2, v0

    const/16 p1, 0xb44

    .line 3
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->drawToFrameBuffer(IFFFF)V

    return-void
.end method

.method public setBuffer([BII)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    instance-of v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->passPreviewFrameToTexture([BII)V

    :cond_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mSimpleRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {p0, p1, p2}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDisplaySizeChanged(II)V

    return-void
.end method

.method public setViewportSize(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/WrapperRender;->setViewportSize(II)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mSimpleRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    return-void
.end method
