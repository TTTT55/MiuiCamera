.class Lcom/android/camera/fragment/FragmentBottomPopupTips$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentBottomPopupTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBottomPopupTips;->initBeautyIntroAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$3;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 212
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$3;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 217
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$3;->mCancelled:Z

    if-nez p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$3;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$500(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 219
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$3;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$600(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 207
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$3;->mCancelled:Z

    return-void
.end method
