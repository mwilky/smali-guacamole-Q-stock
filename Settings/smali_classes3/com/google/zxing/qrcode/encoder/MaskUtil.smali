.class final Lcom/google/zxing/qrcode/encoder/MaskUtil;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# static fields
.field private static final N1:I = 0x3

.field private static final N2:I = 0x3

.field private static final N3:I = 0x28

.field private static final N4:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_7

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x5

    if-ge v7, v2, :cond_5

    if-eqz p1, :cond_2

    aget-object v9, v3, v4

    aget-byte v9, v9, v7

    goto :goto_4

    :cond_2
    aget-object v9, v3, v7

    aget-byte v9, v9, v4

    :goto_4
    if-ne v9, v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    if-lt v5, v8, :cond_4

    add-int/lit8 v8, v5, -0x5

    add-int/lit8 v8, v8, 0x3

    add-int/2addr v0, v8

    :cond_4
    const/4 v5, 0x1

    move v6, v9

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    if-lt v5, v8, :cond_6

    add-int/lit8 v7, v5, -0x5

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v0, v7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    return v0
.end method

.method static applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_1

    aget-object v6, v1, v4

    aget-byte v6, v6, v5

    aget-object v7, v1, v4

    add-int/lit8 v8, v5, 0x1

    aget-byte v7, v7, v8

    if-ne v6, v7, :cond_0

    add-int/lit8 v7, v4, 0x1

    aget-object v7, v1, v7

    aget-byte v7, v7, v5

    if-ne v6, v7, :cond_0

    add-int/lit8 v7, v4, 0x1

    aget-object v7, v1, v7

    add-int/lit8 v8, v5, 0x1

    aget-byte v7, v7, v8

    if-ne v6, v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    mul-int/lit8 v4, v0, 0x3

    return v4
.end method

.method static applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_6

    add-int/lit8 v6, v5, 0x6

    const/4 v7, 0x1

    if-ge v6, v2, :cond_2

    aget-object v6, v1, v4

    aget-byte v6, v6, v5

    if-ne v6, v7, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x1

    aget-byte v6, v6, v8

    if-nez v6, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x2

    aget-byte v6, v6, v8

    if-ne v6, v7, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x3

    aget-byte v6, v6, v8

    if-ne v6, v7, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x4

    aget-byte v6, v6, v8

    if-ne v6, v7, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x5

    aget-byte v6, v6, v8

    if-nez v6, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x6

    aget-byte v6, v6, v8

    if-ne v6, v7, :cond_2

    add-int/lit8 v6, v5, 0xa

    if-ge v6, v2, :cond_0

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x7

    aget-byte v6, v6, v8

    if-nez v6, :cond_0

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x8

    aget-byte v6, v6, v8

    if-nez v6, :cond_0

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0x9

    aget-byte v6, v6, v8

    if-nez v6, :cond_0

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, 0xa

    aget-byte v6, v6, v8

    if-eqz v6, :cond_1

    :cond_0
    add-int/lit8 v6, v5, -0x4

    if-ltz v6, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, -0x1

    aget-byte v6, v6, v8

    if-nez v6, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, -0x2

    aget-byte v6, v6, v8

    if-nez v6, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, -0x3

    aget-byte v6, v6, v8

    if-nez v6, :cond_2

    aget-object v6, v1, v4

    add-int/lit8 v8, v5, -0x4

    aget-byte v6, v6, v8

    if-nez v6, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x28

    :cond_2
    add-int/lit8 v6, v4, 0x6

    if-ge v6, v3, :cond_5

    aget-object v6, v1, v4

    aget-byte v6, v6, v5

    if-ne v6, v7, :cond_5

    add-int/lit8 v6, v4, 0x1

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_5

    add-int/lit8 v6, v4, 0x2

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-ne v6, v7, :cond_5

    add-int/lit8 v6, v4, 0x3

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-ne v6, v7, :cond_5

    add-int/lit8 v6, v4, 0x4

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-ne v6, v7, :cond_5

    add-int/lit8 v6, v4, 0x5

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_5

    add-int/lit8 v6, v4, 0x6

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-ne v6, v7, :cond_5

    add-int/lit8 v6, v4, 0xa

    if-ge v6, v3, :cond_3

    add-int/lit8 v6, v4, 0x7

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_3

    add-int/lit8 v6, v4, 0x8

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_3

    add-int/lit8 v6, v4, 0x9

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_3

    add-int/lit8 v6, v4, 0xa

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-eqz v6, :cond_4

    :cond_3
    add-int/lit8 v6, v4, -0x4

    if-ltz v6, :cond_5

    add-int/lit8 v6, v4, -0x1

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_5

    add-int/lit8 v6, v4, -0x2

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_5

    add-int/lit8 v6, v4, -0x3

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_5

    add-int/lit8 v6, v4, -0x4

    aget-object v6, v1, v6

    aget-byte v6, v6, v5

    if-nez v6, :cond_5

    :cond_4
    add-int/lit8 v0, v0, 0x28

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    return v0
.end method

.method static applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_1

    aget-byte v7, v5, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-double v5, v0

    int-to-double v7, v4

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    sub-double v7, v5, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4034000000000000L    # 20.0

    mul-double/2addr v7, v9

    double-to-int v7, v7

    mul-int/lit8 v8, v7, 0xa

    return v8
.end method

.method static getDataMaskBit(III)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    move v1, v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mask pattern: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    move v2, v0

    move v3, v0

    mul-int v3, p2, p1

    rem-int/lit8 v4, v3, 0x3

    add-int v5, p2, p1

    and-int/2addr v5, v1

    add-int/2addr v4, v5

    and-int/lit8 v2, v4, 0x1

    goto :goto_0

    :pswitch_1
    move v2, v0

    move v3, v0

    mul-int v3, p2, p1

    and-int/lit8 v4, v3, 0x1

    rem-int/lit8 v5, v3, 0x3

    add-int/2addr v4, v5

    and-int/lit8 v2, v4, 0x1

    goto :goto_0

    :pswitch_2
    move v2, v0

    mul-int v3, p2, p1

    and-int/lit8 v4, v3, 0x1

    rem-int/lit8 v5, v3, 0x3

    add-int v2, v4, v5

    goto :goto_0

    :pswitch_3
    move v2, v0

    ushr-int/lit8 v3, p2, 0x1

    div-int/lit8 v4, p1, 0x3

    add-int/2addr v3, v4

    and-int/lit8 v2, v3, 0x1

    move v3, v0

    goto :goto_0

    :pswitch_4
    move v2, v0

    add-int v3, p2, p1

    rem-int/lit8 v2, v3, 0x3

    move v3, v0

    goto :goto_0

    :pswitch_5
    move v2, v0

    rem-int/lit8 v2, p1, 0x3

    move v3, v0

    goto :goto_0

    :pswitch_6
    move v2, v0

    and-int/lit8 v2, p2, 0x1

    move v3, v0

    goto :goto_0

    :pswitch_7
    add-int v2, p2, p1

    and-int/2addr v2, v1

    move v3, v0

    :goto_0
    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
