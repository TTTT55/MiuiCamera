.class Lcom/android/camera/WatermarkActivity$2;
.super Ljava/lang/Object;
.source "WatermarkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WatermarkActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WatermarkActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/WatermarkActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "StartActivityWhenLocked"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceActivity;->setShowWhenLocked(Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-static {p1}, Lcom/android/camera/WatermarkActivity;->access$200(Lcom/android/camera/WatermarkActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWatermarkDefault()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-static {p1}, Lcom/android/camera/WatermarkActivity;->access$300(Lcom/android/camera/WatermarkActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-static {v1}, Lcom/android/camera/WatermarkActivity;->access$300(Lcom/android/camera/WatermarkActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-static {p1}, Lcom/android/camera/WatermarkActivity;->access$200(Lcom/android/camera/WatermarkActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-static {p1}, Lcom/android/camera/WatermarkActivity;->access$200(Lcom/android/camera/WatermarkActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-static {v1}, Lcom/android/camera/WatermarkActivity;->access$300(Lcom/android/camera/WatermarkActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-static {p1}, Lcom/android/camera/WatermarkActivity;->access$200(Lcom/android/camera/WatermarkActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-static {v1}, Lcom/android/camera/WatermarkActivity;->access$200(Lcom/android/camera/WatermarkActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    const-string v3, "WatermarkActivity"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, v1}, Lcom/android/camera/WatermarkActivity;->access$402(Lcom/android/camera/WatermarkActivity;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 10
    iget-object p1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-static {p1}, Lcom/android/camera/WatermarkActivity;->access$400(Lcom/android/camera/WatermarkActivity;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 11
    iget-object p1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    new-instance v1, Lcom/android/camera/WatermarkActivity$BackgroundHandler;

    iget-object v2, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-static {v2}, Lcom/android/camera/WatermarkActivity;->access$400(Lcom/android/camera/WatermarkActivity;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/WatermarkActivity$BackgroundHandler;-><init>(Lcom/android/camera/WatermarkActivity;Landroid/os/Looper;)V

    iput-object v1, p1, Lcom/android/camera/WatermarkActivity;->mBackgroundHandler:Lcom/android/camera/WatermarkActivity$BackgroundHandler;

    .line 12
    iget-object p1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    new-instance v1, Lcom/android/camera/WatermarkActivity$UiHandler;

    iget-object v2, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/WatermarkActivity$UiHandler;-><init>(Lcom/android/camera/WatermarkActivity;Landroid/os/Looper;)V

    iput-object v1, p1, Lcom/android/camera/WatermarkActivity;->mUiHandler:Lcom/android/camera/WatermarkActivity$UiHandler;

    .line 13
    iget-object p1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-static {p1}, Lcom/android/camera/WatermarkActivity;->access$200(Lcom/android/camera/WatermarkActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-static {p1}, Lcom/android/camera/WatermarkActivity;->access$200(Lcom/android/camera/WatermarkActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 15
    iget-object p0, p0, Lcom/android/camera/WatermarkActivity$2;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-static {p0}, Lcom/android/camera/WatermarkActivity;->access$200(Lcom/android/camera/WatermarkActivity;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
