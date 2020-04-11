.class final Lcom/google/protobuf/Utf8$SafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method private static partialIsValidUtf8([BII)I
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_0

    aget-byte v0, p0, p1

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-lt p1, p2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8NonAscii([BII)I

    move-result v0

    :goto_1
    return v0
.end method

.method private static partialIsValidUtf8NonAscii([BII)I
    .locals 6

    :goto_0
    if-lt p1, p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    move v1, p1

    if-gez p1, :cond_d

    const/16 p1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v1, p1, :cond_3

    if-lt v0, p2, :cond_1

    return v1

    :cond_1
    const/16 p1, -0x3e

    if-lt v1, p1, :cond_2

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    if-le v0, v3, :cond_b

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    return v2

    :cond_3
    const/16 v4, -0x10

    if-ge v1, v4, :cond_8

    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_4

    invoke-static {p0, v0, p2}, Lcom/google/protobuf/Utf8;->access$500([BII)I

    move-result p1

    return p1

    :cond_4
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p0, v0

    move v5, v0

    if-gt v0, v3, :cond_7

    const/16 v0, -0x60

    if-ne v1, p1, :cond_5

    if-lt v5, v0, :cond_7

    :cond_5
    const/16 p1, -0x13

    if-ne v1, p1, :cond_6

    if-ge v5, v0, :cond_7

    :cond_6
    add-int/lit8 p1, v4, 0x1

    aget-byte v0, p0, v4

    if-le v0, v3, :cond_b

    goto :goto_2

    :cond_7
    move p1, v4

    :goto_2
    return v2

    :cond_8
    add-int/lit8 p1, p2, -0x2

    if-lt v0, p1, :cond_9

    invoke-static {p0, v0, p2}, Lcom/google/protobuf/Utf8;->access$500([BII)I

    move-result p1

    return p1

    :cond_9
    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    move v4, v0

    if-gt v0, v3, :cond_a

    shl-int/lit8 v0, v1, 0x1c

    add-int/lit8 v5, v4, 0x70

    add-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_a

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-gt p1, v3, :cond_c

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    if-le v0, v3, :cond_b

    :cond_a
    goto :goto_3

    :cond_b
    goto :goto_0

    :cond_c
    move p1, v0

    :goto_3
    return v2

    :cond_d
    move p1, v0

    goto :goto_0
.end method


# virtual methods
.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .locals 10

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v1, p3

    const/4 v2, 0x0

    add-int v3, p3, p4

    :goto_0
    const/16 v4, 0x80

    if-ge v2, v0, :cond_0

    add-int v5, v2, v1

    if-ge v5, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v6, v5

    if-ge v5, v4, :cond_0

    add-int v4, v1, v2

    int-to-byte v5, v6

    aput-byte v5, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    add-int v4, v1, v0

    return v4

    :cond_1
    add-int/2addr v1, v2

    :goto_1
    if-ge v2, v0, :cond_a

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ge v5, v4, :cond_2

    if-ge v1, v3, :cond_2

    add-int/lit8 v6, v1, 0x1

    int-to-byte v7, v5

    aput-byte v7, p2, v1

    move v1, v6

    goto/16 :goto_2

    :cond_2
    const/16 v6, 0x800

    if-ge v5, v6, :cond_3

    add-int/lit8 v6, v3, -0x2

    if-gt v1, v6, :cond_3

    add-int/lit8 v6, v1, 0x1

    ushr-int/lit8 v7, v5, 0x6

    or-int/lit16 v7, v7, 0x3c0

    int-to-byte v7, v7

    aput-byte v7, p2, v1

    add-int/lit8 v1, v6, 0x1

    and-int/lit8 v7, v5, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p2, v6

    goto :goto_2

    :cond_3
    const v6, 0xdfff

    const v7, 0xd800

    if-lt v5, v7, :cond_4

    if-ge v6, v5, :cond_5

    :cond_4
    add-int/lit8 v8, v3, -0x3

    if-gt v1, v8, :cond_5

    add-int/lit8 v6, v1, 0x1

    ushr-int/lit8 v7, v5, 0xc

    or-int/lit16 v7, v7, 0x1e0

    int-to-byte v7, v7

    aput-byte v7, p2, v1

    add-int/lit8 v1, v6, 0x1

    ushr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p2, v6

    add-int/lit8 v6, v1, 0x1

    and-int/lit8 v7, v5, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p2, v1

    move v1, v6

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v3, -0x4

    const/4 v9, 0x0

    if-gt v1, v8, :cond_7

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eq v6, v7, :cond_6

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v7, v6

    invoke-static {v5, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v5, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    add-int/lit8 v8, v1, 0x1

    ushr-int/lit8 v9, v6, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, p2, v1

    add-int/lit8 v1, v8, 0x1

    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    add-int/lit8 v8, v1, 0x1

    ushr-int/lit8 v9, v6, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p2, v1

    add-int/lit8 v1, v8, 0x1

    and-int/lit8 v9, v6, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    nop

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    new-instance v4, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v6, v2, -0x1

    invoke-direct {v4, v6, v0, v9}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(IILcom/google/protobuf/Utf8$1;)V

    throw v4

    :cond_7
    if-gt v7, v5, :cond_9

    if-gt v5, v6, :cond_9

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v4, v6, :cond_8

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    new-instance v4, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v4, v2, v0, v9}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(IILcom/google/protobuf/Utf8$1;)V

    throw v4

    :cond_9
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed writing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, " at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    return v1
.end method

.method encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Utf8$SafeProcessor;->encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method partialIsValidUtf8(I[BII)I
    .locals 7

    if-eqz p1, :cond_10

    if-lt p3, p4, :cond_0

    return p1

    :cond_0
    int-to-byte v0, p1

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_2

    const/16 v1, -0x3e

    if-lt v0, v1, :cond_1

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, p2, p3

    if-le p3, v3, :cond_11

    move p3, v1

    :cond_1
    return v2

    :cond_2
    const/16 v4, -0x10

    if-ge v0, v4, :cond_9

    shr-int/lit8 v4, p1, 0x8

    not-int v4, v4

    int-to-byte v4, v4

    if-nez v4, :cond_4

    add-int/lit8 v5, p3, 0x1

    aget-byte v4, p2, p3

    if-lt v5, p4, :cond_3

    invoke-static {v0, v4}, Lcom/google/protobuf/Utf8;->access$100(II)I

    move-result p3

    return p3

    :cond_3
    move p3, v5

    :cond_4
    if-gt v4, v3, :cond_8

    const/16 v5, -0x60

    if-ne v0, v1, :cond_5

    if-lt v4, v5, :cond_8

    :cond_5
    const/16 v1, -0x13

    if-ne v0, v1, :cond_6

    if-ge v4, v5, :cond_8

    :cond_6
    add-int/lit8 v1, p3, 0x1

    aget-byte p3, p2, p3

    if-le p3, v3, :cond_7

    move p3, v1

    goto :goto_0

    :cond_7
    goto :goto_3

    :cond_8
    :goto_0
    return v2

    :cond_9
    shr-int/lit8 v1, p1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    const/4 v4, 0x0

    if-nez v1, :cond_b

    add-int/lit8 v5, p3, 0x1

    aget-byte v1, p2, p3

    if-lt v5, p4, :cond_a

    invoke-static {v0, v1}, Lcom/google/protobuf/Utf8;->access$100(II)I

    move-result p3

    return p3

    :cond_a
    move p3, v5

    goto :goto_1

    :cond_b
    shr-int/lit8 v5, p1, 0x10

    int-to-byte v4, v5

    :goto_1
    if-nez v4, :cond_d

    add-int/lit8 v5, p3, 0x1

    aget-byte v4, p2, p3

    if-lt v5, p4, :cond_c

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Utf8;->access$200(III)I

    move-result p3

    return p3

    :cond_c
    move p3, v5

    :cond_d
    if-gt v1, v3, :cond_f

    shl-int/lit8 v5, v0, 0x1c

    add-int/lit8 v6, v1, 0x70

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1e

    if-nez v5, :cond_f

    if-gt v4, v3, :cond_f

    add-int/lit8 v5, p3, 0x1

    aget-byte p3, p2, p3

    if-le p3, v3, :cond_e

    move p3, v5

    goto :goto_2

    :cond_e
    move v1, v5

    goto :goto_3

    :cond_f
    :goto_2
    return v2

    :cond_10
    move v1, p3

    :cond_11
    :goto_3
    invoke-static {p2, v1, p4}, Lcom/google/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8([BII)I

    move-result p3

    return p3
.end method

.method partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method
