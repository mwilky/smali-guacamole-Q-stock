.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code128Writer.java"


# static fields
.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_B:I = 0x64

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final ESCAPE_FNC_1:C = '\u00f1'

.field private static final ESCAPE_FNC_2:C = '\u00f2'

.field private static final ESCAPE_FNC_3:C = '\u00f3'

.field private static final ESCAPE_FNC_4:C = '\u00f4'


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static isDigits(Ljava/lang/CharSequence;II)Z
    .locals 6

    add-int v0, p1, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, p1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_3

    if-ge v2, v1, :cond_3

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_0

    const/16 v5, 0x39

    if-le v4, v5, :cond_2

    :cond_0
    const/16 v5, 0xf1

    if-eq v4, v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-gt v0, v1, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only encode CODE_128, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_e

    const/16 v2, 0x50

    if-gt v0, v2, :cond_e

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v3, :cond_0

    const/16 v3, 0x7e

    if-le v4, v3, :cond_1

    :cond_0
    packed-switch v4, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad character in input: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    nop

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v0, :cond_a

    const/16 v9, 0x63

    if-ne v6, v9, :cond_3

    const/4 v9, 0x2

    goto :goto_2

    :cond_3
    const/4 v9, 0x4

    :goto_2
    invoke-static {p1, v7, v9}, Lcom/google/zxing/oned/Code128Writer;->isDigits(Ljava/lang/CharSequence;II)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x63

    goto :goto_3

    :cond_4
    const/16 v10, 0x64

    :goto_3
    const/16 v11, 0x64

    if-ne v10, v6, :cond_6

    if-ne v6, v11, :cond_5

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sub-int/2addr v8, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    packed-switch v11, :pswitch_data_1

    add-int/lit8 v11, v7, 0x2

    invoke-virtual {p1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v7, v7, 0x2

    goto :goto_5

    :pswitch_1
    const/16 v8, 0x64

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :pswitch_2
    const/16 v8, 0x60

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :pswitch_3
    const/16 v8, 0x61

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :pswitch_4
    const/16 v8, 0x66

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    if-nez v6, :cond_8

    if-ne v10, v11, :cond_7

    const/16 v8, 0x68

    goto :goto_4

    :cond_7
    const/16 v8, 0x69

    goto :goto_4

    :cond_8
    move v8, v10

    :goto_4
    move v6, v10

    :goto_5
    sget-object v11, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v11, v11, v8

    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    mul-int v11, v8, v5

    add-int/2addr v4, v11

    if-eqz v7, :cond_9

    add-int/lit8 v5, v5, 0x1

    :cond_9
    goto :goto_1

    :cond_a
    rem-int/lit8 v4, v4, 0x67

    sget-object v3, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v3, v3, v4

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v8, 0x6a

    aget-object v3, v3, v8

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    move-object v10, v9

    array-length v11, v10

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_b

    aget v13, v10, v12

    add-int/2addr v3, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_b
    goto :goto_6

    :cond_c
    new-array v8, v3, [Z

    const/4 v9, 0x0

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    invoke-static {v8, v9, v11, v1}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([ZI[IZ)I

    move-result v12

    add-int/2addr v9, v12

    goto :goto_8

    :cond_d
    return-object v8

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contents length should be between 1 and 80 characters, but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
