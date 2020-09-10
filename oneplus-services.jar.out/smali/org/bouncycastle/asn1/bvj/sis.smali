.class public Lorg/bouncycastle/asn1/bvj/sis;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private values:Lorg/bouncycastle/asn1/ear;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/bvj/zta;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/I;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/bvj/sis;->values:Lorg/bouncycastle/asn1/ear;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p1, Lorg/bouncycastle/asn1/I;

    new-instance p2, Lorg/bouncycastle/asn1/G;

    invoke-direct {p2, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/bvj/sis;->values:Lorg/bouncycastle/asn1/ear;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ear;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/bvj/sis;->values:Lorg/bouncycastle/asn1/ear;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/bvj/zta;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/I;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/I;-><init>([Lorg/bouncycastle/asn1/ssp;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/bvj/sis;->values:Lorg/bouncycastle/asn1/ear;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/sis;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/bvj/sis;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/bvj/sis;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/bvj/sis;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ear;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ear;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/bvj/sis;-><init>(Lorg/bouncycastle/asn1/ear;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public Ih()[Lorg/bouncycastle/asn1/bvj/zta;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/bvj/sis;->values:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/bvj/zta;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/bvj/sis;->values:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ear;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/bvj/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/zta;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public Jh()Z
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/asn1/bvj/sis;->values:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFirst()Lorg/bouncycastle/asn1/bvj/zta;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/bvj/sis;->values:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/bvj/sis;->values:Lorg/bouncycastle/asn1/ear;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ear;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/bvj/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/zta;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/bvj/sis;->values:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result p0

    return p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/bvj/sis;->values:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method
