.class public interface abstract Lorg/bouncycastle/crypto/igw/zta;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract f()Ljava/lang/String;
.end method

.method public abstract init(Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract rtg([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method

.method public abstract zta([BI)I
.end method
