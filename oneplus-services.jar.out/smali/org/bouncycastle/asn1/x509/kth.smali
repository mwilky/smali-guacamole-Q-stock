.class public Lorg/bouncycastle/asn1/x509/kth;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field Bra:Lorg/bouncycastle/asn1/tsu;

.field Cra:Lorg/bouncycastle/asn1/ywr;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/asn1/tsu;->getInstance(Z)Lorg/bouncycastle/asn1/tsu;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/kth;->Bra:Lorg/bouncycastle/asn1/tsu;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/kth;->Cra:Lorg/bouncycastle/asn1/ywr;

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/asn1/tsu;->getInstance(Z)Lorg/bouncycastle/asn1/tsu;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/kth;->Bra:Lorg/bouncycastle/asn1/tsu;

    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/kth;->Cra:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/asn1/tsu;->getInstance(Z)Lorg/bouncycastle/asn1/tsu;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/kth;->Bra:Lorg/bouncycastle/asn1/tsu;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/kth;->Cra:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/kth;->Bra:Lorg/bouncycastle/asn1/tsu;

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/kth;->Cra:Lorg/bouncycastle/asn1/ywr;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/tsu;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsu;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/kth;->Bra:Lorg/bouncycastle/asn1/tsu;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/kth;->Bra:Lorg/bouncycastle/asn1/tsu;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/kth;->Cra:Lorg/bouncycastle/asn1/ywr;

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/kth;->Bra:Lorg/bouncycastle/asn1/tsu;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/kth;->Cra:Lorg/bouncycastle/asn1/ywr;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong sequence in constructor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/asn1/tsu;->getInstance(Z)Lorg/bouncycastle/asn1/tsu;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/kth;->Bra:Lorg/bouncycastle/asn1/tsu;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/kth;->Cra:Lorg/bouncycastle/asn1/ywr;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Lorg/bouncycastle/asn1/tsu;->getInstance(Z)Lorg/bouncycastle/asn1/tsu;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/kth;->Bra:Lorg/bouncycastle/asn1/tsu;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/kth;->Bra:Lorg/bouncycastle/asn1/tsu;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/kth;->Cra:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/kth;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/kth;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/kth;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/n;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/asn1/x509/n;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/n;->zta(Lorg/bouncycastle/asn1/x509/n;)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/kth;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/kth;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/x509/kth;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/kth;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/kth;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/kth;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/kth;

    move-result-object p0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/x509/ugm;)Lorg/bouncycastle/asn1/x509/kth;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/gwm;->basicConstraints:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/ugm;->cno(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/kth;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/kth;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Mh()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/kth;->Cra:Lorg/bouncycastle/asn1/ywr;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isCA()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/kth;->Bra:Lorg/bouncycastle/asn1/tsu;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/tsu;->zg()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/kth;->Bra:Lorg/bouncycastle/asn1/tsu;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/kth;->Cra:Lorg/bouncycastle/asn1/ywr;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/kth;->Cra:Lorg/bouncycastle/asn1/ywr;

    const-string v1, "BasicConstraints: isCa("

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/kth;->Bra:Lorg/bouncycastle/asn1/tsu;

    if-nez v0, :cond_0

    const-string p0, "BasicConstraints: isCa(false)"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/kth;->isCA()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/kth;->isCA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), pathLenConstraint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/kth;->Cra:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
