.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;
.source ""

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/gck;


# instance fields
.field private digest:I

.field private hoa:Z

.field private ivSize:I

.field private keySize:I

.field private scheme:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;ZIIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;)V

    iput-boolean p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->hoa:Z

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->scheme:I

    iput p5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->digest:I

    iput p6, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->keySize:I

    iput p7, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->ivSize:I

    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_2

    move-object v8, p1

    check-cast v8, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;->boa:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;->goa:Lorg/bouncycastle/asn1/bvj;

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->scheme:I

    iget v5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->digest:I

    iget v6, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->keySize:I

    iget v7, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->ivSize:I

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/bouncycastle/crypto/kth;)V

    return-object p1

    :cond_0
    iget-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->hoa:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->scheme:I

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->digest:I

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->keySize:I

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->ivSize:I

    invoke-static {v8, p1, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta(Ljavax/crypto/spec/PBEKeySpec;IIII)Lorg/bouncycastle/crypto/kth;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->scheme:I

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->digest:I

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->keySize:I

    invoke-static {v8, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/bouncycastle/crypto/kth;

    move-result-object p1

    :goto_0
    move-object v9, p1

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;->boa:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;->goa:Lorg/bouncycastle/asn1/bvj;

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->scheme:I

    iget v5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->digest:I

    iget v6, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->keySize:I

    iget v7, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;->ivSize:I

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/bouncycastle/crypto/kth;)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "Invalid KeySpec"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
