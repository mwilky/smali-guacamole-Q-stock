.class public Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "rtg"
.end annotation


# instance fields
.field private digest:I

.field private ivSize:I

.field private keySize:I

.field private scheme:I

.field private ura:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;ZIIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;)V

    iput-boolean p3, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->ura:Z

    iput p4, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->scheme:I

    iput p5, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->digest:I

    iput p6, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->keySize:I

    iput p7, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->ivSize:I

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

    if-eqz v0, :cond_3

    move-object v8, p1

    check-cast v8, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;->ora:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;->tra:Lorg/bouncycastle/asn1/bvj;

    iget v4, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->scheme:I

    iget v5, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->digest:I

    iget v6, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->keySize:I

    iget v7, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->ivSize:I

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/bouncycastle/crypto/kth;)V

    return-object p1

    :cond_0
    iget-boolean p1, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->ura:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->scheme:I

    iget v0, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->digest:I

    iget v1, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->keySize:I

    iget v2, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->ivSize:I

    invoke-static {v8, p1, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta(Ljavax/crypto/spec/PBEKeySpec;IIII)Lorg/bouncycastle/crypto/kth;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->scheme:I

    iget v0, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->digest:I

    iget v1, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->keySize:I

    invoke-static {v8, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/bouncycastle/crypto/kth;

    move-result-object p1

    :goto_0
    move-object v9, p1

    instance-of p1, v9, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz p1, :cond_2

    move-object p1, v9

    check-cast p1, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/wtn/cjf;

    goto :goto_1

    :cond_2
    move-object p1, v9

    check-cast p1, Lorg/bouncycastle/crypto/wtn/cjf;

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cjf;->getKey()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/wtn/sis;->bvj([B)V

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;->ora:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;->tra:Lorg/bouncycastle/asn1/bvj;

    iget v4, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->scheme:I

    iget v5, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->digest:I

    iget v6, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->keySize:I

    iget v7, p0, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;->ivSize:I

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/bouncycastle/crypto/kth;)V

    return-object p1

    :cond_3
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "Invalid KeySpec"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
