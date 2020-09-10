.class public Lorg/bouncycastle/asn1/dma/ugm;
.super Lorg/bouncycastle/asn1/oif;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/dma/gwm;


# instance fields
.field private Asa:Lorg/bouncycastle/asn1/dma/cno;

.field private fta:Lorg/bouncycastle/asn1/dma/ywr;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/dma/cno;Lorg/bouncycastle/asn1/dma/ywr;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/ugm;->fta:Lorg/bouncycastle/asn1/dma/ywr;

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/ugm;->Asa:Lorg/bouncycastle/asn1/dma/cno;

    iput-object p2, p0, Lorg/bouncycastle/asn1/dma/ugm;->fta:Lorg/bouncycastle/asn1/dma/ywr;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/ugm;->fta:Lorg/bouncycastle/asn1/dma/ywr;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dma/cno;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/cno;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/ugm;->Asa:Lorg/bouncycastle/asn1/dma/cno;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/dma/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/ywr;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/ugm;->fta:Lorg/bouncycastle/asn1/dma/ywr;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong version for PFX PDU"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/ugm;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/ugm;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/ugm;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/ugm;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/ugm;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public sh()Lorg/bouncycastle/asn1/dma/cno;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ugm;->Asa:Lorg/bouncycastle/asn1/dma/cno;

    return-object p0
.end method

.method public th()Lorg/bouncycastle/asn1/dma/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ugm;->fta:Lorg/bouncycastle/asn1/dma/ywr;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/ugm;->Asa:Lorg/bouncycastle/asn1/dma/cno;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ugm;->fta:Lorg/bouncycastle/asn1/dma/ywr;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/d;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/d;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
