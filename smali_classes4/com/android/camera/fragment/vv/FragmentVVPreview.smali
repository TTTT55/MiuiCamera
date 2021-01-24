.class public Lcom/android/camera/fragment/vv/FragmentVVPreview;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentVVPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# instance fields
.field private mPreviewAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

.field private mPreviewIndex:I

.field private mPreviewLayout:Landroid/view/ViewGroup;

.field private mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

.field private mVVList:Lcom/android/camera/fragment/vv/VVList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/vv/FragmentVVPreview;)Lcom/android/camera/fragment/vv/ResourceSelectedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/vv/FragmentVVPreview;)Lcom/android/camera/fragment/vv/VVList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/vv/FragmentVVPreview;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/vv/FragmentVVPreview;)Lcom/android/camera/fragment/BaseFragmentPagerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    return-object p0
.end method

.method private initViewPager()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v2, v1

    const/high16 v3, 0x41100000    # 9.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 3
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int v4, v0, v2

    const/4 v10, 0x2

    .line 6
    div-int/2addr v4, v10

    .line 7
    iget-object v5, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v6, Lcom/android/camera/fragment/vv/FragmentVVPreview$1;

    invoke-direct {v6, p0}, Lcom/android/camera/fragment/vv/FragmentVVPreview$1;-><init>(Lcom/android/camera/fragment/vv/FragmentVVPreview;)V

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 8
    iget-object v5, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewLayout:Landroid/view/ViewGroup;

    new-instance v6, Lcom/android/camera/fragment/vv/FragmentVVPreview$2;

    invoke-direct {v6, p0, v4, v0}, Lcom/android/camera/fragment/vv/FragmentVVPreview$2;-><init>(Lcom/android/camera/fragment/vv/FragmentVVPreview;II)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/android/camera/fragment/vv/VVPreviewTransformer;

    invoke-direct {v3}, Lcom/android/camera/fragment/vv/VVPreviewTransformer;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v3}, Lcom/android/camera/resource/BaseResourceList;->getSize()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    move v12, v11

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v3}, Lcom/android/camera/resource/BaseResourceList;->getSize()I

    move-result v3

    if-ge v12, v3, :cond_0

    .line 13
    new-instance v13, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;

    invoke-direct {v13}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;-><init>()V

    .line 14
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v3, v12}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/camera/fragment/vv/VVItem;

    iget v9, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewIndex:I

    move-object v3, v13

    move v4, v12

    move v6, v2

    move v7, v1

    move-object v8, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->setData(ILcom/android/camera/fragment/vv/VVItem;IILandroid/view/View$OnClickListener;I)V

    .line 15
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v10}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewIndex:I

    invoke-virtual {v0, p0, v11}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private transformToGallery(ILandroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const v0, 0xfff4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/fragment/FragmentUtils;->getFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/camera/fragment/vv/FragmentVVGallery;

    if-nez p2, :cond_1

    .line 5
    new-instance p2, Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-direct {p2}, Lcom/android/camera/fragment/vv/FragmentVVGallery;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    invoke-virtual {p2, v0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->setResourceSelectedListener(Lcom/android/camera/fragment/vv/ResourceSelectedListener;)V

    .line 7
    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->setPreviewData(I)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const p1, 0x7f090284

    .line 10
    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->setPreviewData(I)V

    .line 13
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 14
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const p0, 0xfff5

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0c007f

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09028e

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0902a6

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->initViewPager()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->transformToGallery(ILandroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09028a

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v1, 0x7f09028c

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->transformToGallery(ILandroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->postponeEnterTransition()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object p1

    const v0, 0x10f0001

    invoke-virtual {p1, v0}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setSharedElementReturnTransition(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setPreviewData(ILcom/android/camera/fragment/vv/VVList;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mPreviewIndex:I

    .line 2
    iput-object p2, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    return-void
.end method

.method public setResourceSelectedListener(Lcom/android/camera/fragment/vv/ResourceSelectedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreview;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
