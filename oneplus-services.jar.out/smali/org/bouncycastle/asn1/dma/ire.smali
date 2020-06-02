.class public Lorg/bouncycastle/asn1/dma/ire;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private Ata:Lorg/bouncycastle/asn1/ear;

.field private xta:Lorg/bouncycastle/asn1/bvj;

.field private yta:Lorg/bouncycastle/asn1/ssp;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/ire;->xta:Lorg/bouncycastle/asn1/bvj;

    iput-object p2, p0, Lorg/bouncycastle/asn1/dma/ire;->yta:Lorg/bouncycastle/asn1/ssp;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/ire;->Ata:Lorg/bouncycastle/asn1/ear;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;Lorg/bouncycastle/asn1/ear;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/ire;->xta:Lorg/bouncycastle/asn1/bvj;

    iput-object p2, p0, Lorg/bouncycastle/asn1/dma/ire;->yta:Lorg/bouncycastle/asn1/ssp;

    iput-object p3, p0, Lorg/bouncycastle/asn1/dma/ire;->Ata:Lorg/bouncycastle/asn1/ear;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bvj;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/ire;->xta:Lorg/bouncycastle/asn1/bvj;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/lqr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/lqr;->getObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/ire;->yta:Lorg/bouncycastle/asn1/ssp;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ear;

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/ire;->Ata:Lorg/bouncycastle/asn1/ear;

    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/ire;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/ire;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/ire;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/ire;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/ire;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public Gh()Lorg/bouncycastle/asn1/ear;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ire;->Ata:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method

.method public Hh()Lorg/bouncycastle/asn1/bvj;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ire;->xta:Lorg/bouncycastle/asn1/bvj;

    return-object p0
.end method

.method public Ih()Lorg/bouncycastle/asn1/ssp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ire;->yta:Lorg/bouncycastle/asn1/ssp;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/ire;->xta:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/Z;

    iget-object v2, p0, Lorg/bouncycastle/asn1/dma/ire;->yta:Lorg/bouncycastle/asn1/ssp;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lorg/bouncycastle/asn1/Z;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ire;->Ata:Lorg/bouncycastle/asn1/ear;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/X;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/X;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
