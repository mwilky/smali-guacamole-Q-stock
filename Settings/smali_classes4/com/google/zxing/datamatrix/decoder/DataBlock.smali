.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v3

    move-object v4, v3

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v8

    add-int/2addr v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-array v4, v2, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    const/4 v5, 0x0

    move-object v6, v3

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_1

    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v11

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v12

    add-int/2addr v12, v11

    add-int/lit8 v13, v5, 0x1

    new-instance v14, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    new-array v15, v12, [B

    invoke-direct {v14, v11, v15}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

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

    iget-object v7, v7, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v7, v7

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v8

    sub-int v8, v7, v8

    add-int/lit8 v9, v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v9, :cond_4

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v5, :cond_3

    aget-object v13, v4, v12

    iget-object v13, v13, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v14, v10, 0x1

    aget-byte v10, v0, v10

    aput-byte v10, v13, v11

    add-int/lit8 v12, v12, 0x1

    move v10, v14

    goto :goto_4

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result v11

    const/16 v12, 0x18

    if-ne v11, v12, :cond_5

    const/4 v11, 0x1

    goto :goto_5

    :cond_5
    move v11, v6

    :goto_5
    if-eqz v11, :cond_6

    const/16 v12, 0x8

    goto :goto_6

    :cond_6
    move v12, v5

    :goto_6
    const/4 v13, 0x0

    :goto_7
    if-ge v13, v12, :cond_7

    aget-object v14, v4, v13

    iget-object v14, v14, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v15, v8, -0x1

    add-int/lit8 v16, v10, 0x1

    aget-byte v10, v0, v10

    aput-byte v10, v14, v15

    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v16

    goto :goto_7

    :cond_7
    aget-object v6, v4, v6

    iget-object v6, v6, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v6, v6

    move v13, v8

    :goto_8
    if-ge v13, v6, :cond_a

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v5, :cond_9

    if-eqz v11, :cond_8

    const/4 v15, 0x7

    if-le v14, v15, :cond_8

    add-int/lit8 v15, v13, -0x1

    goto :goto_a

    :cond_8
    move v15, v13

    :goto_a
    move-object/from16 v16, v1

    aget-object v1, v4, v14

    iget-object v1, v1, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v17, v10, 0x1

    aget-byte v10, v0, v10

    aput-byte v10, v1, v15

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v16

    move/from16 v10, v17

    goto :goto_9

    :cond_9
    move-object/from16 v16, v1

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_a
    move-object/from16 v16, v1

    array-length v1, v0

    if-ne v10, v1, :cond_b

    return-object v4

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
