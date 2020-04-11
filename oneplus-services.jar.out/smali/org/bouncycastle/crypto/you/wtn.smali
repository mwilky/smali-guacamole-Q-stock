.class public Lorg/bouncycastle/crypto/you/wtn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/oif;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/you/wtn$ssp;,
        Lorg/bouncycastle/crypto/you/wtn$rtg;,
        Lorg/bouncycastle/crypto/you/wtn$tsu;,
        Lorg/bouncycastle/crypto/you/wtn$sis;,
        Lorg/bouncycastle/crypto/you/wtn$you;,
        Lorg/bouncycastle/crypto/you/wtn$zta;
    }
.end annotation


# instance fields
.field private final delegate:Ljava/security/MessageDigest;

.field private final pya:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "AndroidOpenSSL"

    invoke-static {p1, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/you/wtn;->delegate:Ljava/security/MessageDigest;

    iput p2, p0, Lorg/bouncycastle/crypto/you/wtn;->pya:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/crypto/you/wtn;->delegate:Ljava/security/MessageDigest;

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, p2, v0}, Ljava/security/MessageDigest;->digest([BII)I

    move-result p0
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getByteLength()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/you/wtn;->pya:I

    return p0
.end method

.method public les()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/you/wtn;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/you/wtn;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/you/wtn;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/you/wtn;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method

.method public vju()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/you/wtn;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
