.class public Lorg/bouncycastle/asn1/dma/oif;
.super Lorg/bouncycastle/asn1/oif;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/dma/gwm;


# instance fields
.field private func:Lorg/bouncycastle/asn1/dma/dma;

.field private scheme:Lorg/bouncycastle/asn1/dma/wtn;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/dma/dma;Lorg/bouncycastle/asn1/dma/wtn;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/oif;->func:Lorg/bouncycastle/asn1/dma/dma;

    iput-object p2, p0, Lorg/bouncycastle/asn1/dma/oif;->scheme:Lorg/bouncycastle/asn1/dma/wtn;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Sg()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ssp;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->id_PBKDF2:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/dma/dma;

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->id_PBKDF2:Lorg/bouncycastle/asn1/bvj;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dma/bvj;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/bvj;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/dma/dma;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/dma/oif;->func:Lorg/bouncycastle/asn1/dma/dma;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/dma/dma;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/dma;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/oif;->func:Lorg/bouncycastle/asn1/dma/dma;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/dma/wtn;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/wtn;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/oif;->scheme:Lorg/bouncycastle/asn1/dma/wtn;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/oif;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/oif;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/oif;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/oif;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/oif;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public qh()Lorg/bouncycastle/asn1/dma/wtn;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/oif;->scheme:Lorg/bouncycastle/asn1/dma/wtn;

    return-object p0
.end method

.method public rh()Lorg/bouncycastle/asn1/dma/dma;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/oif;->func:Lorg/bouncycastle/asn1/dma/dma;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/oif;->func:Lorg/bouncycastle/asn1/dma/dma;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/oif;->scheme:Lorg/bouncycastle/asn1/dma/wtn;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
