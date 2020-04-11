.class public Lorg/bouncycastle/asn1/v;
.super Lorg/bouncycastle/asn1/wtn;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/wtn;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/wtn;-><init>(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/wtn;-><init>([B)V

    return-void
.end method

.method private Zs()[B
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/asn1/wtn;->time:[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/wtn;->Cg()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/wtn;->time:[B

    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "0000Z"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/asn1/wtn;->time:[B

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    const/4 v3, 0x5

    :goto_0
    invoke-static {v0, v1, v2, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/wtn;->Dg()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/wtn;->time:[B

    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "00Z"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/asn1/wtn;->time:[B

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    const/4 v3, 0x3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/wtn;->Bg()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/asn1/wtn;->time:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    :goto_1
    if-lez v0, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/asn1/wtn;->time:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x30

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lorg/bouncycastle/asn1/wtn;->time:[B

    aget-byte v3, p0, v0

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [B

    invoke-static {p0, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v2, v3, v0

    return-object v3

    :cond_3
    add-int/lit8 v3, v0, 0x2

    new-array v3, v3, [B

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v2, v3, v0

    return-object v3

    :cond_4
    iget-object p0, p0, Lorg/bouncycastle/asn1/wtn;->time:[B

    return-object p0

    :cond_5
    return-object v0
.end method


# virtual methods
.method qg()I
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/v;->Zs()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ia;->ba(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method zta(Lorg/bouncycastle/asn1/ugm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/v;->Zs()[B

    move-result-object p0

    const/16 v0, 0x18

    invoke-virtual {p1, v0, p0}, Lorg/bouncycastle/asn1/ugm;->zta(I[B)V

    return-void
.end method
