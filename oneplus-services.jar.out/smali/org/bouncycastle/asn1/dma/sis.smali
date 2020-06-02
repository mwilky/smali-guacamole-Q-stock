.class public Lorg/bouncycastle/asn1/dma/sis;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private Psa:Lorg/bouncycastle/asn1/bvj;

.field private Qsa:Lorg/bouncycastle/asn1/ssp;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/sis;->Psa:Lorg/bouncycastle/asn1/bvj;

    iput-object p2, p0, Lorg/bouncycastle/asn1/dma/sis;->Qsa:Lorg/bouncycastle/asn1/ssp;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bvj;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/sis;->Psa:Lorg/bouncycastle/asn1/bvj;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/lqr;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/lqr;->getObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/sis;->Qsa:Lorg/bouncycastle/asn1/ssp;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/sis;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/sis;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/sis;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/sis;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/sis;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public kh()Lorg/bouncycastle/asn1/bvj;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/sis;->Psa:Lorg/bouncycastle/asn1/bvj;

    return-object p0
.end method

.method public lh()Lorg/bouncycastle/asn1/ssp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/sis;->Qsa:Lorg/bouncycastle/asn1/ssp;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/sis;->Psa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/L;

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/sis;->Qsa:Lorg/bouncycastle/asn1/ssp;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/asn1/L;-><init>(ILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
