.class public Lorg/bouncycastle/crypto/wtn/gwm;
.super Lorg/bouncycastle/crypto/bvj;
.source ""


# instance fields
.field private Oza:Lorg/bouncycastle/crypto/wtn/ibl;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/wtn/ibl;Ljava/security/SecureRandom;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ibl;->Si()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/bvj;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/gwm;->Oza:Lorg/bouncycastle/crypto/wtn/ibl;

    return-void
.end method


# virtual methods
.method public vg()Lorg/bouncycastle/crypto/wtn/ibl;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/gwm;->Oza:Lorg/bouncycastle/crypto/wtn/ibl;

    return-object p0
.end method
