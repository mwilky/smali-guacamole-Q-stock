.class public Lorg/bouncycastle/asn1/you/zta;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private vsa:Lorg/bouncycastle/asn1/bvj;

.field private wsa:Lorg/bouncycastle/asn1/ear;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ear;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/you/zta;->vsa:Lorg/bouncycastle/asn1/bvj;

    iput-object p2, p0, Lorg/bouncycastle/asn1/you/zta;->wsa:Lorg/bouncycastle/asn1/ear;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bvj;

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/zta;->vsa:Lorg/bouncycastle/asn1/bvj;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ear;

    iput-object p1, p0, Lorg/bouncycastle/asn1/you/zta;->wsa:Lorg/bouncycastle/asn1/ear;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/zta;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/you/zta;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/you/zta;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/you/zta;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/you/zta;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public Wg()Lorg/bouncycastle/asn1/bvj;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/zta;->vsa:Lorg/bouncycastle/asn1/bvj;

    return-object p0
.end method

.method public Xg()Lorg/bouncycastle/asn1/ear;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/zta;->wsa:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method

.method public Yg()[Lorg/bouncycastle/asn1/ssp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/zta;->wsa:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ear;->toArray()[Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/you/zta;->vsa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/zta;->wsa:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
