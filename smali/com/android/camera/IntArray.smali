.class public Lcom/android/camera/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field private mData:[I

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 22
    iput-object v0, p0, Lcom/android/camera/IntArray;->mData:[I

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/android/camera/IntArray;->mSize:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/android/camera/IntArray;->mData:[I

    array-length v1, v0

    iget v2, p0, Lcom/android/camera/IntArray;->mSize:I

    if-ne v1, v2, :cond_0

    add-int v1, v2, v2

    .line 27
    new-array v1, v1, [I

    const/4 v3, 0x0

    .line 28
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iput-object v1, p0, Lcom/android/camera/IntArray;->mData:[I

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/camera/IntArray;->mData:[I

    iget v1, p0, Lcom/android/camera/IntArray;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/camera/IntArray;->mSize:I

    aput p1, v0, v1

    return-void
.end method

.method public size()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/camera/IntArray;->mSize:I

    return p0
.end method

.method public toArray([I)[I
    .locals 2

    if-eqz p1, :cond_0

    .line 39
    array-length v0, p1

    iget v1, p0, Lcom/android/camera/IntArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 40
    :cond_0
    iget p1, p0, Lcom/android/camera/IntArray;->mSize:I

    new-array p1, p1, [I

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/camera/IntArray;->mData:[I

    iget p0, p0, Lcom/android/camera/IntArray;->mSize:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
