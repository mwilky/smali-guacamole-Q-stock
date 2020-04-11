.class public Lorg/bouncycastle/asn1/dma/bio;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field data:Lorg/bouncycastle/asn1/obl;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/ssp;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/zta;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p1, Lorg/bouncycastle/asn1/h;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p3}, Lorg/bouncycastle/asn1/h;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p1, Lorg/bouncycastle/asn1/d;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/d;-><init>(Lorg/bouncycastle/asn1/cno;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/bio;->data:Lorg/bouncycastle/asn1/obl;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/bio;->data:Lorg/bouncycastle/asn1/obl;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sequence not version 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/bio;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/bio;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/bio;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/bio;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/bio;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/asn1/ibl;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dma/bio;->data:Lorg/bouncycastle/asn1/obl;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/bio;->data:Lorg/bouncycastle/asn1/obl;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/lqr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/lqr;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ibl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ibl;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/bvj;
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/bio;->data:Lorg/bouncycastle/asn1/obl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/bvj;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    return-object p0
.end method

.method public getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/zta;
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/bio;->data:Lorg/bouncycastle/asn1/obl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/bio;->data:Lorg/bouncycastle/asn1/obl;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/d;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/d;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
