.class public Lorg/bouncycastle/asn1/ywr/you;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private seq:Lorg/bouncycastle/asn1/obl;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/you;->ear(Ljava/math/BigInteger;)[B

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/C;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p1, Lorg/bouncycastle/asn1/G;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ywr/you;->seq:Lorg/bouncycastle/asn1/obl;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/ssp;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/you;->ear(Ljava/math/BigInteger;)[B

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/C;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/L;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p3}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance p3, Lorg/bouncycastle/asn1/L;

    invoke-direct {p3, p1, p1, p2}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/G;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ywr/you;->seq:Lorg/bouncycastle/asn1/obl;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ssp;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/ywr/you;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/ssp;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ywr/you;->seq:Lorg/bouncycastle/asn1/obl;

    return-void
.end method

.method private hc(I)Lorg/bouncycastle/asn1/vdb;
    .locals 2

    iget-object p0, p0, Lorg/bouncycastle/asn1/ywr/you;->seq:Lorg/bouncycastle/asn1/obl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->Fg()Ljava/util/Enumeration;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ssp;

    instance-of v1, v0, Lorg/bouncycastle/asn1/lqr;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/lqr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/lqr;->getObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getKey()Ljava/math/BigInteger;
    .locals 2

    iget-object p0, p0, Lorg/bouncycastle/asn1/ywr/you;->seq:Lorg/bouncycastle/asn1/obl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ibl;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public getParameters()Lorg/bouncycastle/asn1/vdb;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ywr/you;->hc(I)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0
.end method

.method public getPublicKey()Lorg/bouncycastle/asn1/n;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ywr/you;->hc(I)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/n;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ywr/you;->seq:Lorg/bouncycastle/asn1/obl;

    return-object p0
.end method
