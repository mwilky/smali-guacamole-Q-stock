.class public interface abstract Lorg/bouncycastle/crypto/bio/zta;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract b()Lorg/bouncycastle/crypto/rtg;
.end method

.method public abstract doFinal([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method

.method public abstract getMac()[B
.end method

.method public abstract getOutputSize(I)I
.end method

.method public abstract reset()V
.end method

.method public abstract sis([BII)V
.end method

.method public abstract vju()Ljava/lang/String;
.end method

.method public abstract you(I)I
.end method

.method public abstract zta(B[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation
.end method

.method public abstract zta([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation
.end method

.method public abstract zta(B)V
.end method

.method public abstract zta(ZLorg/bouncycastle/crypto/kth;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
