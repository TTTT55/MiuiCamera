.class Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$6;
.super Ljava/lang/Object;
.source "MimojiAvatarEngine2Impl.java"

# interfaces
.implements Lcom/arcsoft/avatar2/recoder/RecordingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$6;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingListener(ILjava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl$6;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->access$1200(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x400

    const-wide/16 v2, 0x3e8

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 3
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 4
    iput p1, p0, Landroid/os/Message;->arg1:I

    const/4 p1, 0x3

    .line 5
    iput p1, p0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 6
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 7
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 8
    iput p1, p0, Landroid/os/Message;->arg1:I

    const/4 p1, 0x4

    .line 9
    iput p1, p0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 10
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 11
    div-long/2addr p1, v2

    div-long/2addr p1, v2

    long-to-int v0, p1

    .line 12
    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordingListener_time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mimoji2Impl"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 14
    iput p1, p0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 15
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 16
    div-long/2addr p1, v2

    div-long/2addr p1, v2

    long-to-int p1, p1

    .line 17
    iput p1, p0, Landroid/os/Message;->arg1:I

    const/4 p1, 0x2

    .line 18
    iput p1, p0, Landroid/os/Message;->what:I

    .line 19
    :goto_0
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
