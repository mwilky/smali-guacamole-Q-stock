.class public Lorg/bouncycastle/asn1/hmo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final Hka:[[B

.field private final Mka:Ljava/io/InputStream;

.field private final Nka:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ia;->you(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/hmo;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/hmo;->Mka:Ljava/io/InputStream;

    iput p2, p0, Lorg/bouncycastle/asn1/hmo;->Nka:I

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/hmo;->Hka:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/hmo;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private hb(Z)V
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/asn1/hmo;->Mka:Ljava/io/InputStream;

    instance-of v0, p0, Lorg/bouncycastle/asn1/da;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/da;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/da;->U(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method cj()Lorg/bouncycastle/asn1/cno;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/hmo;->readObject()Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lorg/bouncycastle/asn1/ca;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/bouncycastle/asn1/ca;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ca;->cno()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method ga(I)Lorg/bouncycastle/asn1/ssp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/g;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/g;-><init>(Lorg/bouncycastle/asn1/hmo;)V

    return-object p1

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/ASN1Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown BER object encountered: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/e;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/e;-><init>(Lorg/bouncycastle/asn1/hmo;)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/asn1/s;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/s;-><init>(Lorg/bouncycastle/asn1/hmo;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/asn1/b;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/b;-><init>(Lorg/bouncycastle/asn1/hmo;)V

    return-object p1
.end method

.method public readObject()Lorg/bouncycastle/asn1/ssp;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/hmo;->Mka:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/hmo;->hb(Z)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/hmo;->Mka:Ljava/io/InputStream;

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/dma;->you(Ljava/io/InputStream;I)I

    move-result v2

    and-int/lit8 v3, v0, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v1, v4

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/asn1/hmo;->Mka:Ljava/io/InputStream;

    iget v5, p0, Lorg/bouncycastle/asn1/hmo;->Nka:I

    invoke-static {v3, v5}, Lorg/bouncycastle/asn1/dma;->zta(Ljava/io/InputStream;I)I

    move-result v3

    if-gez v3, :cond_5

    if-eqz v1, :cond_4

    new-instance v1, Lorg/bouncycastle/asn1/da;

    iget-object v3, p0, Lorg/bouncycastle/asn1/hmo;->Mka:Ljava/io/InputStream;

    iget v5, p0, Lorg/bouncycastle/asn1/hmo;->Nka:I

    invoke-direct {v1, v3, v5}, Lorg/bouncycastle/asn1/da;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Lorg/bouncycastle/asn1/hmo;

    iget p0, p0, Lorg/bouncycastle/asn1/hmo;->Nka:I

    invoke-direct {v3, v1, p0}, Lorg/bouncycastle/asn1/hmo;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 p0, v0, 0x40

    if-eqz p0, :cond_2

    new-instance p0, Lorg/bouncycastle/asn1/bud;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/asn1/bud;-><init>(ILorg/bouncycastle/asn1/hmo;)V

    return-object p0

    :cond_2
    and-int/lit16 p0, v0, 0x80

    if-eqz p0, :cond_3

    new-instance p0, Lorg/bouncycastle/asn1/i;

    invoke-direct {p0, v4, v2, v3}, Lorg/bouncycastle/asn1/i;-><init>(ZILorg/bouncycastle/asn1/hmo;)V

    return-object p0

    :cond_3
    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/hmo;->ga(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "indefinite-length primitive encoding encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance v4, Lorg/bouncycastle/asn1/ba;

    iget-object v5, p0, Lorg/bouncycastle/asn1/hmo;->Mka:Ljava/io/InputStream;

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/asn1/ba;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_6

    new-instance p0, Lorg/bouncycastle/asn1/T;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/asn1/T;-><init>(ZI[B)V

    return-object p0

    :cond_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    new-instance p0, Lorg/bouncycastle/asn1/i;

    new-instance v0, Lorg/bouncycastle/asn1/hmo;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/hmo;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/asn1/i;-><init>(ZILorg/bouncycastle/asn1/hmo;)V

    return-object p0

    :cond_7
    const/4 v0, 0x4

    if-eqz v1, :cond_c

    if-eq v2, v0, :cond_b

    const/16 p0, 0x8

    if-eq v2, p0, :cond_a

    const/16 p0, 0x10

    if-eq v2, p0, :cond_9

    const/16 p0, 0x11

    if-ne v2, p0, :cond_8

    new-instance p0, Lorg/bouncycastle/asn1/J;

    new-instance v0, Lorg/bouncycastle/asn1/hmo;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/hmo;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/J;-><init>(Lorg/bouncycastle/asn1/hmo;)V

    return-object p0

    :cond_8
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " encountered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lorg/bouncycastle/asn1/H;

    new-instance v0, Lorg/bouncycastle/asn1/hmo;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/hmo;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/H;-><init>(Lorg/bouncycastle/asn1/hmo;)V

    return-object p0

    :cond_a
    new-instance p0, Lorg/bouncycastle/asn1/s;

    new-instance v0, Lorg/bouncycastle/asn1/hmo;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/hmo;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/s;-><init>(Lorg/bouncycastle/asn1/hmo;)V

    return-object p0

    :cond_b
    new-instance p0, Lorg/bouncycastle/asn1/b;

    new-instance v0, Lorg/bouncycastle/asn1/hmo;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/hmo;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/b;-><init>(Lorg/bouncycastle/asn1/hmo;)V

    return-object p0

    :cond_c
    if-eq v2, v0, :cond_d

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/hmo;->Hka:[[B

    invoke-static {v2, v4, p0}, Lorg/bouncycastle/asn1/dma;->zta(ILorg/bouncycastle/asn1/ba;[[B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string v1, "corrupted stream detected"

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_d
    new-instance p0, Lorg/bouncycastle/asn1/D;

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/D;-><init>(Lorg/bouncycastle/asn1/ba;)V

    return-object p0
.end method

.method sis(ZI)Lorg/bouncycastle/asn1/ssp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/hmo;->Mka:Ljava/io/InputStream;

    instance-of v1, v0, Lorg/bouncycastle/asn1/da;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/hmo;->ga(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "indefinite-length primitive encoding encountered"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 v1, 0x11

    const/16 v2, 0x10

    const/4 v3, 0x4

    if-eqz p1, :cond_4

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_2

    if-ne p2, v1, :cond_5

    new-instance p1, Lorg/bouncycastle/asn1/J;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/J;-><init>(Lorg/bouncycastle/asn1/hmo;)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/asn1/H;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/H;-><init>(Lorg/bouncycastle/asn1/hmo;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/asn1/b;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/b;-><init>(Lorg/bouncycastle/asn1/hmo;)V

    return-object p1

    :cond_4
    if-eq p2, v3, :cond_8

    if-eq p2, v2, :cond_7

    if-eq p2, v1, :cond_6

    :cond_5
    new-instance p0, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string p1, "implicit tagging not implemented"

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string p1, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string p1, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lorg/bouncycastle/asn1/D;

    check-cast v0, Lorg/bouncycastle/asn1/ba;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/D;-><init>(Lorg/bouncycastle/asn1/ba;)V

    return-object p0
.end method

.method tsu(ZI)Lorg/bouncycastle/asn1/vdb;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/asn1/hmo;->Mka:Ljava/io/InputStream;

    check-cast p0, Lorg/bouncycastle/asn1/ba;

    new-instance p1, Lorg/bouncycastle/asn1/L;

    new-instance v1, Lorg/bouncycastle/asn1/C;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    invoke-direct {p1, v0, p2, v1}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/hmo;->cj()Lorg/bouncycastle/asn1/cno;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/asn1/hmo;->Mka:Ljava/io/InputStream;

    instance-of p0, p0, Lorg/bouncycastle/asn1/da;

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cno;->size()I

    move-result p0

    if-ne p0, v1, :cond_1

    new-instance p0, Lorg/bouncycastle/asn1/h;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/cno;->get(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-direct {p0, v1, p2, p1}, Lorg/bouncycastle/asn1/h;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/h;

    invoke-static {p1}, Lorg/bouncycastle/asn1/irq;->you(Lorg/bouncycastle/asn1/cno;)Lorg/bouncycastle/asn1/d;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lorg/bouncycastle/asn1/h;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cno;->size()I

    move-result p0

    if-ne p0, v1, :cond_3

    new-instance p0, Lorg/bouncycastle/asn1/L;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/cno;->get(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-direct {p0, v1, p2, p1}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/bouncycastle/asn1/L;

    invoke-static {p1}, Lorg/bouncycastle/asn1/t;->you(Lorg/bouncycastle/asn1/cno;)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    :goto_1
    return-object p0
.end method
