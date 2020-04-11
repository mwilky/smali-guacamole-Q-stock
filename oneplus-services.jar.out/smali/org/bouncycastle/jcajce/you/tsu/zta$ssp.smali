.class public Lorg/bouncycastle/jcajce/you/tsu/zta$ssp;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ssp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/bio/ssp;

    new-instance v1, Lorg/bouncycastle/crypto/rtg/zta;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/rtg/zta;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/bio/ssp;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;-><init>(Lorg/bouncycastle/crypto/bio/zta;)V

    :try_start_0
    const-string v0, "GCM"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->engineSetMode(Ljava/lang/String;)V

    const-string v0, "NoPadding"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->engineSetPadding(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not set mode or padding for GCM mode"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
