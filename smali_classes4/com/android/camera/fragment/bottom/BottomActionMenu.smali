.class public Lcom/android/camera/fragment/bottom/BottomActionMenu;
.super Ljava/lang/Object;
.source "BottomActionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/bottom/BottomActionMenu$BottomActionMode;,
        Lcom/android/camera/fragment/bottom/BottomActionMenu$BottomActionMenuAnimType;
    }
.end annotation


# static fields
.field public static final ANIM_EXPAND:I = 0xa0

.field public static final ANIM_SHRINK:I = 0xa1

.field public static final BEAUTY_BOTTOM_MENU:I = 0x1

.field public static final CAMERA_OPERATE_BOTTOM_MENU:I = 0x0

.field public static final KALEIDOSCOPE_BOTTOM_MENU:I = 0x3

.field public static final LIVE_BOTTOM_MENU:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private beautyOperateMenuView:Landroid/widget/LinearLayout;

.field private mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

.field private mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

.field private mCameraOperateSelectView:Lcom/android/camera/ui/ModeSelectView;

.field private mContainerView:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

.field private mListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/fragment/bottom/BottomActionMenu$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu$1;-><init>(Lcom/android/camera/fragment/bottom/BottomActionMenu;)V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mListener:Landroid/view/View$OnClickListener;

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->initView(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/bottom/BottomActionMenu;)Lcom/android/camera/ui/ColorActivateTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/bottom/BottomActionMenu;Lcom/android/camera/ui/ColorActivateTextView;)Lcom/android/camera/ui/ColorActivateTextView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    return-object p1
.end method

.method private beautyOperateMenuHandle(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->setCurrentBeautyMenuType(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->switchMenu()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    if-eqz p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->exitAnim(Landroid/view/View;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->enterAnim(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private cameraOperateMenuHandle(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->enterAnim(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->exitAnim(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private changeMenuView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->enterAnim(Landroid/view/View;)V

    return-void
.end method

.method private enterAnim(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0x8c

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    new-instance p1, Lc/h/a/C;

    invoke-direct {p1}, Lc/h/a/C;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private exitAnim(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 2
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    new-instance p1, Lc/h/a/A;

    invoke-direct {p1}, Lc/h/a/A;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0x8c

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private hideQrCodeTip()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideQrCodeTip()V

    :cond_0
    return-void
.end method

.method private initView(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    const v0, 0x7f090173

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/EdgeHorizonScrollView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    const v0, 0x7f090170

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ModeSelectView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateSelectView:Lcom/android/camera/ui/ModeSelectView;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->switchMenuMode(IZ)V

    return-void
.end method


# virtual methods
.method public animateShineBeauty(Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_5

    .line 2
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ColorActivateTextView;

    .line 3
    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, -0x1

    .line 4
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x31

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v7, v8, :cond_1

    const/16 v8, 0x624

    if-eq v7, v8, :cond_0

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v7, "7"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v6, 0x6

    goto :goto_1

    :pswitch_1
    const-string v7, "6"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v6, v9

    goto :goto_1

    :pswitch_2
    const-string v7, "5"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v6, v10

    goto :goto_1

    :pswitch_3
    const-string v7, "4"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v6, v12

    goto :goto_1

    :pswitch_4
    const-string v7, "3"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v6, v1

    goto :goto_1

    :cond_0
    const-string v7, "15"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v6, v11

    goto :goto_1

    :cond_1
    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v6, 0x5

    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    if-eq v6, v12, :cond_3

    if-eq v6, v11, :cond_3

    if-eq v6, v10, :cond_3

    if-eq v6, v9, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    const/16 v3, 0x8

    goto :goto_2

    :cond_4
    move v3, v1

    .line 5
    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move v3, v12

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz v3, :cond_7

    :goto_4
    if-ge v1, v0, :cond_7

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ColorActivateTextView;

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 8
    new-instance v2, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {v2, p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bottomMenuAnimate(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xa0

    if-ne p1, p2, :cond_1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->animateExpanding(Z)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xa1

    if-ne p1, p2, :cond_2

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->animateExpanding(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public clearBottomMenu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public expandAIWatermark(Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;I)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getItems()Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getCurrentType()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v4, v2

    .line 6
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 7
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f0c00bd

    .line 8
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    .line 9
    invoke-virtual {v0, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/ColorActivateTextView;

    const v7, -0x66000001

    .line 10
    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    const v7, -0xff5701

    .line 11
    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    .line 12
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    iget v8, v5, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v7, v5, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    .line 14
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v5, v5, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 16
    iput-object v6, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    .line 17
    invoke-virtual {v6, v3}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 18
    :cond_1
    iget-object v5, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 19
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->changeMenuView()V

    .line 20
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->hideQrCodeTip()V

    return-void
.end method

.method public expandShine(Lcom/android/camera/data/data/runing/ComponentRunningShine;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getItems()Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v3, v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4
    iget-object v3, v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyLevel()Ljava/lang/String;

    move-result-object v4

    const-string v7, "i:0"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v6, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    move v8, v5

    .line 8
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 9
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/data/data/ComponentDataItem;

    const v10, 0x7f0c0020

    .line 10
    iget-object v11, v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    .line 11
    invoke-virtual {v3, v10, v11, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ui/ColorActivateTextView;

    const v11, -0x66000001

    .line 12
    invoke-virtual {v10, v11}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    const v11, -0xff5701

    .line 13
    invoke-virtual {v10, v11}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    .line 14
    iget-object v11, v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    iget v12, v9, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v11, v9, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-eqz v7, :cond_2

    .line 16
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v11, v9, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 18
    iput-object v10, v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    .line 19
    invoke-virtual {v10, v6}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 20
    :cond_2
    iget-object v11, v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v4, :cond_6

    .line 21
    iget-object v9, v9, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const/4 v11, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/16 v13, 0x624

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v5, 0x2

    if-eq v12, v13, :cond_3

    packed-switch v12, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v12, "6"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v11, v14

    goto :goto_3

    :pswitch_1
    const-string v12, "5"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v11, v15

    goto :goto_3

    :pswitch_2
    const-string v12, "4"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v11, v6

    goto :goto_3

    :pswitch_3
    const-string v12, "3"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    const-string v12, "15"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v11, v5

    :cond_4
    :goto_3
    if-eqz v11, :cond_5

    if-eq v11, v6, :cond_5

    if-eq v11, v5, :cond_5

    if-eq v11, v15, :cond_5

    if-eq v11, v14, :cond_5

    goto :goto_4

    :cond_5
    const/16 v5, 0x8

    .line 22
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 23
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->changeMenuView()V

    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->hideQrCodeTip()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCameraOperateMenuView()Lcom/android/camera/ui/EdgeHorizonScrollView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateMenuView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    return-object p0
.end method

.method public getCameraOperateSelectView()Lcom/android/camera/ui/ModeSelectView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mCameraOperateSelectView:Lcom/android/camera/ui/ModeSelectView;

    return-object p0
.end method

.method public getMenuData()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/fragment/beauty/MenuItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->getBottomMenu()Lcom/android/camera/fragment/bottom/AbBottomMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->getMenuData()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public initBeautyMenuView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContainerView:Landroid/widget/FrameLayout;

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    new-instance v0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuView:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mBeautyOperateMenuViewWrapper:Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/ColorActivateTextView;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    .line 4
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xc2

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p1, :cond_12

    const/4 v0, -0x1

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x32

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v3, v4, :cond_6

    const/16 v1, 0x623

    if-eq v3, v1, :cond_5

    const/16 v1, 0x36

    if-eq v3, v1, :cond_4

    const/16 v1, 0x37

    if-eq v3, v1, :cond_3

    const/16 v1, 0x61f

    if-eq v3, v1, :cond_2

    const/16 v1, 0x620

    if-eq v3, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "11"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v8

    goto :goto_1

    :cond_2
    const-string v1, "10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v7

    goto :goto_1

    :cond_3
    const-string v1, "7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_1

    :cond_4
    const-string v1, "6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v6

    goto :goto_1

    :cond_5
    const-string v1, "14"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v5

    goto :goto_1

    :cond_6
    const-string v3, "2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    :goto_0
    move v1, v0

    :goto_1
    const-string v0, "beauty_bottom_tab"

    const-string v3, "key_beauty_click"

    const-string v4, "attr_operate_state"

    if-eqz v1, :cond_10

    const-string v9, "mi_live_click_filter"

    if-eq v1, v2, :cond_e

    if-eq v1, v8, :cond_c

    if-eq v1, v7, :cond_a

    if-eq v1, v6, :cond_9

    if-eq v1, v5, :cond_8

    goto :goto_2

    .line 9
    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "bokeh_bottom_tab"

    .line 10
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v3, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 12
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v3, v1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 15
    :cond_a
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isLiveModule()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 16
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveBeautyClick(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_b
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isMiLiveModule()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 18
    invoke-static {v9}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_c
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isLiveModule()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 20
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveBeautyClick(Ljava/lang/String;)V

    goto :goto_2

    .line 21
    :cond_d
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isMiLiveModule()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "mi_live_click_beauty"

    .line 22
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    goto :goto_2

    .line 23
    :cond_e
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isMiLiveModule()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 24
    invoke-static {v9}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "filter_bottom_tab"

    .line 26
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {v3, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 28
    :cond_10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {v3, v1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    :cond_11
    :goto_2
    invoke-interface {p1, p0, v2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->switchShineType(Ljava/lang/String;Z)V

    :cond_12
    return-void
.end method

.method public switchMenuMode(IIZ)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1
    sget-object p1, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    const-string p2, "default switch menu mode:camera_operate"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->cameraOperateMenuHandle(Z)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    const-string v0, "switch menu mode:kaleidoscope_operate"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0, p2, p3}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuHandle(IZ)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    const-string v0, "switch menu mode:live_operate"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0, p2, p3}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuHandle(IZ)V

    goto :goto_0

    .line 7
    :cond_2
    sget-object p1, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    const-string v0, "switch menu mode:beauty_operate"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0, p2, p3}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->beautyOperateMenuHandle(IZ)V

    goto :goto_0

    .line 9
    :cond_3
    sget-object p1, Lcom/android/camera/fragment/bottom/BottomActionMenu;->TAG:Ljava/lang/String;

    const-string p2, "switch menu mode:camera_operate"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->cameraOperateMenuHandle(Z)V

    :goto_0
    return-void
.end method

.method public switchMenuMode(IZ)V
    .locals 1

    const/16 v0, 0xa1

    .line 11
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->switchMenuMode(IIZ)V

    return-void
.end method
