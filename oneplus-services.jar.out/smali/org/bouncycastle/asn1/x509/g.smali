.class public Lorg/bouncycastle/asn1/x509/g;
.super Lorg/bouncycastle/asn1/oif;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/x509/t;
.implements Lorg/bouncycastle/asn1/dma/gwm;


# instance fields
.field Ksa:Lorg/bouncycastle/asn1/x509/h;

.field Lsa:Lorg/bouncycastle/asn1/x509/h;

.field Msa:Lorg/bouncycastle/asn1/x509/c;

.field Nsa:Lorg/bouncycastle/asn1/n;

.field Osa:Lorg/bouncycastle/asn1/n;

.field extensions:Lorg/bouncycastle/asn1/x509/o;

.field seq:Lorg/bouncycastle/asn1/obl;

.field serialNumber:Lorg/bouncycastle/asn1/ywr;

.field signature:Lorg/bouncycastle/asn1/x509/zta;

.field subject:Lorg/bouncycastle/asn1/bvj/tsu;

.field version:Lorg/bouncycastle/asn1/ywr;

.field xqa:Lorg/bouncycastle/asn1/bvj/tsu;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 7

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/g;->seq:Lorg/bouncycastle/asn1/obl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/L;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/lqr;

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/ywr;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ywr;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/g;->version:Lorg/bouncycastle/asn1/ywr;

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/g;->version:Lorg/bouncycastle/asn1/ywr;

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/g;->serialNumber:Lorg/bouncycastle/asn1/ywr;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/g;->signature:Lorg/bouncycastle/asn1/x509/zta;

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/g;->xqa:Lorg/bouncycastle/asn1/bvj/tsu;

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/obl;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/h;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/h;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/g;->Ksa:Lorg/bouncycastle/asn1/x509/h;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/h;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/h;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/g;->Lsa:Lorg/bouncycastle/asn1/x509/h;

    add-int/lit8 v3, v1, 0x5

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/g;->subject:Lorg/bouncycastle/asn1/bvj/tsu;

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/c;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/c;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/g;->Msa:Lorg/bouncycastle/asn1/x509/c;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    :goto_1
    if-lez v3, :cond_4

    add-int v4, v1, v3

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/L;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v5

    if-eq v5, v2, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/o;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/o;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/g;->extensions:Lorg/bouncycastle/asn1/x509/o;

    goto :goto_2

    :cond_2
    invoke-static {v4, v0}, Lorg/bouncycastle/asn1/n;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/n;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/g;->Osa:Lorg/bouncycastle/asn1/n;

    goto :goto_2

    :cond_3
    invoke-static {v4, v0}, Lorg/bouncycastle/asn1/n;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/n;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/g;->Nsa:Lorg/bouncycastle/asn1/n;

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/g;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/g;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/g;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/g;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/g;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/g;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/g;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Lh()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/g;->version:Lorg/bouncycastle/asn1/ywr;

    return-object p0
.end method

.method public ch()Lorg/bouncycastle/asn1/x509/c;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/g;->Msa:Lorg/bouncycastle/asn1/x509/c;

    return-object p0
.end method

.method public getEndDate()Lorg/bouncycastle/asn1/x509/h;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/g;->Lsa:Lorg/bouncycastle/asn1/x509/h;

    return-object p0
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/o;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/g;->extensions:Lorg/bouncycastle/asn1/x509/o;

    return-object p0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/g;->xqa:Lorg/bouncycastle/asn1/bvj/tsu;

    return-object p0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/g;->serialNumber:Lorg/bouncycastle/asn1/ywr;

    return-object p0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/g;->signature:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public getStartDate()Lorg/bouncycastle/asn1/x509/h;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/g;->Ksa:Lorg/bouncycastle/asn1/x509/h;

    return-object p0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/g;->subject:Lorg/bouncycastle/asn1/bvj/tsu;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/g;->version:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public si()Lorg/bouncycastle/asn1/n;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/g;->Nsa:Lorg/bouncycastle/asn1/n;

    return-object p0
.end method

.method public ti()Lorg/bouncycastle/asn1/n;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/g;->Osa:Lorg/bouncycastle/asn1/n;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/g;->seq:Lorg/bouncycastle/asn1/obl;

    return-object p0
.end method
