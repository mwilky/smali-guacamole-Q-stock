.class public Lorg/bouncycastle/asn1/dma/you;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private Zsa:Z

.field private info:[Lorg/bouncycastle/asn1/dma/cno;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/dma/you;->Zsa:Z

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/dma/cno;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/you;->info:[Lorg/bouncycastle/asn1/dma/cno;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/you;->info:[Lorg/bouncycastle/asn1/dma/cno;

    array-length v2, v1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/dma/cno;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/cno;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lorg/bouncycastle/asn1/d;

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/dma/you;->Zsa:Z

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/dma/cno;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/dma/you;->Zsa:Z

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/dma/you;->zta([Lorg/bouncycastle/asn1/dma/cno;)[Lorg/bouncycastle/asn1/dma/cno;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/you;->info:[Lorg/bouncycastle/asn1/dma/cno;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/you;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/you;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/you;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/you;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/you;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private zta([Lorg/bouncycastle/asn1/dma/cno;)[Lorg/bouncycastle/asn1/dma/cno;
    .locals 2

    array-length p0, p1

    new-array p0, p0, [Lorg/bouncycastle/asn1/dma/cno;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method


# virtual methods
.method public getContentInfo()[Lorg/bouncycastle/asn1/dma/cno;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dma/you;->info:[Lorg/bouncycastle/asn1/dma/cno;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/dma/you;->zta([Lorg/bouncycastle/asn1/dma/cno;)[Lorg/bouncycastle/asn1/dma/cno;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/dma/you;->info:[Lorg/bouncycastle/asn1/dma/cno;

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lorg/bouncycastle/asn1/dma/you;->Zsa:Z

    if-eqz p0, :cond_1

    new-instance p0, Lorg/bouncycastle/asn1/d;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/d;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/X;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/X;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
