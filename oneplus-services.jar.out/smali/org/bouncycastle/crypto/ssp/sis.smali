.class public Lorg/bouncycastle/crypto/ssp/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/sis;


# instance fields
.field private param:Lorg/bouncycastle/crypto/wtn/rtg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/you;
    .locals 4

    sget-object v0, Lorg/bouncycastle/crypto/ssp/tsu;->INSTANCE:Lorg/bouncycastle/crypto/ssp/tsu;

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp/sis;->param:Lorg/bouncycastle/crypto/wtn/rtg;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/wtn/rtg;->getParameters()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object v1

    iget-object p0, p0, Lorg/bouncycastle/crypto/ssp/sis;->param:Lorg/bouncycastle/crypto/wtn/rtg;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/bvj;->hj()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/bouncycastle/crypto/ssp/tsu;->zta(Lorg/bouncycastle/crypto/wtn/cno;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/bouncycastle/crypto/ssp/tsu;->zta(Lorg/bouncycastle/crypto/wtn/cno;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/crypto/you;

    new-instance v3, Lorg/bouncycastle/crypto/wtn/bio;

    invoke-direct {v3, v0, v1}, Lorg/bouncycastle/crypto/wtn/bio;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)V

    new-instance v0, Lorg/bouncycastle/crypto/wtn/kth;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/wtn/kth;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)V

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/you;-><init>(Lorg/bouncycastle/crypto/wtn/you;Lorg/bouncycastle/crypto/wtn/you;)V

    return-object v2
.end method

.method public zta(Lorg/bouncycastle/crypto/bvj;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/wtn/rtg;

    iput-object p1, p0, Lorg/bouncycastle/crypto/ssp/sis;->param:Lorg/bouncycastle/crypto/wtn/rtg;

    return-void
.end method
