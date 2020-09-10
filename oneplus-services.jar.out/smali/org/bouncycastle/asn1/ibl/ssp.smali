.class public Lorg/bouncycastle/asn1/ibl/ssp;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private jxa:Lorg/bouncycastle/asn1/n;

.field private kxa:Lorg/bouncycastle/asn1/ywr;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/ywr;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/ssp;->jxa:Lorg/bouncycastle/asn1/n;

    iput-object p2, p0, Lorg/bouncycastle/asn1/ibl/ssp;->kxa:Lorg/bouncycastle/asn1/ywr;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'pgenCounter\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'seed\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/n;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/ssp;->jxa:Lorg/bouncycastle/asn1/n;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/ssp;->kxa:Lorg/bouncycastle/asn1/ywr;

    return-void

    :cond_0
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
.end method

.method public constructor <init>([BI)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/n;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/ssp;->jxa:Lorg/bouncycastle/asn1/n;

    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/ssp;->kxa:Lorg/bouncycastle/asn1/ywr;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'seed\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/ssp;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/ibl/ssp;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/ibl/ssp;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/ibl/ssp;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ibl/ssp;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ibl/ssp;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl/ssp;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/ssp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Ii()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/ssp;->kxa:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->Qg()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getSeed()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/ssp;->jxa:Lorg/bouncycastle/asn1/n;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ibl/ssp;->jxa:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/ssp;->kxa:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
