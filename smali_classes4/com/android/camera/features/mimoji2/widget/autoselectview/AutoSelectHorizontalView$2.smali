.class Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView$2;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "AutoSelectHorizontalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView$2;->this$0:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView$2;->this$0:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;->access$400(Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;)Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView$2;->this$0:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;->access$500(Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView$2;->this$0:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;->access$400(Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;)Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView$2;->this$0:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;->access$400(Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;)Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView$2;->this$0:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;->access$400(Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;)Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
