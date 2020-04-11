.class public abstract Lorg/bouncycastle/asn1/x509/r;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected Ga(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/asn1/F;->Aa(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public abstract tsu(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)Lorg/bouncycastle/asn1/vdb;
.end method

.method protected wtn(Ljava/lang/String;I)Lorg/bouncycastle/asn1/vdb;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_2

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x61

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x30

    shl-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x61

    add-int/lit8 v2, v2, 0xa

    shl-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-byte v2, p1, v0

    add-int/lit8 v1, v1, -0x30

    int-to-byte v1, v1

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_2

    :cond_1
    aget-byte v2, p1, v0

    add-int/lit8 v1, v1, -0x61

    add-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/bouncycastle/asn1/dma;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/dma;-><init>([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0
.end method
