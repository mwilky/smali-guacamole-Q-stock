.class public Lorg/bouncycastle/crypto/ssp/you;
.super Lorg/bouncycastle/crypto/ssp/zta;
.source ""


# static fields
.field private static final fxa:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/ssp/zta;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/cno;->strength:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/cno;->xma:Ljava/security/SecureRandom;

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/wtn/sis;->bvj([B)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    array-length v3, v0

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/crypto/wtn/tsu;->bio([BII)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/wtn/tsu;->bio([BI)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    array-length p0, v0

    invoke-static {v0, v1, p0}, Lorg/bouncycastle/crypto/wtn/tsu;->bio([BII)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/wtn/tsu;->bio([BI)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to generate DES-EDE key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(Lorg/bouncycastle/crypto/bvj;)V
    .locals 3

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/bvj;->Zi()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/cno;->xma:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/bvj;->getStrength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/cno;->strength:I

    iget p1, p0, Lorg/bouncycastle/crypto/cno;->strength:I

    const/16 v0, 0x18

    if-eqz p1, :cond_3

    const/16 v1, 0x15

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    const/16 v2, 0x10

    if-ne p1, v1, :cond_1

    iput v2, p0, Lorg/bouncycastle/crypto/cno;->strength:I

    goto :goto_1

    :cond_1
    if-eq p1, v0, :cond_4

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DESede key must be 192 or 128 bits long."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iput v0, p0, Lorg/bouncycastle/crypto/cno;->strength:I

    :cond_4
    :goto_1
    return-void
.end method
