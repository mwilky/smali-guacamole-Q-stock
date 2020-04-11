.class public Lorg/bouncycastle/crypto/rtg/sis;
.super Lorg/bouncycastle/crypto/rtg/igw;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/rtg/zta;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/rtg/zta;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/rtg/igw;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/rtg/zta;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/rtg/zta;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/rtg/igw;-><init>(Lorg/bouncycastle/crypto/rtg;Z)V

    return-void
.end method
