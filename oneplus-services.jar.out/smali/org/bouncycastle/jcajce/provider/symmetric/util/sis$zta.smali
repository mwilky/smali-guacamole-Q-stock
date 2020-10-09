.class Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zta"
.end annotation


# static fields
.field private static final iFa:Ljava/lang/reflect/Constructor;


# instance fields
.field private Rpa:Lorg/bouncycastle/crypto/bio/zta;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;

    const-string v1, "javax.crypto.AEADBadTagException"

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/igw;->zta(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;->tsu(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;->iFa:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/crypto/bio/zta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;->Rpa:Lorg/bouncycastle/crypto/bio/zta;

    return-void
.end method

.method private static tsu(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic zta(Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;)Lorg/bouncycastle/crypto/bio/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;->Rpa:Lorg/bouncycastle/crypto/bio/zta;

    return-object p0
.end method


# virtual methods
.method public b()Lorg/bouncycastle/crypto/rtg;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;->Rpa:Lorg/bouncycastle/crypto/bio/zta;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/bio/zta;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object p0

    return-object p0
.end method

.method public doFinal([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;->Rpa:Lorg/bouncycastle/crypto/bio/zta;

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/crypto/bio/zta;->doFinal([BI)I

    move-result p0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;->iFa:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/BadPaddingException;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_0

    throw p1

    :cond_0
    new-instance p1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fto()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOutputSize(I)I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;->Rpa:Lorg/bouncycastle/crypto/bio/zta;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/bio/zta;->getOutputSize(I)I

    move-result p0

    return p0
.end method

.method public updateAAD([BII)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;->Rpa:Lorg/bouncycastle/crypto/bio/zta;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/bio/zta;->sis([BII)V

    return-void
.end method

.method public vju()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;->Rpa:Lorg/bouncycastle/crypto/bio/zta;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/bio/zta;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/rtg;->vju()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public you(I)I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;->Rpa:Lorg/bouncycastle/crypto/bio/zta;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/bio/zta;->you(I)I

    move-result p0

    return p0
.end method

.method public zta(B[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;->Rpa:Lorg/bouncycastle/crypto/bio/zta;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/bio/zta;->zta(B[BI)I

    move-result p0

    return p0
.end method

.method public zta([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;->Rpa:Lorg/bouncycastle/crypto/bio/zta;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/bio/zta;->zta([BII[BI)I

    move-result p0

    return p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;->Rpa:Lorg/bouncycastle/crypto/bio/zta;

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/crypto/bio/zta;->zta(ZLorg/bouncycastle/crypto/kth;)V

    return-void
.end method
