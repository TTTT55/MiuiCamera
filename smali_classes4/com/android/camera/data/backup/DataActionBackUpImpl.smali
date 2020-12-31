.class public Lcom/android/camera/data/backup/DataActionBackUpImpl;
.super Ljava/lang/Object;
.source "DataActionBackUpImpl.java"

# interfaces
.implements Lcom/android/camera/data/backup/DataBackUp;


# instance fields
.field private mBackupArrays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroidx/collection/SimpleArrayMap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backupRunning(Lcom/android/camera/data/data/runing/DataItemRunning;IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/data/data/DataItemBase;->cloneValues()Landroidx/collection/SimpleArrayMap;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p4, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/data/data/DataItemBase;->clearArrayMap()V

    :cond_2
    return-void
.end method

.method public clearBackUp()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    return-void
.end method

.method public getBackupFilter(II)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/backup/DataActionBackUpImpl;->getBackupRunning(II)Landroidx/collection/SimpleArrayMap;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3
    sget p0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "pref_camera_shader_coloreffect_key"

    .line 4
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    .line 5
    sget p0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public getBackupRunning(II)Landroidx/collection/SimpleArrayMap;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/collection/SimpleArrayMap;

    return-object p0
.end method

.method public getBackupSwitchState(ILjava/lang/String;I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/android/camera/data/backup/DataActionBackUpImpl;->getBackupRunning(II)Landroidx/collection/SimpleArrayMap;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return p1

    .line 4
    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isLastVideoFastMotion()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/backup/DataActionBackUpImpl;->getBackupRunning(II)Landroidx/collection/SimpleArrayMap;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_video_speed_fast_key"

    .line 3
    invoke-virtual {p0, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public removeOtherVideoMode()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v0

    .line 3
    iget-object p0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public revertRunning(Lcom/android/camera/data/data/runing/DataItemRunning;II)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/data/data/DataItemBase;->clearArrayMap()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/collection/SimpleArrayMap;

    .line 6
    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/DataItemBase;->restoreArrayMap(Landroidx/collection/SimpleArrayMap;)V

    :cond_1
    return-void
.end method

.method public startBackup(Lcom/android/camera/data/provider/DataProvider$ProviderEvent;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/data/provider/DataProvider$ProviderEvent;",
            ">(TP;I)V"
        }
    .end annotation

    return-void
.end method
