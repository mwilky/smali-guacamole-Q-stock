.class public Lorg/bouncycastle/crypto/ssp/zta;
.super Lorg/bouncycastle/crypto/cno;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/cno;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/cno;->Xoa:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/wtn/sis;->bvj([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/wtn/sis;->ssp([BI)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public zta(Lorg/bouncycastle/crypto/bvj;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/cno;->zta(Lorg/bouncycastle/crypto/bvj;)V

    iget p1, p0, Lorg/bouncycastle/crypto/cno;->strength:I

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DES key must be 64 bits long."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iput v0, p0, Lorg/bouncycastle/crypto/cno;->strength:I

    :goto_1
    return-void
.end method
