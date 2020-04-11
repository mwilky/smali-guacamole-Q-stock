.class public Lorg/bouncycastle/jcajce/you/tsu/bio$zta;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/bio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# instance fields
.field private Jna:I

.field private ioa:I

.field private joa:I

.field private scheme:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->id_PBKDF2:Lorg/bouncycastle/asn1/bvj;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;)V

    iput p2, p0, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;->scheme:I

    iput p4, p0, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;->Jna:I

    iput p5, p0, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;->ioa:I

    iput p3, p0, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;->joa:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIILorg/bouncycastle/jcajce/you/tsu/kth;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILorg/bouncycastle/jcajce/you/tsu/kth;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private zgw(Lorg/bouncycastle/asn1/bvj;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    invoke-static {}, Lorg/bouncycastle/jcajce/you/tsu/bio;->access$000()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid KeySpec: unknown PRF algorithm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
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

    if-eqz v0, :cond_6

    move-object v8, p1

    check-cast v8, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    iget v6, p0, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;->Jna:I

    if-eqz v6, :cond_0

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;->boa:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;->goa:Lorg/bouncycastle/asn1/bvj;

    iget v4, p0, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;->scheme:I

    iget v5, p0, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;->joa:I

    iget v7, p0, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;->ioa:I

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/bouncycastle/crypto/kth;)V

    return-object p1

    :cond_0
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p1

    array-length p1, p1

    if-eqz p1, :cond_2

    instance-of p1, v8, Lorg/bouncycastle/jcajce/sis/sis;

    if-eqz p1, :cond_1

    move-object p1, v8

    check-cast p1, Lorg/bouncycastle/jcajce/sis/sis;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/sis/sis;->lg()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;->zgw(Lorg/bouncycastle/asn1/bvj;)I

    move-result v5

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v6

    const/4 v7, -0x1

    iget p1, p0, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;->scheme:I

    invoke-static {v8, p1, v5, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/bouncycastle/crypto/kth;

    move-result-object v9

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;->boa:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;->goa:Lorg/bouncycastle/asn1/bvj;

    iget v4, p0, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;->scheme:I

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/bouncycastle/crypto/kth;)V

    return-object p1

    :cond_1
    iget v5, p0, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;->joa:I

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v6

    const/4 v7, -0x1

    iget p1, p0, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;->scheme:I

    invoke-static {v8, p1, v5, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/bouncycastle/crypto/kth;

    move-result-object v9

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;->boa:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/ssp;->goa:Lorg/bouncycastle/asn1/bvj;

    iget v4, p0, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;->scheme:I

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/bouncycastle/crypto/kth;)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "password empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "positive key length required: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "positive iteration count required: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "missing required salt"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "Invalid KeySpec"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
