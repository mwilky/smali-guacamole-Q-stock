.class public Lorg/bouncycastle/asn1/x509/ssp;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private attributes:Lorg/bouncycastle/asn1/obl;

.field private extensions:Lorg/bouncycastle/asn1/x509/ugm;

.field private holder:Lorg/bouncycastle/asn1/x509/cjf;

.field private serialNumber:Lorg/bouncycastle/asn1/ywr;

.field private signature:Lorg/bouncycastle/asn1/x509/zta;

.field private version:Lorg/bouncycastle/asn1/ywr;

.field private vra:Lorg/bouncycastle/asn1/x509/you;

.field private wra:Lorg/bouncycastle/asn1/x509/sis;

.field private xra:Lorg/bouncycastle/asn1/n;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/16 v2, 0x9

    if-gt v0, v2, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ywr;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/ssp;->version:Lorg/bouncycastle/asn1/ywr;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/ssp;->version:Lorg/bouncycastle/asn1/ywr;

    :goto_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/cjf;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/cjf;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/ssp;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/you;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/you;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/ssp;->vra:Lorg/bouncycastle/asn1/x509/you;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/ssp;->signature:Lorg/bouncycastle/asn1/x509/zta;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/ssp;->serialNumber:Lorg/bouncycastle/asn1/ywr;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/sis;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/sis;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/ssp;->wra:Lorg/bouncycastle/asn1/x509/sis;

    add-int/lit8 v2, v0, 0x5

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/ssp;->attributes:Lorg/bouncycastle/asn1/obl;

    add-int/2addr v0, v1

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/n;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/n;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/ssp;->xra:Lorg/bouncycastle/asn1/n;

    goto :goto_2

    :cond_1
    instance-of v2, v1, Lorg/bouncycastle/asn1/obl;

    if-nez v2, :cond_2

    instance-of v1, v1, Lorg/bouncycastle/asn1/x509/ugm;

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/ugm;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/ssp;->extensions:Lorg/bouncycastle/asn1/x509/ugm;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void

    :cond_5
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

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ssp;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/ssp;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/ssp;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/ssp;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/ssp;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/ssp;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/ssp;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ssp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Jh()Lorg/bouncycastle/asn1/x509/sis;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ssp;->wra:Lorg/bouncycastle/asn1/x509/sis;

    return-object p0
.end method

.method public getAttributes()Lorg/bouncycastle/asn1/obl;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ssp;->attributes:Lorg/bouncycastle/asn1/obl;

    return-object p0
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/ugm;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ssp;->extensions:Lorg/bouncycastle/asn1/x509/ugm;

    return-object p0
.end method

.method public getHolder()Lorg/bouncycastle/asn1/x509/cjf;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ssp;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    return-object p0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x509/you;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ssp;->vra:Lorg/bouncycastle/asn1/x509/you;

    return-object p0
.end method

.method public getIssuerUniqueID()Lorg/bouncycastle/asn1/n;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ssp;->xra:Lorg/bouncycastle/asn1/n;

    return-object p0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ssp;->serialNumber:Lorg/bouncycastle/asn1/ywr;

    return-object p0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ssp;->signature:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ssp;->version:Lorg/bouncycastle/asn1/ywr;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/ssp;->version:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/ssp;->version:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/ssp;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/ssp;->vra:Lorg/bouncycastle/asn1/x509/you;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/ssp;->signature:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/ssp;->serialNumber:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/ssp;->wra:Lorg/bouncycastle/asn1/x509/sis;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/ssp;->attributes:Lorg/bouncycastle/asn1/obl;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/ssp;->xra:Lorg/bouncycastle/asn1/n;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ssp;->extensions:Lorg/bouncycastle/asn1/x509/ugm;

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_2
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
