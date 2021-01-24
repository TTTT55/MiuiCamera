.class public Lcom/android/camera/fragment/manually/FragmentManually;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentManually.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;
.implements Lcom/android/camera/fragment/manually/ManuallyListener;


# instance fields
.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mCurrentAdjustType:I

.field private mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

.field private mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

.field private mIndicatorButton:Landroid/widget/ImageView;

.field private mIsManuallyParentHiding:Z

.field private mIsSuperEISEnabled:Z

.field private mIsVideoRecording:Z

.field private mManuallyComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;"
        }
    .end annotation
.end field

.field private mManuallyParent:Landroid/view/ViewGroup;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewLayout:Landroid/view/ViewGroup;

.field private mSplitLine:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/manually/FragmentManually;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsManuallyParentHiding:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/manually/FragmentManually;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/manually/FragmentManually;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/manually/FragmentManually;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private adjustViewBackground(I)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewLayout:Landroid/view/ViewGroup;

    const p1, 0x7f0600ab

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewLayout:Landroid/view/ViewGroup;

    const p1, 0x7f06005d

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewLayout:Landroid/view/ViewGroup;

    const p1, 0x7f06005f

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private hideManuallyParent()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsManuallyParentHiding:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    int-to-float v0, v0

    .line 5
    invoke-virtual {v2, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 6
    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Lcom/android/camera/fragment/manually/FragmentManually$1;

    invoke-direct {v3, p0, v1}, Lcom/android/camera/fragment/manually/FragmentManually$1;-><init>(Lcom/android/camera/fragment/manually/FragmentManually;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    .line 7
    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0x64

    .line 13
    invoke-virtual {p0, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 14
    invoke-virtual {p0, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    invoke-virtual {p0, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private hideTips()V
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
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_0
    return-void
.end method

.method private initManually()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initManuallyDataList()Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/ManuallyDecoration;->setStyle(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 5
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;-><init>(ILandroid/view/View$OnClickListener;Ljava/util/List;)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070269

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->updateData()V

    .line 10
    invoke-virtual {v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->getCurrentTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 11
    :cond_0
    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method private initManuallyDataList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyWB()Lcom/android/camera/data/data/config/ComponentManuallyWB;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, Lcom/mi/config/b;->v0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isAFRegionSupported()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->setFixedFocusLens(Z)V

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyISO()Lcom/android/camera/data/data/config/ComponentManuallyISO;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallyEV()Lcom/android/camera/data/data/config/ComponentManuallyEV;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->e2()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    if-nez v1, :cond_4

    .line 15
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    return-object p0
.end method

.method private initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 3
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->initTilt(Lcom/android/camera/fragment/manually/ManuallyListener;)V

    goto :goto_0

    .line 4
    :cond_1
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 5
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->initScene(Lcom/android/camera/fragment/manually/ManuallyListener;)V

    goto :goto_0

    .line 6
    :cond_2
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initManually()V

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0

    :cond_3
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 10
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return p1
.end method

.method private initScene(Lcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSceneValue()Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const/high16 v4, 0x40b00000    # 5.5f

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v0, v2, p1, v3}, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;-><init>(Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0701a0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    iput-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method private initTilt(Lcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/manually/ManuallyDecoration;->setStyle(I)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 5
    new-instance v1, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v3, v4

    invoke-direct {v1, v0, v2, p1, v3}, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;-><init>(Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070269

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    iput-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method private isReinitNeeded(III)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/16 p1, 0xb4

    const/16 v0, 0xa7

    if-eq p3, v0, :cond_2

    if-eq p3, p1, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    return v1

    :cond_2
    if-ne p2, p1, :cond_3

    return v1

    .line 2
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result p1

    .line 3
    iget-boolean p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsSuperEISEnabled:Z

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private performFocusValueChangedViberator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    rem-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->getInstance(Landroid/content/Context;)Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->performFocusValueLargeChangedInManual()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->getInstance(Landroid/content/Context;)Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->performFocusValueLightChangedInManual()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private reInitManuallyLayout(IIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/manually/FragmentManually;->isReinitNeeded(III)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsSuperEISEnabled:Z

    const/4 p3, 0x1

    .line 3
    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/manually/FragmentManually;->setManuallyLayoutVisible(Z)V

    if-eqz p1, :cond_2

    if-eq p1, p3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p3, p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 5
    invoke-direct {p0, p3, p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I

    :goto_0
    if-nez p1, :cond_6

    if-nez p4, :cond_3

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 8
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/16 p1, 0xa7

    if-eq p2, p1, :cond_5

    const/16 p1, 0xb4

    if-eq p2, p1, :cond_5

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 11
    :cond_5
    new-instance p1, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const/16 p2, 0x50

    invoke-direct {p1, p0, p2}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    const/16 p0, 0x118

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 14
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method private removeExtra()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private setManuallyLayoutViewVisible(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/16 v1, 0xfe

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    const/4 v0, 0x1

    const/16 v1, 0x118

    const/16 v2, 0x50

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    const/4 v3, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iput v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto/16 :goto_0

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setAnimateViewVisible(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    iput v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p0, v2}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->directSetResult(Landroid/view/View;I)V

    goto :goto_0

    .line 12
    :cond_4
    iput v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 14
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 15
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 16
    :cond_5
    new-instance p1, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-direct {p1, p0, v2}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    .line 17
    invoke-virtual {p1, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 19
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 22
    :cond_7
    new-instance p1, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-direct {p1, p0, v2}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    .line 23
    invoke-virtual {p1, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 25
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method private updateEVState(I)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallyEV()Lcom/android/camera/data/data/config/ComponentManuallyEV;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyISO()Lcom/android/camera/data/data/config/ComponentManuallyISO;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/32 v7, 0x7735940

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    if-lez v5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 10
    :goto_0
    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/config/ComponentManuallyEV;->setDisabled(Z)V

    if-eqz v6, :cond_2

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->getCurrentTitle()I

    move-result p1

    const v0, 0x7f100359

    if-ne p1, v0, :cond_2

    .line 13
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->removeExtra()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xf7

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0c005d

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->getBottomHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v0, 0x7f090153

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09014e

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const v0, 0x7f09015c

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewLayout:Landroid/view/ViewGroup;

    const v0, 0x7f09015b

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewLayout:Landroid/view/ViewGroup;

    const v1, 0x7f09015a

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mSplitLine:Landroid/view/View;

    .line 10
    new-instance p1, Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p1, v2, v1}, Lcom/android/camera/fragment/manually/ManuallyDecoration;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    .line 11
    new-instance p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "manually_recycler_view"

    invoke-direct {p1, v1, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 14
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManually;->adjustViewBackground(I)V

    .line 15
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/manually/FragmentManually;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xc2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 7
    new-instance p1, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const/16 v0, 0x50

    invoke-direct {p1, p0, v0}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    const/16 p0, 0x118

    .line 8
    invoke-virtual {p1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_2
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->adjustViewBackground(I)V

    .line 3
    iget p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initManuallyDataList()Ljava/util/List;

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 8
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p2, p1, p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->notifyDataChanged(II)V

    :cond_1
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsManuallyParentHiding:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2
    iget-boolean v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    if-eqz v3, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "M_manual_"

    const-string v5, "manual_edit_tab_hide"

    .line 4
    invoke-static {v4, v5, v3}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-ne p1, v2, :cond_3

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->isAnimateIng()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 6
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->hideManuallyParent()V

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090153

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentData;

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0701a0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-nez v1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->hideTips()V

    .line 9
    new-instance v1, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-direct {v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    .line 10
    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->setmFragmentManually(Lcom/android/camera/fragment/manually/FragmentManually;)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    iget-boolean v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->updateRecordingState(Z)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, p1, v3, v2, p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->setComponentData(Lcom/android/camera/data/data/ComponentData;IZLcom/android/camera/fragment/manually/ManuallyListener;)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v1, 0x7f090159

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    .line 14
    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {p1, v1, v2, v3}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    goto/16 :goto_0

    .line 17
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->getCurrentTitle()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->animateOut()V

    .line 19
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    goto :goto_0

    .line 20
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->hideTips()V

    .line 21
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    iget-boolean v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->updateRecordingState(Z)V

    .line 22
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {v1, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->resetData(Lcom/android/camera/data/data/ComponentData;)V

    .line 23
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    goto :goto_0

    .line 24
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "M_manual_"

    const-string v1, "manual_edit_tab_show"

    .line 25
    invoke-static {v0, v1, p1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->hideTips()V

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v1, 0x118

    .line 30
    invoke-virtual {p1, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 31
    invoke-virtual {p1, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 33
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 34
    invoke-virtual {p1, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 35
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 36
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v0, Lcom/android/camera/fragment/manually/FragmentManually$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/manually/FragmentManually$2;-><init>(Lcom/android/camera/fragment/manually/FragmentManually;)V

    .line 37
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->withEndAction(Ljava/lang/Runnable;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :goto_0
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p5, v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 5
    :sswitch_0
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onFocusValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyFocus;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    if-nez p1, :cond_3

    .line 7
    invoke-direct {p0, p2, p3}, Lcom/android/camera/fragment/manually/FragmentManually;->performFocusValueChangedViberator(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :sswitch_1
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyET;

    invoke-interface {v0, p1, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onETValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyET;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :sswitch_2
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onDualLensSwitch(Lcom/android/camera/data/data/config/ComponentManuallyDualLens;I)V

    move v1, v3

    goto :goto_0

    :sswitch_3
    const-string p2, "manual"

    .line 10
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object p2

    .line 12
    invoke-static {}, Lcom/mi/config/b;->S0()Z

    move-result v2

    .line 13
    move-object v4, p1

    check-cast v4, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-virtual {p2, v4, v2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->showCustomWB(Lcom/android/camera/data/data/config/ComponentManuallyWB;Z)V

    .line 14
    :cond_2
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-interface {v0, p1, p3, p4}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onWBValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyWB;Ljava/lang/String;Z)V

    goto :goto_0

    .line 15
    :sswitch_4
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyEV;

    invoke-interface {v0, p1, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onEVValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyEV;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :sswitch_5
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyISO;

    invoke-interface {v0, p1, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onISOValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyISO;Ljava/lang/String;)V

    .line 17
    :cond_3
    :goto_0
    invoke-direct {p0, p5}, Lcom/android/camera/fragment/manually/FragmentManually;->updateEVState(I)V

    if-eqz v1, :cond_4

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa4

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    .line 19
    invoke-interface {p1, v3}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterResetTip(Z)V

    goto :goto_1

    .line 20
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xac

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_5

    .line 21
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    .line 22
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/android/camera/fragment/manually/FragmentManually$3;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/manually/FragmentManually$3;-><init>(Lcom/android/camera/fragment/manually/FragmentManually;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f100338 -> :sswitch_5
        0x7f100359 -> :sswitch_4
        0x7f1003dc -> :sswitch_3
        0x7f1003ec -> :sswitch_2
        0x7f100408 -> :sswitch_1
        0x7f100419 -> :sswitch_0
    .end sparse-switch
.end method

.method public onRecordingPrepare()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070256

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz v1, :cond_0

    .line 4
    iget-boolean v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->updateRecordingState(Z)V

    const v1, 0x7f1003ec

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {v2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->getCurrentTitle()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->animateOut()V

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 8
    :cond_0
    invoke-direct {p0, v0, p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v1, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    iget-boolean v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->updateRecordingState(Z)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/16 v1, 0xb4

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/manually/FragmentManually;->notifyDataChanged(II)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mSplitLine:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 15
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onRecordingStop()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz v1, :cond_0

    .line 4
    iget-boolean v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->updateRecordingState(Z)V

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-direct {p0, v1, p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    iget-boolean v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->updateRecordingState(Z)V

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mSplitLine:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0xb4

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/fragment/manually/FragmentManually;->notifyDataChanged(II)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/16 p3, 0xa7

    if-eq p1, p3, :cond_0

    const/16 p3, 0xb4

    if-eq p1, p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    if-eqz p3, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManually;->updateEVState(I)V

    .line 4
    :cond_1
    invoke-direct {p0, p3, v0, p1, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->reInitManuallyLayout(IIILjava/util/List;)V

    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb5

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public resetManually()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->getCurrentTitle()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 4
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v1

    .line 5
    :goto_1
    iget-object v6, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 6
    iget-object v6, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/data/data/ComponentData;

    .line 7
    instance-of v7, v6, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    if-eqz v7, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 9
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    .line 11
    invoke-virtual {v6}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v6

    if-ne v6, v2, :cond_4

    move v5, v4

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12
    :cond_5
    iget-object v4, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eq v2, v1, :cond_6

    if-eq v5, v1, :cond_6

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->resetData(Lcom/android/camera/data/data/ComponentData;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 15
    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-nez v0, :cond_7

    return-void

    .line 17
    :cond_7
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->resetManuallyParameters(Ljava/util/List;)V

    .line 18
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/manually/FragmentManually;->updateEVState(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setManuallyLayoutVisible(Z)V
    .locals 3

    const/16 v0, 0xa7

    const/16 v1, 0xb4

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    :goto_0
    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 5
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_6

    .line 6
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 7
    :cond_3
    iput v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 8
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x4

    if-eq p1, v1, :cond_5

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 10
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_6

    .line 11
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I
    .locals 1

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I

    move-result p1

    .line 2
    iget-object p3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p3, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->setManuallyLayoutViewVisible(I)V

    return p1
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb5

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->removeExtra()V

    return-void
.end method

.method public visibleHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    return p0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07027d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
