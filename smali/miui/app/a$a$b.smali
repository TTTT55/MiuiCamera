.class Lmiui/app/a$a$b;
.super Landroid/widget/CursorAdapter;
.source "AlertControllerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/a$a;->c(Landroid/widget/ListView;I)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field final synthetic c:Landroid/widget/ListView;

.field final synthetic d:I

.field final synthetic e:Lmiui/app/a$a;


# direct methods
.method constructor <init>(Lmiui/app/a$a;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiui/app/a$a$b;->e:Lmiui/app/a$a;

    iput-object p5, p0, Lmiui/app/a$a$b;->c:Landroid/widget/ListView;

    iput p6, p0, Lmiui/app/a$a$b;->d:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lmiui/app/a$a$b;->e:Lmiui/app/a$a;

    iget-object p2, p2, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lmiui/app/a$a$b;->a:I

    .line 4
    iget-object p2, p0, Lmiui/app/a$a$b;->e:Lmiui/app/a$a;

    iget-object p2, p2, Lcom/android/internal/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lmiui/app/a$a$b;->b:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    const p2, 0x1020014

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    .line 2
    iget p2, p0, Lmiui/app/a$a$b;->a:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lmiui/app/a$a$b;->e:Lmiui/app/a$a;

    iget-boolean p1, p1, Lmiui/app/a$a;->e:Z

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lmiui/app/a$a$b;->c:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    iget p0, p0, Lmiui/app/a$a$b;->b:I

    invoke-interface {p3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_1
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p1, p0, Lmiui/app/a$a$b;->e:Lmiui/app/a$a;

    iget-object p1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget p0, p0, Lmiui/app/a$a$b;->d:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
