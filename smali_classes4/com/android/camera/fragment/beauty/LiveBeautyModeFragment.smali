.class public Lcom/android/camera/fragment/beauty/LiveBeautyModeFragment;
.super Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;
.source "LiveBeautyModeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getClassString()Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Lcom/android/camera/fragment/beauty/LiveBeautyModeFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getListItemMargin()I
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->getListItemMargin()I

    move-result p0

    return p0
.end method

.method protected getShineType()Ljava/lang/String;
    .locals 0

    const-string p0, "11"

    return-object p0
.end method

.method protected initExtraType()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mHeaderElement:I

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mHeaderCustomWidth:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mFooterElement:I

    return-void
.end method

.method protected onAdapterItemClick(Lcom/android/camera/data/data/TypeItem;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xb4

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz p0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;Z)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isLiveModule()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    iget-object p0, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveBeautyCounter(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isMiLiveModule()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    iget-object p0, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveBeautyCounter(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onClearClick()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->clearBeauty()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->selectFirstItem()V

    return-void
.end method

.method protected onResetClick()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->resetBeauty()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->selectFirstItem()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->toast(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isLiveModule()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "RESET"

    .line 5
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveBeautyCounter(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isMiLiveModule()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "mi_live_click_beauty_reset"

    .line 7
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setListPadding(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->setListPadding(Landroidx/recyclerview/widget/RecyclerView;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method
