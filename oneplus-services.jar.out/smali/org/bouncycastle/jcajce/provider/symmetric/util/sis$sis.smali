.class interface abstract Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "sis"
.end annotation


# virtual methods
.method public abstract b()Lorg/bouncycastle/crypto/rtg;
.end method

.method public abstract doFinal([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method public abstract fto()Z
.end method

.method public abstract getOutputSize(I)I
.end method

.method public abstract updateAAD([BII)V
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

.method public abstract zta(ZLorg/bouncycastle/crypto/kth;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
