.class public Lcom/android/camera2/vendortag/struct/SuperNightEvValue;
.super Ljava/lang/Object;
.source "SuperNightEvValue.java"


# instance fields
.field private mSequenceNum:I

.field private mValue:[I


# direct methods
.method private constructor <init>(I[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->mSequenceNum:I

    .line 3
    iput-object p2, p0, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->mValue:[I

    return-void
.end method

.method public static parseSuperNightEvValue([BLjava/lang/String;)Lcom/android/camera2/vendortag/struct/SuperNightEvValue;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string p0, ","

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    array-length v1, p0

    .line 4
    new-array p1, v1, [I

    .line 5
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 6
    :try_start_0
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, p1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 8
    array-length p1, p0

    if-lez p1, :cond_1

    .line 9
    aget-byte v1, p0, v0

    .line 10
    new-array p1, v1, [I

    const/4 v0, 0x1

    :goto_2
    if-ge v0, v1, :cond_2

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v0, 0x4

    .line 11
    aget-byte v3, p0, v3

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    new-array p1, v1, [I

    .line 12
    fill-array-data p1, :array_0

    .line 13
    :cond_2
    new-instance p0, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-direct {p0, v1, p1}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;-><init>(I[I)V

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x12
        -0xc
        -0x6
        0x0
        0x6
        0x6
        0x6
        0x6
    .end array-data
.end method


# virtual methods
.method public getSequenceNum()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->mSequenceNum:I

    return p0
.end method

.method public getValue()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->mValue:[I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->mSequenceNum:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->mValue:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const-string v1, "["

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->mValue:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5
    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->mValue:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ","

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
