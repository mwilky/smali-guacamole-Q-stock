.class public Lorg/bouncycastle/jcajce/you/tsu/rtg$kth;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "kth"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/ssp/zta;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ssp/zta;-><init>()V

    const-string v1, "DES"

    const/16 v2, 0x40

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/cno;)V

    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->qra:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->Voa:Lorg/bouncycastle/crypto/cno;

    new-instance v1, Lorg/bouncycastle/crypto/bvj;

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->gj()Ljava/security/SecureRandom;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->pra:I

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/bvj;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/cno;->zta(Lorg/bouncycastle/crypto/bvj;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->qra:Z

    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->Voa:Lorg/bouncycastle/crypto/cno;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/cno;->generateKey()[B

    move-result-object v1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->ora:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->engineInit(ILjava/security/SecureRandom;)V

    return-void
.end method
