.class public Lorg/bouncycastle/asn1/x509/oxb;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private base:Lorg/bouncycastle/asn1/x509/zgw;

.field private wra:Lorg/bouncycastle/asn1/ywr;

.field private xra:Lorg/bouncycastle/asn1/ywr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/oxb;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/zgw;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/oxb;->base:Lorg/bouncycastle/asn1/x509/zgw;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/lqr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/lqr;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/ywr;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ywr;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/oxb;->wra:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/lqr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/lqr;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad tag number for \'maximum\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad tag number for \'minimum\': "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sequence size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/lqr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/lqr;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v1

    if-eqz v1, :cond_5

    if-ne v1, v2, :cond_4

    :goto_0
    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ywr;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ywr;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/oxb;->xra:Lorg/bouncycastle/asn1/ywr;

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad tag number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ywr;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ywr;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/oxb;->wra:Lorg/bouncycastle/asn1/ywr;

    :cond_6
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/zgw;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/bouncycastle/asn1/x509/oxb;-><init>(Lorg/bouncycastle/asn1/x509/zgw;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/zgw;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/oxb;->base:Lorg/bouncycastle/asn1/x509/zgw;

    if-eqz p3, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/oxb;->xra:Lorg/bouncycastle/asn1/ywr;

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/oxb;->wra:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/oxb;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/oxb;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/asn1/x509/oxb;

    return-object p0

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/x509/oxb;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/oxb;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/oxb;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/oxb;

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/oxb;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0
.end method


# virtual methods
.method public getBase()Lorg/bouncycastle/asn1/x509/zgw;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/oxb;->base:Lorg/bouncycastle/asn1/x509/zgw;

    return-object p0
.end method

.method public getMaximum()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/oxb;->xra:Lorg/bouncycastle/asn1/ywr;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getMinimum()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/oxb;->wra:Lorg/bouncycastle/asn1/ywr;

    if-nez p0, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/x509/oxb;->ZERO:Ljava/math/BigInteger;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/oxb;->base:Lorg/bouncycastle/asn1/x509/zgw;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/oxb;->wra:Lorg/bouncycastle/asn1/ywr;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v3, Lorg/bouncycastle/asn1/x509/oxb;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/L;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/oxb;->wra:Lorg/bouncycastle/asn1/ywr;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/oxb;->xra:Lorg/bouncycastle/asn1/ywr;

    if-eqz p0, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/L;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
