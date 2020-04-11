.class public interface abstract Lorg/bouncycastle/crypto/ibl;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract doFinal([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract update(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract update([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract vju()Ljava/lang/String;
.end method

.method public abstract you()I
.end method

.method public abstract you(Lorg/bouncycastle/crypto/kth;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
