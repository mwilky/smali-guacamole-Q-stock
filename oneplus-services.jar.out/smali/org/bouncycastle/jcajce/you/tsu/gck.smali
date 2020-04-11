.class public Lorg/bouncycastle/jcajce/you/tsu/gck;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/you/tsu/gck$you;,
        Lorg/bouncycastle/jcajce/you/tsu/gck$gck;,
        Lorg/bouncycastle/jcajce/you/tsu/gck$igw;,
        Lorg/bouncycastle/jcajce/you/tsu/gck$kth;,
        Lorg/bouncycastle/jcajce/you/tsu/gck$ssp;,
        Lorg/bouncycastle/jcajce/you/tsu/gck$tsu;,
        Lorg/bouncycastle/jcajce/you/tsu/gck$wtn;,
        Lorg/bouncycastle/jcajce/you/tsu/gck$bio;,
        Lorg/bouncycastle/jcajce/you/tsu/gck$cno;,
        Lorg/bouncycastle/jcajce/you/tsu/gck$rtg;,
        Lorg/bouncycastle/jcajce/you/tsu/gck$sis;,
        Lorg/bouncycastle/jcajce/you/tsu/gck$zta;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static sis([BI[B)Ljavax/crypto/spec/PBEParameterSpec;
    .locals 7

    :try_start_0
    const-class v0, Lorg/bouncycastle/jcajce/you/tsu/gck;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "javax.crypto.spec.PBEParameterSpec"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, [B

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    aput-object p0, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/crypto/spec/PBEParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Requested creation PBES2 parameters in an SDK that doesn\'t support them"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic zta([BI[B)Ljavax/crypto/spec/PBEParameterSpec;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/jcajce/you/tsu/gck;->sis([BI[B)Ljavax/crypto/spec/PBEParameterSpec;

    move-result-object p0

    return-object p0
.end method
