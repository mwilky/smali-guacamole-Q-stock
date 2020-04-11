.class public abstract Lorg/bouncycastle/jcajce/provider/symmetric/util/zta;
.super Ljava/security/AlgorithmParameterGeneratorSpi;
.source ""


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/tsu/tsu;

.field protected strength:I

.field protected xma:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/AlgorithmParameterGeneratorSpi;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/tsu/sis;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/tsu/sis;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/zta;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/zta;->strength:I

    return-void
.end method


# virtual methods
.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/zta;->strength:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/zta;->xma:Ljava/security/SecureRandom;

    return-void
.end method

.method protected final sa(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/zta;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    invoke-interface {p0, p1}, Lorg/bouncycastle/jcajce/tsu/tsu;->cno(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    return-object p0
.end method
