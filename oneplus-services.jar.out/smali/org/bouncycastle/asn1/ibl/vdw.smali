.class public Lorg/bouncycastle/asn1/ibl/vdw;
.super Lorg/bouncycastle/asn1/oif;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/ibl/ivd;


# instance fields
.field private id:Lorg/bouncycastle/asn1/bvj;

.field private parameters:Lorg/bouncycastle/asn1/vdb;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/bouncycastle/asn1/ibl/vdw;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/ibl/ivd;->characteristic_two_field:Lorg/bouncycastle/asn1/bvj;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/vdw;->id:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    int-to-long v2, p1

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    const-string p1, "inconsistent k values"

    if-nez p3, :cond_1

    if-nez p4, :cond_0

    sget-object p1, Lorg/bouncycastle/asn1/ibl/ivd;->tpBasis:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    int-to-long p2, p2

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-le p3, p2, :cond_2

    if-le p4, p3, :cond_2

    sget-object p1, Lorg/bouncycastle/asn1/ibl/ivd;->ppBasis:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p1, Lorg/bouncycastle/asn1/cno;

    invoke-direct {p1}, Lorg/bouncycastle/asn1/cno;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    int-to-long v2, p2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p2, Lorg/bouncycastle/asn1/ywr;

    int-to-long v1, p3

    invoke-direct {p2, v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p2, Lorg/bouncycastle/asn1/ywr;

    int-to-long p3, p4

    invoke-direct {p2, p3, p4}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p2, Lorg/bouncycastle/asn1/G;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :goto_0
    new-instance p1, Lorg/bouncycastle/asn1/G;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/vdw;->parameters:Lorg/bouncycastle/asn1/vdb;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/ibl/ivd;->prime_field:Lorg/bouncycastle/asn1/bvj;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/vdw;->id:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/vdw;->parameters:Lorg/bouncycastle/asn1/vdb;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/bvj;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/vdw;->id:Lorg/bouncycastle/asn1/bvj;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/vdw;->parameters:Lorg/bouncycastle/asn1/vdb;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/vdw;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/ibl/vdw;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/ibl/vdw;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/ibl/vdw;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ibl/vdw;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIdentifier()Lorg/bouncycastle/asn1/bvj;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/vdw;->id:Lorg/bouncycastle/asn1/bvj;

    return-object p0
.end method

.method public getParameters()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/vdw;->parameters:Lorg/bouncycastle/asn1/vdb;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ibl/vdw;->id:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/vdw;->parameters:Lorg/bouncycastle/asn1/vdb;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
