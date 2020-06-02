.class public Lorg/bouncycastle/jcajce/bio$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/bio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# instance fields
.field private iqa:I

.field private jqa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final pEa:Lorg/bouncycastle/jcajce/wtn;


# direct methods
.method public constructor <init>(Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lorg/bouncycastle/jcajce/bio$zta;->iqa:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/bio$zta;->jqa:Ljava/util/Set;

    new-instance v0, Lorg/bouncycastle/jcajce/wtn$zta;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/wtn$zta;-><init>(Ljava/security/cert/PKIXParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/wtn$zta;->build()Lorg/bouncycastle/jcajce/wtn;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/bio$zta;->pEa:Lorg/bouncycastle/jcajce/wtn;

    invoke-virtual {p1}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/bio$zta;->iqa:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/wtn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lorg/bouncycastle/jcajce/bio$zta;->iqa:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/bio$zta;->jqa:Ljava/util/Set;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/bio$zta;->pEa:Lorg/bouncycastle/jcajce/wtn;

    return-void
.end method

.method static synthetic sis(Lorg/bouncycastle/jcajce/bio$zta;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/bio$zta;->iqa:I

    return p0
.end method

.method static synthetic you(Lorg/bouncycastle/jcajce/bio$zta;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/bio$zta;->jqa:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic zta(Lorg/bouncycastle/jcajce/bio$zta;)Lorg/bouncycastle/jcajce/wtn;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/bio$zta;->pEa:Lorg/bouncycastle/jcajce/wtn;

    return-object p0
.end method


# virtual methods
.method public build()Lorg/bouncycastle/jcajce/bio;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/bio;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/bio;-><init>(Lorg/bouncycastle/jcajce/bio$zta;Lorg/bouncycastle/jcajce/kth;)V

    return-object v0
.end method

.method public setMaxPathLength(I)Lorg/bouncycastle/jcajce/bio$zta;
    .locals 1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lorg/bouncycastle/jcajce/bio$zta;->iqa:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "The maximum path length parameter can not be less than -1."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ssp(Ljava/util/Set;)Lorg/bouncycastle/jcajce/bio$zta;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lorg/bouncycastle/jcajce/bio$zta;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/bio$zta;->jqa:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
