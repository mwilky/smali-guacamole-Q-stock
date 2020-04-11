.class public Lorg/bouncycastle/asn1/x509/cno;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field Ara:Lorg/bouncycastle/asn1/ywr;

.field yra:Lorg/bouncycastle/asn1/ibl;

.field zra:Lorg/bouncycastle/asn1/x509/obl;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cno;->yra:Lorg/bouncycastle/asn1/ibl;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cno;->zra:Lorg/bouncycastle/asn1/x509/obl;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cno;->Ara:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Jg()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/lqr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/lqr;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ywr;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ywr;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cno;->Ara:Lorg/bouncycastle/asn1/ywr;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal tag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/x509/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cno;->zra:Lorg/bouncycastle/asn1/x509/obl;

    goto :goto_0

    :cond_2
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ibl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ibl;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cno;->yra:Lorg/bouncycastle/asn1/ibl;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/c;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cno;->yra:Lorg/bouncycastle/asn1/ibl;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cno;->zra:Lorg/bouncycastle/asn1/x509/obl;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cno;->Ara:Lorg/bouncycastle/asn1/ywr;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->e()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->mh()Lorg/bouncycastle/asn1/n;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, v2}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    new-instance p1, Lorg/bouncycastle/asn1/C;

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/cno;->yra:Lorg/bouncycastle/asn1/ibl;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/c;Lorg/bouncycastle/asn1/x509/obl;Ljava/math/BigInteger;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cno;->yra:Lorg/bouncycastle/asn1/ibl;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cno;->zra:Lorg/bouncycastle/asn1/x509/obl;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cno;->Ara:Lorg/bouncycastle/asn1/ywr;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->e()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->mh()Lorg/bouncycastle/asn1/n;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, v2}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    new-instance p1, Lorg/bouncycastle/asn1/C;

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/cno;->yra:Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/obl;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/cno;->zra:Lorg/bouncycastle/asn1/x509/obl;

    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/cno;->Ara:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/obl;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/x509/cno;-><init>([BLorg/bouncycastle/asn1/x509/obl;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/bouncycastle/asn1/x509/cno;-><init>([BLorg/bouncycastle/asn1/x509/obl;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/asn1/x509/obl;Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cno;->yra:Lorg/bouncycastle/asn1/ibl;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cno;->zra:Lorg/bouncycastle/asn1/x509/obl;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cno;->Ara:Lorg/bouncycastle/asn1/ywr;

    if-eqz p1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/C;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/cno;->yra:Lorg/bouncycastle/asn1/ibl;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/cno;->zra:Lorg/bouncycastle/asn1/x509/obl;

    if-eqz p3, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cno;->Ara:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/cno;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/cno;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/cno;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/cno;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/cno;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/cno;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/cno;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/cno;

    move-result-object p0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/x509/ugm;)Lorg/bouncycastle/asn1/x509/cno;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/gwm;->_ra:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/ugm;->cno(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/cno;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/cno;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Kh()Lorg/bouncycastle/asn1/x509/obl;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/cno;->zra:Lorg/bouncycastle/asn1/x509/obl;

    return-object p0
.end method

.method public Lh()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/cno;->Ara:Lorg/bouncycastle/asn1/ywr;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyIdentifier()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/cno;->yra:Lorg/bouncycastle/asn1/ibl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/cno;->yra:Lorg/bouncycastle/asn1/ibl;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/L;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/cno;->zra:Lorg/bouncycastle/asn1/x509/obl;

    if-eqz v1, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/L;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/cno;->Ara:Lorg/bouncycastle/asn1/ywr;

    if-eqz p0, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/L;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, p0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_2
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorityKeyIdentifier: KeyID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/cno;->yra:Lorg/bouncycastle/asn1/ibl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/tsu;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
