.class public Lorg/bouncycastle/asn1/ibl/tsu;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private final Ira:Lorg/bouncycastle/asn1/ywr;

.field private final g:Lorg/bouncycastle/asn1/ywr;

.field private final p:Lorg/bouncycastle/asn1/ywr;

.field private final q:Lorg/bouncycastle/asn1/ywr;

.field private final wxa:Lorg/bouncycastle/asn1/ibl/ssp;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ibl/ssp;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/tsu;->p:Lorg/bouncycastle/asn1/ywr;

    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/tsu;->g:Lorg/bouncycastle/asn1/ywr;

    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/tsu;->q:Lorg/bouncycastle/asn1/ywr;

    if-eqz p4, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {p1, p4}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/tsu;->Ira:Lorg/bouncycastle/asn1/ywr;

    iput-object p5, p0, Lorg/bouncycastle/asn1/ibl/tsu;->wxa:Lorg/bouncycastle/asn1/ibl/ssp;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'q\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'g\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'p\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Tg()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/tsu;->p:Lorg/bouncycastle/asn1/ywr;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/tsu;->g:Lorg/bouncycastle/asn1/ywr;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/tsu;->q:Lorg/bouncycastle/asn1/ywr;

    invoke-static {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->zta(Ljava/util/Enumeration;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lorg/bouncycastle/asn1/ywr;

    if-eqz v2, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/tsu;->Ira:Lorg/bouncycastle/asn1/ywr;

    invoke-static {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->zta(Ljava/util/Enumeration;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/bouncycastle/asn1/ibl/tsu;->Ira:Lorg/bouncycastle/asn1/ywr;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ibl/ssp;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/ssp;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/tsu;->wxa:Lorg/bouncycastle/asn1/ibl/ssp;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lorg/bouncycastle/asn1/ibl/tsu;->wxa:Lorg/bouncycastle/asn1/ibl/ssp;

    :goto_1
    return-void

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
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/tsu;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/ibl/tsu;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/ibl/tsu;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/ibl/tsu;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ibl/tsu;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ibl/tsu;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/tsu;

    move-result-object p0

    return-object p0
.end method

.method private static zta(Ljava/util/Enumeration;)Lorg/bouncycastle/asn1/ssp;
    .locals 1

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ssp;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public Li()Lorg/bouncycastle/asn1/ibl/ssp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/tsu;->wxa:Lorg/bouncycastle/asn1/ibl/ssp;

    return-object p0
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/tsu;->g:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->Sg()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/tsu;->p:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->Sg()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/tsu;->q:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->Sg()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ibl/tsu;->p:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ibl/tsu;->g:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ibl/tsu;->q:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ibl/tsu;->Ira:Lorg/bouncycastle/asn1/ywr;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/tsu;->wxa:Lorg/bouncycastle/asn1/ibl/ssp;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method

.method public wg()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/tsu;->Ira:Lorg/bouncycastle/asn1/ywr;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->Sg()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
