.class public abstract Lorg/bouncycastle/jcajce/provider/asymmetric/util/you;
.super Ljava/security/AlgorithmParameterGeneratorSpi;
.source ""


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/tsu/tsu;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/AlgorithmParameterGeneratorSpi;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/tsu/you;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/tsu/you;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/you;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    return-void
.end method


# virtual methods
.method protected final ra(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/you;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    invoke-interface {p0, p1}, Lorg/bouncycastle/jcajce/tsu/tsu;->cno(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    return-object p0
.end method
