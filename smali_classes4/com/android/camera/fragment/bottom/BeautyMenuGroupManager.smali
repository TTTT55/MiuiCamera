.class public Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;
.super Ljava/lang/Object;
.source "BeautyMenuGroupManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

.field private mBeautyMenuList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/fragment/bottom/AbBottomMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

.field private mContainerView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentMenuGroupType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa0

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mCurrentMenuGroupType:I

    .line 3
    iput-object p2, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContainerView:Landroid/widget/LinearLayout;

    .line 4
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p2}, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;->animator(Landroid/view/ViewGroup;)Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->initView()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->getCurrentBeautyMenuType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->updateCurrentMenu(I)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->addAllView()V

    return-void
.end method

.method private updateCurrentMenu(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/bottom/AbBottomMenu;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuList:Landroid/util/SparseArray;

    packed-switch p1, :pswitch_data_0

    .line 5
    new-instance v0, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContainerView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;)V

    .line 6
    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 8
    :pswitch_0
    new-instance v0, Lcom/android/camera/fragment/bottom/KaleidoscopeMenu;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContainerView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/fragment/bottom/KaleidoscopeMenu;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;)V

    .line 9
    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    .line 10
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 11
    :pswitch_1
    new-instance v0, Lcom/android/camera/fragment/bottom/LiveSpeedMenu;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContainerView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/fragment/bottom/LiveSpeedMenu;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;)V

    .line 12
    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    .line 13
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 14
    :pswitch_2
    new-instance v0, Lcom/android/camera/fragment/bottom/LiveStickerMenu;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContainerView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/fragment/bottom/LiveStickerMenu;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;)V

    .line 15
    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    .line 16
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 17
    :pswitch_3
    new-instance v0, Lcom/android/camera/fragment/bottom/LiveBeautyMenu;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContainerView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/fragment/bottom/LiveBeautyMenu;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;)V

    .line 18
    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    .line 19
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 20
    :pswitch_4
    new-instance v0, Lcom/android/camera/fragment/bottom/BackBeautyMenu;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContainerView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/fragment/bottom/BackBeautyMenu;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;)V

    .line 21
    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    .line 22
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 23
    :pswitch_5
    new-instance v0, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContainerView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;)V

    .line 24
    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    .line 25
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public animateExpanding(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;->expandAnimate()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;->shrinkAnimate()V

    :goto_0
    return-void
.end method

.method public getBottomMenu()Lcom/android/camera/fragment/bottom/AbBottomMenu;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    return-object p0
.end method

.method public getCurrentBeautyMenuType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mCurrentMenuGroupType:I

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContainerView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public setCurrentBeautyMenuType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mCurrentMenuGroupType:I

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->updateCurrentMenu(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mContainerView:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public switchMenu()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuGroupManager;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->switchMenu()V

    return-void
.end method
