.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field algorithm:Ljava/lang/String;

.field digest:I

.field ivSize:I

.field keySize:I

.field oid:Lorg/bouncycastle/asn1/bvj;

.field param:Lorg/bouncycastle/crypto/kth;

.field pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

.field tryWrong:Z

.field type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/KeySpec;Lorg/bouncycastle/crypto/kth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lorg/bouncycastle/crypto/kth;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/bouncycastle/crypto/kth;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->oid:Lorg/bouncycastle/asn1/bvj;

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->digest:I

    iput p5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->keySize:I

    iput p6, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->ivSize:I

    iput-object p7, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    iput-object p8, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lorg/bouncycastle/crypto/kth;

    return-void
.end method


# virtual methods
.method Gf()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->digest:I

    return p0
.end method

.method public Li()Lorg/bouncycastle/asn1/bvj;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->oid:Lorg/bouncycastle/asn1/bvj;

    return-object p0
.end method

.method public Xd()Lorg/bouncycastle/crypto/kth;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lorg/bouncycastle/crypto/kth;

    return-object p0
.end method

.method public Y(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lorg/bouncycastle/crypto/kth;

    if-eqz v0, :cond_1

    instance-of p0, v0, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz p0, :cond_0

    check-cast v0, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/wtn/cjf;

    goto :goto_0

    :cond_0
    move-object p0, v0

    check-cast p0, Lorg/bouncycastle/crypto/wtn/cjf;

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/cjf;->getKey()[B

    move-result-object p0

    return-object p0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/gwm;->zta([C)[B

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x5

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    if-ne v0, v1, :cond_3

    invoke-static {p0}, Lorg/bouncycastle/crypto/gwm;->you([C)[B

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lorg/bouncycastle/crypto/gwm;->PKCS5PasswordToBytes([C)[B

    move-result-object p0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "RAW"

    return-object p0
.end method

.method public getIterationCount()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p0

    return p0
.end method

.method getKeySize()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->keySize:I

    return p0
.end method

.method public getPassword()[C
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    return-object p0
.end method

.method public getSalt()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object p0

    return-object p0
.end method

.method getType()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    return p0
.end method

.method public wj()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->ivSize:I

    return p0
.end method

.method xj()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    return p0
.end method
