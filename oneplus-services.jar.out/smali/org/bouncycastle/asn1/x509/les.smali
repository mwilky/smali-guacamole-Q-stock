.class public Lorg/bouncycastle/asn1/x509/les;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private Lva:Ljava/math/BigInteger;

.field private Mva:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/les;->Lva:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/les;->Mva:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/lqr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/lqr;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/ywr;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ywr;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/les;->Lva:Ljava/math/BigInteger;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/ywr;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ywr;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/les;->Mva:Ljava/math/BigInteger;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown tag encountered."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/les;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/les;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/les;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/les;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/les;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/x509/ugm;)Lorg/bouncycastle/asn1/x509/les;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/gwm;->pua:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/ugm;->cno(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/les;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/les;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Ai()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/les;->Mva:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Bi()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/les;->Lva:Ljava/math/BigInteger;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/les;->Lva:Ljava/math/BigInteger;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/L;

    new-instance v4, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v3, v2, v2, v4}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/les;->Mva:Ljava/math/BigInteger;

    if-eqz p0, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/L;

    const/4 v3, 0x1

    new-instance v4, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {v4, p0}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
