.class public interface abstract Lorg/bouncycastle/crypto/rtg;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getBlockSize()I
.end method

.method public abstract reset()V
.end method

.method public abstract vju()Ljava/lang/String;
.end method

.method public abstract zta([BI[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract zta(ZLorg/bouncycastle/crypto/kth;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
