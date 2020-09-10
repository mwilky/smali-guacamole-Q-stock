.class public Lorg/bouncycastle/asn1/dma/ibl;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field bta:Lorg/bouncycastle/asn1/ywr;

.field iv:Lorg/bouncycastle/asn1/ibl;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ibl;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/ibl;->iv:Lorg/bouncycastle/asn1/ibl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/ibl;->bta:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/C;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/ibl;->iv:Lorg/bouncycastle/asn1/ibl;

    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/ibl;->bta:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/ibl;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/ibl;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/ibl;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/ibl;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/ibl;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIV()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ibl;->iv:Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    return-object p0
.end method

.method public rh()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ibl;->bta:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/ibl;->iv:Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ibl;->bta:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
