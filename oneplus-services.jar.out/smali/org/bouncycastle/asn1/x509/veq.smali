.class public Lorg/bouncycastle/asn1/x509/veq;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private Pva:[Lorg/bouncycastle/asn1/x509/oxb;

.field private permitted:[Lorg/bouncycastle/asn1/x509/oxb;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Tg()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/lqr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/lqr;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/veq;->cno(Lorg/bouncycastle/asn1/obl;)[Lorg/bouncycastle/asn1/x509/oxb;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/veq;->Pva:[Lorg/bouncycastle/asn1/x509/oxb;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag encountered: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/veq;->cno(Lorg/bouncycastle/asn1/obl;)[Lorg/bouncycastle/asn1/x509/oxb;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/veq;->permitted:[Lorg/bouncycastle/asn1/x509/oxb;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/oxb;[Lorg/bouncycastle/asn1/x509/oxb;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/veq;->you([Lorg/bouncycastle/asn1/x509/oxb;)[Lorg/bouncycastle/asn1/x509/oxb;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/veq;->permitted:[Lorg/bouncycastle/asn1/x509/oxb;

    invoke-static {p2}, Lorg/bouncycastle/asn1/x509/veq;->you([Lorg/bouncycastle/asn1/x509/oxb;)[Lorg/bouncycastle/asn1/x509/oxb;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/veq;->Pva:[Lorg/bouncycastle/asn1/x509/oxb;

    return-void
.end method

.method private cno(Lorg/bouncycastle/asn1/obl;)[Lorg/bouncycastle/asn1/x509/oxb;
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result p0

    new-array p0, p0, [Lorg/bouncycastle/asn1/x509/oxb;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/oxb;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/oxb;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/veq;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/veq;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/veq;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/veq;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/veq;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static you([Lorg/bouncycastle/asn1/x509/oxb;)[Lorg/bouncycastle/asn1/x509/oxb;
    .locals 3

    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/oxb;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/veq;->permitted:[Lorg/bouncycastle/asn1/x509/oxb;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/L;

    new-instance v4, Lorg/bouncycastle/asn1/G;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/G;-><init>([Lorg/bouncycastle/asn1/ssp;)V

    invoke-direct {v3, v2, v2, v4}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/veq;->Pva:[Lorg/bouncycastle/asn1/x509/oxb;

    if-eqz p0, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/L;

    const/4 v3, 0x1

    new-instance v4, Lorg/bouncycastle/asn1/G;

    invoke-direct {v4, p0}, Lorg/bouncycastle/asn1/G;-><init>([Lorg/bouncycastle/asn1/ssp;)V

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method

.method public vi()[Lorg/bouncycastle/asn1/x509/oxb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/veq;->Pva:[Lorg/bouncycastle/asn1/x509/oxb;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/veq;->you([Lorg/bouncycastle/asn1/x509/oxb;)[Lorg/bouncycastle/asn1/x509/oxb;

    move-result-object p0

    return-object p0
.end method

.method public wi()[Lorg/bouncycastle/asn1/x509/oxb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/veq;->permitted:[Lorg/bouncycastle/asn1/x509/oxb;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/veq;->you([Lorg/bouncycastle/asn1/x509/oxb;)[Lorg/bouncycastle/asn1/x509/oxb;

    move-result-object p0

    return-object p0
.end method
