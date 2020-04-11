.class public Lorg/bouncycastle/jcajce/you/you/zta;
.super Ljava/security/MessageDigest;
.source ""


# instance fields
.field protected digest:Lorg/bouncycastle/crypto/qbh;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/qbh;)V
    .locals 1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/qbh;->vju()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/you/zta;->digest:Lorg/bouncycastle/crypto/qbh;

    return-void
.end method


# virtual methods
.method public engineDigest()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/you/you/zta;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v0

    new-array v0, v0, [B

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/you/zta;->digest:Lorg/bouncycastle/crypto/qbh;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    return-object v0
.end method

.method public engineReset()V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/you/zta;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/qbh;->reset()V

    return-void
.end method

.method public engineUpdate(B)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/you/zta;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/qbh;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/you/zta;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    return-void
.end method
