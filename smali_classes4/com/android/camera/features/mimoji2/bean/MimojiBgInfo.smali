.class public Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;
.super Ljava/lang/Object;
.source "MimojiBgInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

.field private mFrame:I

.field private mIsSelected:Z

.field private mLastRefreshTime:J

.field private mResourceId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mFrame:I

    .line 3
    iput v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mFrame:I

    return-void
.end method

.method public constructor <init>(Lcom/arcsoft/avatar2/BackgroundInfo;I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mFrame:I

    .line 6
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    .line 7
    iput p2, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mResourceId:I

    .line 8
    iput v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mFrame:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    invoke-direct {v0}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->setBackgroundInfo(Lcom/arcsoft/avatar2/BackgroundInfo;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->getResourceId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->setResourceId(I)V

    const/4 p0, 0x0

    .line 5
    iput p0, v0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mFrame:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->clone()Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    return-object p0
.end method

.method public getIsNeedRefresh()Z
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 3
    :cond_0
    iget-wide v4, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mLastRefreshTime:J

    sub-long v4, v0, v4

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/BackgroundInfo;->getDelayMillis()I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    iget v2, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mFrame:I

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    return v3

    .line 4
    :cond_2
    :goto_0
    iput-wide v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mLastRefreshTime:J

    const/4 p0, 0x1

    return p0
.end method

.method public getRefreshTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mLastRefreshTime:J

    return-wide v0
.end method

.method public getResourceId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mResourceId:I

    return p0
.end method

.method public isSelected()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mIsSelected:Z

    return p0
.end method

.method public nextFrame()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mFrame:I

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/arcsoft/avatar2/BackgroundInfo;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    iget v1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mFrame:I

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/BackgroundInfo;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mFrame:I

    .line 6
    :cond_0
    iget v1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mFrame:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mFrame:I

    :goto_0
    return v0
.end method

.method public setBackgroundInfo(Lcom/arcsoft/avatar2/BackgroundInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mBackgroundInfo:Lcom/arcsoft/avatar2/BackgroundInfo;

    return-void
.end method

.method public setRefreshTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mLastRefreshTime:J

    return-void
.end method

.method public setResourceId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mResourceId:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;->mIsSelected:Z

    return-void
.end method
