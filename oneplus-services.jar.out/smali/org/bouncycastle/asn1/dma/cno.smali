.class public Lorg/bouncycastle/asn1/dma/cno;
.super Lorg/bouncycastle/asn1/oif;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/dma/gwm;


# instance fields
.field private Aqa:Z

.field private content:Lorg/bouncycastle/asn1/ssp;

.field private contentType:Lorg/bouncycastle/asn1/bvj;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/dma/cno;->Aqa:Z

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/cno;->contentType:Lorg/bouncycastle/asn1/bvj;

    iput-object p2, p0, Lorg/bouncycastle/asn1/dma/cno;->content:Lorg/bouncycastle/asn1/ssp;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/dma/cno;->Aqa:Z

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Jg()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/bvj;

    iput-object v1, p0, Lorg/bouncycastle/asn1/dma/cno;->contentType:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/lqr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/lqr;->getObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/cno;->content:Lorg/bouncycastle/asn1/ssp;

    :cond_0
    instance-of p1, p1, Lorg/bouncycastle/asn1/d;

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/dma/cno;->Aqa:Z

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/cno;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/cno;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/cno;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/cno;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/cno;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/asn1/ssp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/cno;->content:Lorg/bouncycastle/asn1/ssp;

    return-object p0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/bvj;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/cno;->contentType:Lorg/bouncycastle/asn1/bvj;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/cno;->contentType:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/cno;->content:Lorg/bouncycastle/asn1/ssp;

    if-eqz v1, :cond_0

    new-instance v2, Lorg/bouncycastle/asn1/h;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lorg/bouncycastle/asn1/h;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-boolean p0, p0, Lorg/bouncycastle/asn1/dma/cno;->Aqa:Z

    if-eqz p0, :cond_1

    new-instance p0, Lorg/bouncycastle/asn1/d;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/d;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/X;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/X;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
