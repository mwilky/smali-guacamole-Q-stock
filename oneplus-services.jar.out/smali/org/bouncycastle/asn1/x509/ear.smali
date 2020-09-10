.class public Lorg/bouncycastle/asn1/x509/ear;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field Kta:Lorg/bouncycastle/asn1/x509/obl;

.field Qua:Lorg/bouncycastle/asn1/n;

.field serial:Lorg/bouncycastle/asn1/ywr;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/bvj/tsu;Ljava/math/BigInteger;)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/x509/obl;

    new-instance v1, Lorg/bouncycastle/asn1/x509/zgw;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/x509/zgw;-><init>(Lorg/bouncycastle/asn1/bvj/tsu;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/obl;-><init>(Lorg/bouncycastle/asn1/x509/zgw;)V

    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x509/ear;-><init>(Lorg/bouncycastle/asn1/x509/obl;Lorg/bouncycastle/asn1/ywr;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

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

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/ear;->Kta:Lorg/bouncycastle/asn1/x509/obl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/ear;->serial:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/n;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/ear;->Qua:Lorg/bouncycastle/asn1/n;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/obl;Ljava/math/BigInteger;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x509/ear;-><init>(Lorg/bouncycastle/asn1/x509/obl;Lorg/bouncycastle/asn1/ywr;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/obl;Lorg/bouncycastle/asn1/ywr;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/ear;->Kta:Lorg/bouncycastle/asn1/x509/obl;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/ear;->serial:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ear;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/ear;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/ear;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/ear;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/ear;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/ear;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/ear;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ear;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getIssuer()Lorg/bouncycastle/asn1/x509/obl;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ear;->Kta:Lorg/bouncycastle/asn1/x509/obl;

    return-object p0
.end method

.method public getSerial()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ear;->serial:Lorg/bouncycastle/asn1/ywr;

    return-object p0
.end method

.method public li()Lorg/bouncycastle/asn1/n;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ear;->Qua:Lorg/bouncycastle/asn1/n;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/ear;->Kta:Lorg/bouncycastle/asn1/x509/obl;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/ear;->serial:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ear;->Qua:Lorg/bouncycastle/asn1/n;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
