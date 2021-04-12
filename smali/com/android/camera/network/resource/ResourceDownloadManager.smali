.class public Lcom/android/camera/network/resource/ResourceDownloadManager;
.super Ljava/lang/Object;
.source "ResourceDownloadManager.java"


# static fields
.field private static mInstance:Lcom/android/camera/network/resource/ResourceDownloadManager;


# instance fields
.field private mDownloadState:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/network/resource/OnDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCompleteListener:Lcom/android/camera/network/download/GalleryDownloadManager$OnCompleteListener;

.field private object:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mDownloadState:Landroid/util/LongSparseArray;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->object:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mListeners:Ljava/util/List;

    .line 114
    new-instance v0, Lcom/android/camera/network/resource/ResourceDownloadManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/network/resource/ResourceDownloadManager$2;-><init>(Lcom/android/camera/network/resource/ResourceDownloadManager;)V

    iput-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mOnCompleteListener:Lcom/android/camera/network/download/GalleryDownloadManager$OnCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/network/resource/ResourceDownloadManager;)Landroid/util/LongSparseArray;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mDownloadState:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/network/resource/ResourceDownloadManager;)Lcom/android/camera/network/download/GalleryDownloadManager$OnCompleteListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mOnCompleteListener:Lcom/android/camera/network/download/GalleryDownloadManager$OnCompleteListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/network/resource/ResourceDownloadManager;JI)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/network/resource/ResourceDownloadManager;->dispatchListener(JI)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/network/resource/ResourceDownloadManager;)Ljava/lang/Object;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->object:Ljava/lang/Object;

    return-object p0
.end method

.method private dispatchListener(JI)V
    .locals 1

    .line 109
    iget-object p0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/network/resource/OnDownloadListener;

    .line 110
    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/network/resource/OnDownloadListener;->onFinish(JI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/camera/network/resource/ResourceDownloadManager;
    .locals 2

    .line 35
    sget-object v0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mInstance:Lcom/android/camera/network/resource/ResourceDownloadManager;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lcom/android/camera/network/resource/ResourceDownloadManager;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/android/camera/network/resource/ResourceDownloadManager;->mInstance:Lcom/android/camera/network/resource/ResourceDownloadManager;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/android/camera/network/resource/ResourceDownloadManager;

    invoke-direct {v1}, Lcom/android/camera/network/resource/ResourceDownloadManager;-><init>()V

    sput-object v1, Lcom/android/camera/network/resource/ResourceDownloadManager;->mInstance:Lcom/android/camera/network/resource/ResourceDownloadManager;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mInstance:Lcom/android/camera/network/resource/ResourceDownloadManager;

    return-object v0
.end method


# virtual methods
.method public addDownloadListener(Lcom/android/camera/network/resource/OnDownloadListener;)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public download(Lcom/android/camera/network/resource/Resource;Lcom/android/camera/network/resource/DownloadHelper;)V
    .locals 4

    .line 55
    iget-wide v0, p1, Lcom/android/camera/network/resource/Resource;->id:J

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResourceDownloadManager"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v2, Ljava/io/File;

    invoke-interface {p2, p1}, Lcom/android/camera/network/resource/DownloadHelper;->getDownloadPath(Lcom/android/camera/network/resource/Resource;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "file downloaded "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 60
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/network/resource/ResourceDownloadManager;->dispatchListener(JI)V

    .line 62
    :cond_0
    new-instance p1, Lcom/android/camera/network/net/BaseGalleryRequest;

    const/4 p2, 0x0

    const-string v3, "http://micloudweb.preview.n.xiaomi.com/gallery/public/resource/download"

    invoke-direct {p1, p2, v3}, Lcom/android/camera/network/net/BaseGalleryRequest;-><init>(ILjava/lang/String;)V

    .line 63
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v3, "id"

    invoke-virtual {p1, v3, p2}, Lcom/android/camera/network/net/base/BaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/network/net/base/BaseRequest;

    .line 64
    new-instance p2, Lcom/android/camera/network/resource/ResourceDownloadManager$1;

    invoke-direct {p2, p0, v0, v1, v2}, Lcom/android/camera/network/resource/ResourceDownloadManager$1;-><init>(Lcom/android/camera/network/resource/ResourceDownloadManager;JLjava/io/File;)V

    invoke-virtual {p1, p2}, Lcom/android/camera/network/net/base/BaseRequest;->execute(Lcom/android/camera/network/net/base/ResponseListener;)V

    return-void
.end method

.method public getDownloadState(J)I
    .locals 1

    .line 105
    iget-object p0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mDownloadState:Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public removeDownloadListener(Lcom/android/camera/network/resource/OnDownloadListener;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
