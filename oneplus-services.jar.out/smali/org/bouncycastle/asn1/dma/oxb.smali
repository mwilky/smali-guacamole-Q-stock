.class public Lorg/bouncycastle/asn1/dma/oxb;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private modulus:Ljava/math/BigInteger;

.field private ota:Ljava/math/BigInteger;

.field private privateExponent:Ljava/math/BigInteger;

.field private pta:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;

.field private qta:Ljava/math/BigInteger;

.field private rta:Ljava/math/BigInteger;

.field private sta:Ljava/math/BigInteger;

.field private tta:Lorg/bouncycastle/asn1/obl;

.field private version:I


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/oxb;->tta:Lorg/bouncycastle/asn1/obl;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/dma/oxb;->version:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/oxb;->modulus:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/asn1/dma/oxb;->publicExponent:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/bouncycastle/asn1/dma/oxb;->privateExponent:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/bouncycastle/asn1/dma/oxb;->ota:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/bouncycastle/asn1/dma/oxb;->pta:Ljava/math/BigInteger;

    iput-object p6, p0, Lorg/bouncycastle/asn1/dma/oxb;->qta:Ljava/math/BigInteger;

    iput-object p7, p0, Lorg/bouncycastle/asn1/dma/oxb;->rta:Ljava/math/BigInteger;

    iput-object p8, p0, Lorg/bouncycastle/asn1/dma/oxb;->sta:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/oxb;->tta:Lorg/bouncycastle/asn1/obl;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Sg()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong version for RSA private key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/dma/oxb;->version:I

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/oxb;->modulus:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/oxb;->publicExponent:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/oxb;->privateExponent:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/oxb;->ota:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/oxb;->pta:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/oxb;->qta:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/oxb;->rta:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/oxb;->sta:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/obl;

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/oxb;->tta:Lorg/bouncycastle/asn1/obl;

    :cond_2
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/oxb;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/oxb;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/oxb;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/obl;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/oxb;

    check-cast p0, Lorg/bouncycastle/asn1/obl;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/oxb;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/dma/oxb;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/dma/oxb;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/oxb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Bh()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/oxb;->sta:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Ch()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/oxb;->qta:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Dh()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/oxb;->rta:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Eh()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/oxb;->ota:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Fh()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/oxb;->pta:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/oxb;->modulus:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/oxb;->privateExponent:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/oxb;->publicExponent:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/asn1/dma/oxb;->version:I

    return p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    iget v2, p0, Lorg/bouncycastle/asn1/dma/oxb;->version:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/oxb;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/oxb;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/oxb;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/oxb;->Eh()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/oxb;->Fh()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/oxb;->Ch()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/oxb;->Dh()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/oxb;->Bh()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/oxb;->tta:Lorg/bouncycastle/asn1/obl;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
