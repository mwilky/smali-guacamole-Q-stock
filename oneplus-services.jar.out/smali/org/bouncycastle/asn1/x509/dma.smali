.class public Lorg/bouncycastle/asn1/x509/dma;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field Ipa:Lorg/bouncycastle/asn1/x509/zta;

.field Iqa:Lorg/bouncycastle/asn1/x509/e;

.field yma:Z

.field zha:Lorg/bouncycastle/asn1/n;

.field zma:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/x509/dma;->yma:Z

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/e;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/e;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/dma;->Iqa:Lorg/bouncycastle/asn1/x509/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/dma;->Ipa:Lorg/bouncycastle/asn1/x509/zta;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/n;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/dma;->zha:Lorg/bouncycastle/asn1/n;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sequence wrong size for CertificateList"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/dma;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/dma;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/dma;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/dma;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/dma;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/dma;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/dma;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/dma;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Lh()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/dma;->Iqa:Lorg/bouncycastle/asn1/x509/e;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/e;->Lh()I

    move-result p0

    return p0
.end method

.method public Mh()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/dma;->Iqa:Lorg/bouncycastle/asn1/x509/e;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/e;->Mh()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public Ng()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/dma;->Ipa:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/dma;->Iqa:Lorg/bouncycastle/asn1/x509/e;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/e;->getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    return-object p0
.end method

.method public getNextUpdate()Lorg/bouncycastle/asn1/x509/h;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/dma;->Iqa:Lorg/bouncycastle/asn1/x509/e;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/e;->getNextUpdate()Lorg/bouncycastle/asn1/x509/h;

    move-result-object p0

    return-object p0
.end method

.method public getRevokedCertificates()[Lorg/bouncycastle/asn1/x509/e$zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/dma;->Iqa:Lorg/bouncycastle/asn1/x509/e;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/e;->getRevokedCertificates()[Lorg/bouncycastle/asn1/x509/e$zta;

    move-result-object p0

    return-object p0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/n;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/dma;->zha:Lorg/bouncycastle/asn1/n;

    return-object p0
.end method

.method public getTBSCertList()Lorg/bouncycastle/asn1/x509/e;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/dma;->Iqa:Lorg/bouncycastle/asn1/x509/e;

    return-object p0
.end method

.method public getThisUpdate()Lorg/bouncycastle/asn1/x509/h;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/dma;->Iqa:Lorg/bouncycastle/asn1/x509/e;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/e;->getThisUpdate()Lorg/bouncycastle/asn1/x509/h;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x509/dma;->yma:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/bouncycastle/asn1/oif;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/x509/dma;->zma:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/x509/dma;->yma:Z

    :cond_0
    iget p0, p0, Lorg/bouncycastle/asn1/x509/dma;->zma:I

    return p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/dma;->Iqa:Lorg/bouncycastle/asn1/x509/e;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/dma;->Ipa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/dma;->zha:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
