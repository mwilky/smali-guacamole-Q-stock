.class public Lorg/bouncycastle/jcajce/you/tsu/ssp$kth;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "kth"
.end annotation


# instance fields
.field private eoa:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/ssp/you;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ssp/you;-><init>()V

    const-string v1, "DESede"

    const/16 v2, 0xc0

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/cno;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/you/tsu/ssp$kth;->eoa:Z

    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 5

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->doa:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->Hla:Lorg/bouncycastle/crypto/cno;

    new-instance v2, Lorg/bouncycastle/crypto/bvj;

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->Ui()Ljava/security/SecureRandom;

    move-result-object v3

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->coa:I

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/crypto/bvj;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/cno;->zta(Lorg/bouncycastle/crypto/bvj;)V

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->doa:Z

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/you/tsu/ssp$kth;->eoa:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->Hla:Lorg/bouncycastle/crypto/cno;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/cno;->generateKey()[B

    move-result-object v0

    const/16 v2, 0x10

    const/16 v3, 0x8

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->boa:Ljava/lang/String;

    invoke-direct {v1, v0, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->Hla:Lorg/bouncycastle/crypto/cno;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/cno;->generateKey()[B

    move-result-object v1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->boa:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->engineInit(ILjava/security/SecureRandom;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/you/tsu/ssp$kth;->eoa:Z

    return-void
.end method
