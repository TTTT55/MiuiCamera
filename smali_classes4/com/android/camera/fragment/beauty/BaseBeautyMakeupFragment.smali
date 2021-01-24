.class public abstract Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;
.super Lcom/android/camera/fragment/beauty/BaseBeautyFragment;
.source "BaseBeautyMakeupFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;
    }
.end annotation


# static fields
.field protected static final EXTRA_CLEAR:I = 0x2

.field protected static final EXTRA_NULL:I = -0x1

.field protected static final EXTRA_RESET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseBeautyMakeup"


# instance fields
.field protected mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mFooterElement:I

.field protected mHeaderCustomWidth:I

.field protected mHeaderElement:I

.field private mHeaderRecyclerView:Landroid/widget/LinearLayout;

.field protected mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemMargin:I

.field private mItemWidth:I

.field private mLastClickTime:J

.field mLastSelectedParam:I

.field protected mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

.field protected mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

.field private mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

.field private mNeedScroll:Z

.field protected mSelectedParam:I

.field private mTotalWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLastSelectedParam:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->scrollIfNeed(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->notifyItemChanged(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->onExtraClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLastClickTime:J

    return-wide p1
.end method

.method private animateView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 3
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v0, 0x43b40000    # 360.0f

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotation(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;-><init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private calcItemWidthAndNeedScroll()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mTotalWidth:I

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mHeaderElement:I

    const v1, 0x7f07005d

    const v2, 0x7f070061

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    .line 3
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mHeaderCustomWidth:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    .line 5
    :goto_0
    iget v5, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mFooterElement:I

    if-eq v5, v3, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    :cond_2
    move v2, v4

    .line 8
    :goto_1
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0003

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    .line 10
    iget v5, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mTotalWidth:I

    sub-int v6, v5, v0

    int-to-float v6, v6

    div-float/2addr v6, v3

    float-to-int v3, v6

    sub-int/2addr v5, v0

    sub-int/2addr v5, v2

    .line 11
    div-int/2addr v5, v1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ne v5, v3, :cond_4

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mNeedScroll:Z

    goto :goto_2

    .line 13
    :cond_4
    iput-boolean v4, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mNeedScroll:Z

    .line 14
    iget v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mTotalWidth:I

    iget v4, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemMargin:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    div-int v5, v3, v1

    .line 15
    :goto_2
    iput v5, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemWidth:I

    return-void
.end method

.method private initAndGetFooterView()Landroid/view/View;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mFooterElement:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001d

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09014a

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ColorImageView;

    const v2, 0x7f09014c

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 6
    iget v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mFooterElement:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const v3, 0x7f0802dd

    .line 7
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f100083

    .line 8
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v3, 0x7f0802de

    .line 9
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f100090

    .line 10
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11
    :goto_0
    iget v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mFooterElement:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    new-instance v1, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$2;-><init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private initHeaderView()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mHeaderElement:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001e

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mHeaderRecyclerView:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09014a

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ColorImageView;

    const v2, 0x7f09014c

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 6
    iget v4, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mHeaderElement:I

    const/4 v5, 0x1

    const v6, 0x7f0802de

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f100139

    .line 8
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f100090

    .line 10
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v1, 0x7f090149

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 13
    iget v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mHeaderCustomWidth:I

    if-lez v2, :cond_3

    .line 14
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 15
    :cond_3
    iget v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mHeaderElement:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    new-instance v1, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$4;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$4;-><init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mHeaderRecyclerView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private final initItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->getShineType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->getSupportedBeautyItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private notifyItemChanged(II)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 1
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    if-le p2, v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method private onExtraClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string p0, "BaseBeautyMakeup"

    const-string p1, "onExtra: too quick!"

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLastClickTime:J

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->onClearClick()V

    goto :goto_0

    :cond_2
    const v0, 0x7f09014a

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->animateView(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->onResetClick()V

    :goto_0
    return-void
.end method

.method private scrollIfNeed(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_2

    :cond_2
    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 5
    iget-object v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v0, p1, -0x1

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    if-eq v0, p1, :cond_4

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return v2

    :cond_4
    return v1
.end method

.method private setItemInCenter(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method


# virtual methods
.method protected getAnimateView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mHeaderRecyclerView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method protected abstract getClassString()Ljava/lang/String;
.end method

.method protected getListItemMargin()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->isNeedScroll()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract getShineType()Ljava/lang/String;
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    .end annotation
.end method

.method protected abstract initExtraType()V
.end method

.method protected initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$5;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$5;-><init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)V

    return-object v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f0900dc

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mHeaderRecyclerView:Landroid/widget/LinearLayout;

    const v0, 0x7f09014b

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance p1, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;-><init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;->setScrollEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->initItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->initExtraType()V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->initHeaderView()V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->calcItemWidthAndNeedScroll()V

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->isNeedScroll()Z

    move-result p1

    if-nez p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;->setScrollEnabled(Z)V

    .line 14
    :cond_0
    new-instance p1, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemWidth:I

    iget v7, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemMargin:I

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZII)V

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    new-instance v0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;-><init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setSelectedPosition(I)V

    .line 18
    new-instance p1, Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->initAndGetFooterView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->initAndGetFooterView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addFooter(Landroid/view/View;)V

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 22
    new-instance p1, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {p1}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x96

    .line 23
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 24
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 25
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 26
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 28
    iget p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->setItemInCenter(I)V

    return-void
.end method

.method protected isNeedScroll()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mNeedScroll:Z

    return p0
.end method

.method protected abstract onAdapterItemClick(Lcom/android/camera/data/data/TypeItem;)V
.end method

.method protected abstract onClearClick()V
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0c002d

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method protected abstract onResetClick()V
.end method

.method protected onViewCreatedAndVisibleToUser(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->onViewCreatedAndVisibleToUser(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    iget p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/TypeItem;

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xb4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz p1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected selectFirstItem()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setSelectedPosition(I)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    iget v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xb4

    .line 5
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/TypeItem;

    iget-object v0, v0, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;Z)V

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected setListPadding(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->isNeedScroll()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07006d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v2

    .line 5
    :goto_0
    invoke-virtual {p1, v0, v2, p0, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method protected toast(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2
    sget-boolean v1, Lcom/android/camera/Util;->sIsFullScreenNavBarHidden:Z

    if-nez v1, :cond_0

    .line 3
    sget v1, Lcom/android/camera/Util;->sNavigationBarHeight:I

    sub-int/2addr v0, v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;III)V

    return-void
.end method
