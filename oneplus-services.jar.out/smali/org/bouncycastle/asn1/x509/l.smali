.class public Lorg/bouncycastle/asn1/x509/l;
.super Lorg/bouncycastle/asn1/oif;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/x509/t;
.implements Lorg/bouncycastle/asn1/dma/gwm;


# instance fields
.field Xka:Lorg/bouncycastle/asn1/n;

.field eta:Lorg/bouncycastle/asn1/x509/zta;

.field eua:Lorg/bouncycastle/asn1/x509/g;

.field seq:Lorg/bouncycastle/asn1/obl;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/l;->seq:Lorg/bouncycastle/asn1/obl;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/g;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/g;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/l;->eua:Lorg/bouncycastle/asn1/x509/g;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/l;->eta:Lorg/bouncycastle/asn1/x509/zta;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/n;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/l;->Xka:Lorg/bouncycastle/asn1/n;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sequence wrong size for a certificate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/l;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/l;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/l;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/l;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/l;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/l;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/l;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ah()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/l;->eta:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public getEndDate()Lorg/bouncycastle/asn1/x509/h;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/l;->eua:Lorg/bouncycastle/asn1/x509/g;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/g;->getEndDate()Lorg/bouncycastle/asn1/x509/h;

    move-result-object p0

    return-object p0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/l;->eua:Lorg/bouncycastle/asn1/x509/g;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/g;->getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    return-object p0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/l;->eua:Lorg/bouncycastle/asn1/x509/g;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/g;->getSerialNumber()Lorg/bouncycastle/asn1/ywr;

    move-result-object p0

    return-object p0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/n;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/l;->Xka:Lorg/bouncycastle/asn1/n;

    return-object p0
.end method

.method public getStartDate()Lorg/bouncycastle/asn1/x509/h;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/l;->eua:Lorg/bouncycastle/asn1/x509/g;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/g;->getStartDate()Lorg/bouncycastle/asn1/x509/h;

    move-result-object p0

    return-object p0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/l;->eua:Lorg/bouncycastle/asn1/x509/g;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/g;->getSubject()Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    return-object p0
.end method

.method public getTBSCertificate()Lorg/bouncycastle/asn1/x509/g;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/l;->eua:Lorg/bouncycastle/asn1/x509/g;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/l;->eua:Lorg/bouncycastle/asn1/x509/g;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/g;->getVersion()I

    move-result p0

    return p0
.end method

.method public qh()Lorg/bouncycastle/asn1/x509/c;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/l;->eua:Lorg/bouncycastle/asn1/x509/g;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/g;->qh()Lorg/bouncycastle/asn1/x509/c;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/l;->seq:Lorg/bouncycastle/asn1/obl;

    return-object p0
.end method
