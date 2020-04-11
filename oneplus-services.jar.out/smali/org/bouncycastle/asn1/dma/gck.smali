.class public Lorg/bouncycastle/asn1/dma/gck;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field Opa:Lorg/bouncycastle/asn1/ywr;

.field name:Lorg/bouncycastle/asn1/bvj/tsu;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/bvj/tsu;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/gck;->name:Lorg/bouncycastle/asn1/bvj/tsu;

    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/gck;->Opa:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/gck;->name:Lorg/bouncycastle/asn1/bvj/tsu;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ywr;

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/gck;->Opa:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/q;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/q;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/gck;->name:Lorg/bouncycastle/asn1/bvj/tsu;

    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/gck;->Opa:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/q;Lorg/bouncycastle/asn1/ywr;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/q;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/gck;->name:Lorg/bouncycastle/asn1/bvj/tsu;

    iput-object p2, p0, Lorg/bouncycastle/asn1/dma/gck;->Opa:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/gck;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/gck;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/gck;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/gck;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/gck;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCertificateSerialNumber()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/gck;->Opa:Lorg/bouncycastle/asn1/ywr;

    return-object p0
.end method

.method public getName()Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/gck;->name:Lorg/bouncycastle/asn1/bvj/tsu;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/gck;->name:Lorg/bouncycastle/asn1/bvj/tsu;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/gck;->Opa:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
