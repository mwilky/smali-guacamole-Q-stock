.class Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "you"
.end annotation


# instance fields
.field private Gpa:Lorg/bouncycastle/crypto/ssp;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/rtg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/igw/rtg;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/igw/rtg;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;->Gpa:Lorg/bouncycastle/crypto/ssp;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/crypto/rtg;Lorg/bouncycastle/crypto/igw/zta;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/igw/rtg;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/igw/rtg;-><init>(Lorg/bouncycastle/crypto/rtg;Lorg/bouncycastle/crypto/igw/zta;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;->Gpa:Lorg/bouncycastle/crypto/ssp;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/crypto/ssp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;->Gpa:Lorg/bouncycastle/crypto/ssp;

    return-void
.end method


# virtual methods
.method public b()Lorg/bouncycastle/crypto/rtg;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;->Gpa:Lorg/bouncycastle/crypto/ssp;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ssp;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object p0

    return-object p0
.end method

.method public doFinal([BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;->Gpa:Lorg/bouncycastle/crypto/ssp;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/ssp;->doFinal([BI)I

    move-result p0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fto()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;->Gpa:Lorg/bouncycastle/crypto/ssp;

    instance-of p0, p0, Lorg/bouncycastle/crypto/bio/rtg;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getOutputSize(I)I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;->Gpa:Lorg/bouncycastle/crypto/ssp;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/ssp;->getOutputSize(I)I

    move-result p0

    return p0
.end method

.method public updateAAD([BII)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "AAD is not supported in the current mode."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public vju()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;->Gpa:Lorg/bouncycastle/crypto/ssp;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ssp;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/rtg;->vju()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public you(I)I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;->Gpa:Lorg/bouncycastle/crypto/ssp;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/ssp;->you(I)I

    move-result p0

    return p0
.end method

.method public zta(B[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;->Gpa:Lorg/bouncycastle/crypto/ssp;

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/ssp;->zta(B[BI)I

    move-result p0

    return p0
.end method

.method public zta([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;->Gpa:Lorg/bouncycastle/crypto/ssp;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/ssp;->zta([BII[BI)I

    move-result p0

    return p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;->Gpa:Lorg/bouncycastle/crypto/ssp;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/ssp;->zta(ZLorg/bouncycastle/crypto/kth;)V

    return-void
.end method
