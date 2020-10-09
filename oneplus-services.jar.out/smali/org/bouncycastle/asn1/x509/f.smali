.class public Lorg/bouncycastle/asn1/x509/f;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field Vta:Lorg/bouncycastle/asn1/bvj/tsu;

.field extensions:Lorg/bouncycastle/asn1/x509/ugm;

.field hwa:Lorg/bouncycastle/asn1/x509/h;

.field iwa:Lorg/bouncycastle/asn1/x509/h;

.field jwa:Lorg/bouncycastle/asn1/x509/c;

.field kwa:Lorg/bouncycastle/asn1/n;

.field lwa:Lorg/bouncycastle/asn1/n;

.field seq:Lorg/bouncycastle/asn1/obl;

.field serialNumber:Lorg/bouncycastle/asn1/ywr;

.field signature:Lorg/bouncycastle/asn1/x509/zta;

.field subject:Lorg/bouncycastle/asn1/bvj/tsu;

.field version:Lorg/bouncycastle/asn1/ywr;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 8

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/f;->seq:Lorg/bouncycastle/asn1/obl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/lqr;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/lqr;

    invoke-static {v1, v4}, Lorg/bouncycastle/asn1/ywr;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ywr;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/f;->version:Lorg/bouncycastle/asn1/ywr;

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/f;->version:Lorg/bouncycastle/asn1/ywr;

    const/4 v1, -0x1

    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/f;->version:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v0

    move v2, v4

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/f;->version:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    move v3, v4

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/f;->version:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v5, 0x2

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v0

    move v3, v2

    :goto_1
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/asn1/x509/f;->serialNumber:Lorg/bouncycastle/asn1/ywr;

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/asn1/x509/f;->signature:Lorg/bouncycastle/asn1/x509/zta;

    add-int/lit8 v5, v1, 0x3

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/asn1/x509/f;->Vta:Lorg/bouncycastle/asn1/bvj/tsu;

    add-int/lit8 v5, v1, 0x4

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/obl;

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/h;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/h;

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/asn1/x509/f;->hwa:Lorg/bouncycastle/asn1/x509/h;

    invoke-virtual {v5, v4}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/h;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/h;

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/asn1/x509/f;->iwa:Lorg/bouncycastle/asn1/x509/h;

    add-int/lit8 v5, v1, 0x5

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/asn1/x509/f;->subject:Lorg/bouncycastle/asn1/bvj/tsu;

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/c;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/c;

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/asn1/x509/f;->jwa:Lorg/bouncycastle/asn1/x509/c;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    if-eqz v5, :cond_4

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "version 1 certificate contains extra data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    if-lez v5, :cond_9

    add-int v2, v1, v5

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/lqr;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v6

    if-eq v6, v4, :cond_8

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    if-nez v3, :cond_5

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/ugm;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/f;->extensions:Lorg/bouncycastle/asn1/x509/ugm;

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "version 2 certificate cannot contain extensions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown tag encountered in structure: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/n;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/n;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/f;->lwa:Lorg/bouncycastle/asn1/n;

    goto :goto_3

    :cond_8
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/n;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/n;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/f;->kwa:Lorg/bouncycastle/asn1/n;

    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_9
    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "version number not recognised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/f;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/f;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/f;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/f;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/f;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/f;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/f;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Gi()Lorg/bouncycastle/asn1/n;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/f;->kwa:Lorg/bouncycastle/asn1/n;

    return-object p0
.end method

.method public Hi()Lorg/bouncycastle/asn1/n;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/f;->lwa:Lorg/bouncycastle/asn1/n;

    return-object p0
.end method

.method public Zh()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/f;->version:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getEndDate()Lorg/bouncycastle/asn1/x509/h;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/f;->iwa:Lorg/bouncycastle/asn1/x509/h;

    return-object p0
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/ugm;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/f;->extensions:Lorg/bouncycastle/asn1/x509/ugm;

    return-object p0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/f;->Vta:Lorg/bouncycastle/asn1/bvj/tsu;

    return-object p0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/f;->serialNumber:Lorg/bouncycastle/asn1/ywr;

    return-object p0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/f;->signature:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public getStartDate()Lorg/bouncycastle/asn1/x509/h;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/f;->hwa:Lorg/bouncycastle/asn1/x509/h;

    return-object p0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/f;->subject:Lorg/bouncycastle/asn1/bvj/tsu;

    return-object p0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/f;->version:Lorg/bouncycastle/asn1/ywr;

    return-object p0
.end method

.method public qh()Lorg/bouncycastle/asn1/x509/c;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/f;->jwa:Lorg/bouncycastle/asn1/x509/c;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/f;->seq:Lorg/bouncycastle/asn1/obl;

    return-object p0
.end method
