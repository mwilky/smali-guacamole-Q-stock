.class public Lorg/bouncycastle/jcajce/you/tsu/rtg$cno;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "cno"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "DES"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;)V

    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/DESKeySpec;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/crypto/spec/DESKeySpec;

    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DESKeySpec;->getKey()[B

    move-result-object p1

    const-string v0, "DES"

    invoke-direct {p0, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    const-class v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;->ora:Ljava/lang/String;

    invoke-direct {p2, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p2

    :cond_0
    const-class p0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    :try_start_0
    new-instance p1, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {p1, p0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "Invalid KeySpec"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "key parameter is null"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "keySpec parameter is null"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
