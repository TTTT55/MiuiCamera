.class public final synthetic Lcom/android/camera/features/mimoji2/fragment/edit/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEmoticon;

.field public final synthetic b:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEmoticon;Lcom/arcsoft/avatar2/emoticon/EmoInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/k;->a:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEmoticon;

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/k;->b:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    iput p3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/k;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/k;->a:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEmoticon;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/k;->b:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    iget p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/k;->c:I

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEmoticon;->r(Lcom/arcsoft/avatar2/emoticon/EmoInfo;I)V

    return-void
.end method
