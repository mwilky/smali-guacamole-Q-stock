.class public Lorg/bouncycastle/crypto/wtn/zgw;
.super Lorg/bouncycastle/crypto/wtn/ugm;
.source ""


# instance fields
.field d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/ibl;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/wtn/ugm;-><init>(ZLorg/bouncycastle/crypto/wtn/ibl;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/zgw;->d:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public tsu()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/zgw;->d:Ljava/math/BigInteger;

    return-object p0
.end method
