.class Lcom/android/camera/fragment/top/FragmentTopAlert$1;
.super Ljava/lang/Object;
.source "FragmentTopAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/top/FragmentTopAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/ToggleSwitch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/ToggleSwitch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 300
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/ToggleSwitch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$100(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/ToggleSwitch;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$200(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$300(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;I)V

    .line 302
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/ToggleSwitch;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 303
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 304
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$400(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/ToggleSwitch;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$500(Lcom/android/camera/fragment/top/FragmentTopAlert;)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$600(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;I)V

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$700(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/ToggleSwitch;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$700(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$200(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$600(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;I)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/ToggleSwitch;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$800(Lcom/android/camera/fragment/top/FragmentTopAlert;)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$600(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;I)V

    :goto_0
    return-void
.end method
