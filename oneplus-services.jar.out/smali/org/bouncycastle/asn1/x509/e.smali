.class public Lorg/bouncycastle/asn1/x509/e;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/x509/e$you;,
        Lorg/bouncycastle/asn1/x509/e$sis;,
        Lorg/bouncycastle/asn1/x509/e$zta;
    }
.end annotation


# instance fields
.field Vta:Lorg/bouncycastle/asn1/bvj/tsu;

.field dwa:Lorg/bouncycastle/asn1/x509/h;

.field ewa:Lorg/bouncycastle/asn1/x509/h;

.field fwa:Lorg/bouncycastle/asn1/obl;

.field gwa:Lorg/bouncycastle/asn1/x509/ugm;

.field signature:Lorg/bouncycastle/asn1/x509/zta;

.field version:Lorg/bouncycastle/asn1/ywr;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ywr;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/e;->version:Lorg/bouncycastle/asn1/ywr;

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/e;->version:Lorg/bouncycastle/asn1/ywr;

    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/e;->signature:Lorg/bouncycastle/asn1/x509/zta;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/e;->Vta:Lorg/bouncycastle/asn1/bvj/tsu;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/h;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/h;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/e;->dwa:Lorg/bouncycastle/asn1/x509/h;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/cgv;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/wtn;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/x509/h;

    if-eqz v0, :cond_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/h;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/h;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/e;->ewa:Lorg/bouncycastle/asn1/x509/h;

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/lqr;

    if-nez v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/e;->fwa:Lorg/bouncycastle/asn1/obl;

    move v0, v1

    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/lqr;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/lqr;

    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/ugm;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/e;->gwa:Lorg/bouncycastle/asn1/x509/ugm;

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

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/e;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/e;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/e;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/e;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/e;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/e;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/e;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Zh()I
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/e;->version:Lorg/bouncycastle/asn1/ywr;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public _h()Ljava/util/Enumeration;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/e;->fwa:Lorg/bouncycastle/asn1/obl;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/e$you;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/x509/e$you;-><init>(Lorg/bouncycastle/asn1/x509/e;Lorg/bouncycastle/asn1/x509/d;)V

    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/x509/e$sis;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/obl;->Tg()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/asn1/x509/e$sis;-><init>(Lorg/bouncycastle/asn1/x509/e;Ljava/util/Enumeration;)V

    return-object v1
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/ugm;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/e;->gwa:Lorg/bouncycastle/asn1/x509/ugm;

    return-object p0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/e;->Vta:Lorg/bouncycastle/asn1/bvj/tsu;

    return-object p0
.end method

.method public getNextUpdate()Lorg/bouncycastle/asn1/x509/h;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/e;->ewa:Lorg/bouncycastle/asn1/x509/h;

    return-object p0
.end method

.method public getRevokedCertificates()[Lorg/bouncycastle/asn1/x509/e$zta;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/e;->fwa:Lorg/bouncycastle/asn1/obl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Lorg/bouncycastle/asn1/x509/e$zta;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/e$zta;

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/e;->fwa:Lorg/bouncycastle/asn1/obl;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/e$zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/e$zta;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/e;->signature:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public getThisUpdate()Lorg/bouncycastle/asn1/x509/h;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/e;->dwa:Lorg/bouncycastle/asn1/x509/h;

    return-object p0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/e;->version:Lorg/bouncycastle/asn1/ywr;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/e;->version:Lorg/bouncycastle/asn1/ywr;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/e;->signature:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/e;->Vta:Lorg/bouncycastle/asn1/bvj/tsu;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/e;->dwa:Lorg/bouncycastle/asn1/x509/h;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/e;->ewa:Lorg/bouncycastle/asn1/x509/h;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/e;->fwa:Lorg/bouncycastle/asn1/obl;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_2
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/e;->gwa:Lorg/bouncycastle/asn1/x509/ugm;

    if-eqz p0, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/L;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/asn1/L;-><init>(ILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_3
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
