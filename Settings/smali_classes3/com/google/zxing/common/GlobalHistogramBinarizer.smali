.class public Lcom/google/zxing/common/GlobalHistogramBinarizer;
.super Lcom/google/zxing/Binarizer;
.source "GlobalHistogramBinarizer.java"


# static fields
.field private static final EMPTY:[B

.field private static final LUMINANCE_BITS:I = 0x5

.field private static final LUMINANCE_BUCKETS:I = 0x20

.field private static final LUMINANCE_SHIFT:I = 0x3


# instance fields
.field private final buckets:[I

.field private luminances:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/zxing/Binarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    sget-object v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->EMPTY:[B

    iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    return-void
.end method

.method private static estimateBlackPoint([I)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    aget v5, p0, v4

    if-le v5, v3, :cond_0

    move v2, v4

    aget v3, p0, v4

    :cond_0
    aget v5, p0, v4

    if-le v5, v1, :cond_1

    aget v1, p0, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_4

    sub-int v7, v6, v2

    aget v8, p0, v6

    mul-int/2addr v8, v7

    mul-int/2addr v8, v7

    if-le v8, v5, :cond_3

    move v4, v6

    move v5, v8

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-le v2, v4, :cond_5

    move v6, v2

    move v2, v4

    move v4, v6

    :cond_5
    sub-int v6, v4, v2

    shr-int/lit8 v7, v0, 0x4

    if-le v6, v7, :cond_8

    add-int/lit8 v6, v4, -0x1

    const/4 v7, -0x1

    add-int/lit8 v8, v4, -0x1

    :goto_2
    if-le v8, v2, :cond_7

    sub-int v9, v8, v2

    mul-int v10, v9, v9

    sub-int v11, v4, v8

    mul-int/2addr v10, v11

    aget v11, p0, v8

    sub-int v11, v1, v11

    mul-int/2addr v10, v11

    if-le v10, v7, :cond_6

    move v6, v8

    move v7, v10

    :cond_6
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_7
    shl-int/lit8 v8, v6, 0x3

    return v8

    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method private initArrays(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .locals 1

    new-instance v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v2

    new-instance v3, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v3, v1, v2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    invoke-direct {p0, v1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->initArrays(I)V

    iget-object v4, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x5

    if-ge v5, v6, :cond_1

    mul-int v7, v2, v5

    div-int/2addr v7, v6

    iget-object v8, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    invoke-virtual {v0, v7, v8}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v8

    shl-int/lit8 v9, v1, 0x2

    div-int/2addr v9, v6

    div-int/lit8 v6, v1, 0x5

    :goto_1
    if-ge v6, v9, :cond_0

    aget-byte v10, v8, v6

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v11, v10, 0x3

    aget v12, v4, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v4, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->estimateBlackPoint([I)I

    move-result v5

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_4

    mul-int v8, v7, v1

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v1, :cond_3

    add-int v10, v8, v9

    aget-byte v10, v6, v10

    and-int/lit16 v10, v10, 0xff

    if-ge v10, v5, :cond_2

    invoke-virtual {v3, v9, v7}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    return-object v3
.end method

.method public getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    move-object p2, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->initArrays(I)V

    iget-object v2, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    invoke-virtual {v0, p1, v2}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x1

    if-ge v4, v1, :cond_2

    aget-byte v6, v2, v4

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v6, 0x3

    aget v8, v3, v7

    add-int/2addr v8, v5

    aput v8, v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->estimateBlackPoint([I)I

    move-result v4

    const/4 v6, 0x0

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, v2, v5

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x1

    :goto_3
    add-int/lit8 v9, v1, -0x1

    if-ge v8, v9, :cond_4

    add-int/lit8 v9, v8, 0x1

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v10, v7, 0x2

    sub-int/2addr v10, v6

    sub-int/2addr v10, v9

    shr-int/2addr v10, v5

    if-ge v10, v4, :cond_3

    invoke-virtual {p2, v8}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_3
    move v6, v7

    move v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    return-object p2
.end method
