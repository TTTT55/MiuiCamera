.class Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$9;
.super Ljava/lang/Object;
.source "FragmentBottomAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showReverseConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$9;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$9;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$902(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$9;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$200(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/android/camera/ui/CameraSnapView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->removeLastSegment()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$9;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1000(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)I

    move-result p1

    const/16 p2, 0xae

    if-ne p1, p2, :cond_0

    const-string p1, "live_reverse_confirm"

    .line 4
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$9;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/ILiveModule;

    .line 7
    invoke-interface {p0}, Lcom/android/camera/module/ILiveModule;->doReverse()V

    return-void
.end method
