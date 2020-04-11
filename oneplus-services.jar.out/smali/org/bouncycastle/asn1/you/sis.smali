.class public Lorg/bouncycastle/asn1/you/sis;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private attributes:Lorg/bouncycastle/asn1/ear;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cno;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/Y;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/Y;-><init>(Lorg/bouncycastle/asn1/cno;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/sis;->attributes:Lorg/bouncycastle/asn1/ear;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ear;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/you/sis;->attributes:Lorg/bouncycastle/asn1/ear;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/sis;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/you/sis;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/you/sis;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/you/sis;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ear;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ear;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/you/sis;-><init>(Lorg/bouncycastle/asn1/ear;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/you/sis;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ear;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ear;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/you/sis;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/sis;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAttributes()[Lorg/bouncycastle/asn1/you/zta;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/you/sis;->attributes:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/you/zta;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/you/sis;->attributes:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ear;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/you/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/zta;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/sis;->attributes:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method
