.class public Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WatermarkHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WatermarkHolder"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mIndex:I

.field private mSelectedIndicator:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mImageView:Landroid/widget/ImageView;

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mIndex:I

    const v0, 0x7f0902a7

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0902a8

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bindHolder(ILcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mIndex:I

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getResRvItem()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public getIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mIndex:I

    return p0
.end method

.method public updateSelectItem(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
