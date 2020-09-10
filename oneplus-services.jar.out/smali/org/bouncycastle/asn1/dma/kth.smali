.class public Lorg/bouncycastle/asn1/dma/kth;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field g:Lorg/bouncycastle/asn1/ywr;

.field l:Lorg/bouncycastle/asn1/ywr;

.field p:Lorg/bouncycastle/asn1/ywr;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/kth;->p:Lorg/bouncycastle/asn1/ywr;

    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/kth;->g:Lorg/bouncycastle/asn1/ywr;

    if-eqz p3, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    int-to-long p2, p3

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/kth;->l:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Rg()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/kth;->p:Lorg/bouncycastle/asn1/ywr;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/kth;->g:Lorg/bouncycastle/asn1/ywr;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ywr;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/kth;->l:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/kth;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/kth;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/kth;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/kth;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/kth;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/kth;->g:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->Qg()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getL()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/kth;->l:Lorg/bouncycastle/asn1/ywr;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->Qg()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/kth;->p:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->Qg()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/kth;->p:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/kth;->g:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/kth;->getL()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/kth;->l:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
