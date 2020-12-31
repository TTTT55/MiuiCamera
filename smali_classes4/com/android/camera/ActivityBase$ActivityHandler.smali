.class Lcom/android/camera/ActivityBase$ActivityHandler;
.super Landroid/os/Handler;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ActivityBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase$ActivityHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase$ActivityHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_8

    const-string v2, "ActivityBase"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    const/4 v4, 0x2

    if-eq v1, v4, :cond_6

    const/4 v5, 0x3

    if-eq v1, v5, :cond_5

    const/16 p0, 0xa

    if-eq v1, p0, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "exception occurs, msg = %s , exception = 0x%x"

    invoke-static {v1, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xe6

    if-eq p0, p1, :cond_2

    const/16 p1, 0xe7

    if-eq p0, p1, :cond_2

    const/16 p1, 0xec

    if-eq p0, p1, :cond_3

    const/16 p1, 0xed

    if-eq p0, p1, :cond_2

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const p0, 0x7f10009a

    .line 5
    invoke-static {v0, p0, v5}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;IZ)V

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->showErrorDialog()V

    goto :goto_1

    :cond_2
    :pswitch_1
    move v3, v5

    .line 7
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide p0

    const-wide/16 v1, 0x1

    cmp-long p0, p0, v1

    if-lez p0, :cond_4

    const p0, 0x7f1000a8

    goto :goto_0

    :cond_4
    const p0, 0x7f1000a7

    .line 8
    :goto_0
    invoke-static {v0, p0, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;IZ)V

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->showErrorDialog()V

    goto :goto_1

    .line 10
    :cond_5
    new-instance p1, Lcom/android/camera/fragment/dialog/ThermalDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/ThermalDialogFragment;-><init>()V

    const v1, 0x7f1100aa

    .line 11
    invoke-virtual {p1, v4, v1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v3, "ThermalDialog"

    .line 14
    invoke-virtual {v1, p1, v3}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/camera/h;

    invoke-direct {p1, v0}, Lcom/android/camera/h;-><init>(Lcom/android/camera/ActivityBase;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "onThermalNotification finish activity after 5 seconds"

    .line 17
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 18
    :cond_6
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackModeSwitch()V

    goto :goto_1

    :cond_7
    const-string p0, "handleMessage:  set mIsFinishInKeyguard = true;"

    .line 19
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {v0, v3}, Lcom/android/camera/ActivityBase;->access$002(Lcom/android/camera/ActivityBase;Z)Z

    goto :goto_1

    .line 21
    :cond_8
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p0

    if-nez p0, :cond_9

    .line 22
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/camera/ActivityBase;->showDebugInfo(Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
