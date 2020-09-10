.class public Lorg/bouncycastle/asn1/x509/gck;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field Mka:Lorg/bouncycastle/asn1/n;

.field Usa:Lorg/bouncycastle/asn1/x509/zta;

.field Uta:Lorg/bouncycastle/asn1/x509/f;

.field seq:Lorg/bouncycastle/asn1/obl;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/gck;->seq:Lorg/bouncycastle/asn1/obl;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/f;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/f;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/gck;->Uta:Lorg/bouncycastle/asn1/x509/f;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/gck;->Usa:Lorg/bouncycastle/asn1/x509/zta;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/n;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/gck;->Mka:Lorg/bouncycastle/asn1/n;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sequence wrong size for a certificate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/gck;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/gck;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/gck;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/gck;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/gck;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/gck;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/gck;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/gck;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Xh()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/gck;->Uta:Lorg/bouncycastle/asn1/x509/f;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/f;->Xh()I

    move-result p0

    return p0
.end method

.method public Zg()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/gck;->Usa:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public getEndDate()Lorg/bouncycastle/asn1/x509/h;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/gck;->Uta:Lorg/bouncycastle/asn1/x509/f;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/f;->getEndDate()Lorg/bouncycastle/asn1/x509/h;

    move-result-object p0

    return-object p0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/gck;->Uta:Lorg/bouncycastle/asn1/x509/f;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/f;->getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    return-object p0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/gck;->Uta:Lorg/bouncycastle/asn1/x509/f;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/f;->getSerialNumber()Lorg/bouncycastle/asn1/ywr;

    move-result-object p0

    return-object p0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/n;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/gck;->Mka:Lorg/bouncycastle/asn1/n;

    return-object p0
.end method

.method public getStartDate()Lorg/bouncycastle/asn1/x509/h;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/gck;->Uta:Lorg/bouncycastle/asn1/x509/f;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/f;->getStartDate()Lorg/bouncycastle/asn1/x509/h;

    move-result-object p0

    return-object p0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/gck;->Uta:Lorg/bouncycastle/asn1/x509/f;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/f;->getSubject()Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    return-object p0
.end method

.method public getTBSCertificate()Lorg/bouncycastle/asn1/x509/f;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/gck;->Uta:Lorg/bouncycastle/asn1/x509/f;

    return-object p0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/gck;->Uta:Lorg/bouncycastle/asn1/x509/f;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/f;->getVersion()Lorg/bouncycastle/asn1/ywr;

    move-result-object p0

    return-object p0
.end method

.method public oh()Lorg/bouncycastle/asn1/x509/c;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/gck;->Uta:Lorg/bouncycastle/asn1/x509/f;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/f;->oh()Lorg/bouncycastle/asn1/x509/c;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/gck;->seq:Lorg/bouncycastle/asn1/obl;

    return-object p0
.end method
