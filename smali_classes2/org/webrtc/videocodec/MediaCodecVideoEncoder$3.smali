.class Lorg/webrtc/videocodec/MediaCodecVideoEncoder$3;
.super Ljava/lang/Thread;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->startEncodeLooperThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/videocodec/MediaCodecVideoEncoder;


# direct methods
.method constructor <init>(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$3;->this$0:Lorg/webrtc/videocodec/MediaCodecVideoEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$3;->this$0:Lorg/webrtc/videocodec/MediaCodecVideoEncoder;

    new-instance v1, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;

    iget-object v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$3;->this$0:Lorg/webrtc/videocodec/MediaCodecVideoEncoder;

    invoke-direct {v1, v2}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;-><init>(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;)V

    invoke-static {v0, v1}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->access$402(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;)Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;

    .line 3
    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startEncodeLooperThread Encoder-HW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$3;->this$0:Lorg/webrtc/videocodec/MediaCodecVideoEncoder;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$3;->this$0:Lorg/webrtc/videocodec/MediaCodecVideoEncoder;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
