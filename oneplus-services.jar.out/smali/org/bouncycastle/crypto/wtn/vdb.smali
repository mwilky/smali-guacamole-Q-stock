.class public Lorg/bouncycastle/crypto/wtn/vdb;
.super Lorg/bouncycastle/crypto/wtn/ibl;
.source ""


# instance fields
.field private name:Lorg/bouncycastle/asn1/bvj;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/crypto/wtn/ibl;)V
    .locals 6

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ibl;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ibl;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ibl;->Qi()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ibl;->Pi()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ibl;->getSeed()[B

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/wtn/ibl;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/vdb;->name:Lorg/bouncycastle/asn1/bvj;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)V
    .locals 7

    sget-object v5, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/wtn/vdb;-><init>(Lorg/bouncycastle/asn1/bvj;Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/wtn/vdb;-><init>(Lorg/bouncycastle/asn1/bvj;Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/wtn/ibl;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/vdb;->name:Lorg/bouncycastle/asn1/bvj;

    return-void
.end method


# virtual methods
.method public getName()Lorg/bouncycastle/asn1/bvj;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/vdb;->name:Lorg/bouncycastle/asn1/bvj;

    return-object p0
.end method
