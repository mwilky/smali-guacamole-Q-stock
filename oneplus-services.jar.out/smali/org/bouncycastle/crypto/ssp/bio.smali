.class public Lorg/bouncycastle/crypto/ssp/bio;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/sis;
.implements Lyou/zta/sis/zta/sis;


# instance fields
.field params:Lorg/bouncycastle/crypto/wtn/ibl;

.field yla:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected Zi()Lyou/zta/sis/zta/bio;
    .locals 0

    new-instance p0, Lyou/zta/sis/zta/dma;

    invoke-direct {p0}, Lyou/zta/sis/zta/dma;-><init>()V

    return-object p0
.end method

.method public generateKeyPair()Lorg/bouncycastle/crypto/you;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/ssp/bio;->params:Lorg/bouncycastle/crypto/wtn/ibl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->Ei()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    ushr-int/lit8 v2, v1, 0x2

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/ssp/bio;->yla:Ljava/security/SecureRandom;

    invoke-static {v1, v3}, Lorg/bouncycastle/util/you;->zta(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lyou/zta/sis/zta/sis;->Zna:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lyou/zta/sis/zta/fto;->obl(Ljava/math/BigInteger;)I

    move-result v4

    if-ge v4, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ssp/bio;->Zi()Lyou/zta/sis/zta/bio;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp/bio;->params:Lorg/bouncycastle/crypto/wtn/ibl;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/wtn/ibl;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lyou/zta/sis/zta/bio;->zta(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/you;

    new-instance v2, Lorg/bouncycastle/crypto/wtn/obl;

    iget-object v4, p0, Lorg/bouncycastle/crypto/ssp/bio;->params:Lorg/bouncycastle/crypto/wtn/ibl;

    invoke-direct {v2, v0, v4}, Lorg/bouncycastle/crypto/wtn/obl;-><init>(Lyou/zta/sis/zta/wtn;Lorg/bouncycastle/crypto/wtn/ibl;)V

    new-instance v0, Lorg/bouncycastle/crypto/wtn/zgw;

    iget-object p0, p0, Lorg/bouncycastle/crypto/ssp/bio;->params:Lorg/bouncycastle/crypto/wtn/ibl;

    invoke-direct {v0, v3, p0}, Lorg/bouncycastle/crypto/wtn/zgw;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/ibl;)V

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/you;-><init>(Lorg/bouncycastle/crypto/wtn/you;Lorg/bouncycastle/crypto/wtn/you;)V

    return-object v1
.end method

.method public zta(Lorg/bouncycastle/crypto/bvj;)V
    .locals 1

    check-cast p1, Lorg/bouncycastle/crypto/wtn/gwm;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/bvj;->Vi()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/ssp/bio;->yla:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/gwm;->hg()Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/ssp/bio;->params:Lorg/bouncycastle/crypto/wtn/ibl;

    iget-object p1, p0, Lorg/bouncycastle/crypto/ssp/bio;->yla:Ljava/security/SecureRandom;

    if-nez p1, :cond_0

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->Ui()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/ssp/bio;->yla:Ljava/security/SecureRandom;

    :cond_0
    return-void
.end method
