.class final Lcom/google/zxing/qrcode/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
    .locals 16

    move-object/from16 v0, p0

    array-length v1, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v2

    if-ne v1, v2, :cond_b

    invoke-virtual/range {p1 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    move-object v4, v3

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v8

    add-int/2addr v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-array v4, v2, [Lcom/google/zxing/qrcode/decoder/DataBlock;

    const/4 v5, 0x0

    move-object v6, v3

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_1

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v11

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v12

    add-int/2addr v12, v11

    add-int/lit8 v13, v5, 0x1

    new-instance v14, Lcom/google/zxing/qrcode/decoder/DataBlock;

    new-array v15, v12, [B

    invoke-direct {v14, v11, v15}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v14, v4, v5

    add-int/lit8 v10, v10, 0x1

    move v5, v13

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    aget-object v7, v4, v6

    iget-object v7, v7, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length v7, v7

    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    :goto_3
    if-ltz v8, :cond_4

    aget-object v9, v4, v8

    iget-object v9, v9, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length v9, v9

    if-ne v9, v7, :cond_3

    goto :goto_4

    :cond_3
    nop

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v9

    sub-int v9, v7, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v9, :cond_6

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v5, :cond_5

    aget-object v13, v4, v12

    iget-object v13, v13, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v14, v10, 0x1

    aget-byte v10, v0, v10

    aput-byte v10, v13, v11

    add-int/lit8 v12, v12, 0x1

    move v10, v14

    goto :goto_6

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    move v11, v8

    :goto_7
    if-ge v11, v5, :cond_7

    aget-object v12, v4, v11

    iget-object v12, v12, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v13, v10, 0x1

    aget-byte v10, v0, v10

    aput-byte v10, v12, v9

    add-int/lit8 v11, v11, 0x1

    move v10, v13

    goto :goto_7

    :cond_7
    aget-object v6, v4, v6

    iget-object v6, v6, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length v6, v6

    move v11, v9

    :goto_8
    if-ge v11, v6, :cond_a

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v5, :cond_9

    if-ge v12, v8, :cond_8

    move v13, v11

    goto :goto_a

    :cond_8
    add-int/lit8 v13, v11, 0x1

    :goto_a
    aget-object v14, v4, v12

    iget-object v14, v14, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v15, v10, 0x1

    aget-byte v10, v0, v10

    aput-byte v10, v14, v13

    add-int/lit8 v12, v12, 0x1

    move v10, v15

    goto :goto_9

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_a
    return-object v4

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
