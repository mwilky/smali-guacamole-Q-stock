.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source ""

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/gck;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;,
        Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;,
        Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;
    }
.end annotation


# static fields
.field private static final cra:Ljava/lang/Class;


# instance fields
.field private Fqa:[Ljava/lang/Class;

.field private Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

.field private Sqa:Lorg/bouncycastle/crypto/rtg;

.field private Tqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/kth;

.field private Uqa:Lorg/bouncycastle/crypto/wtn/ire;

.field private Vqa:Lorg/bouncycastle/crypto/wtn/zta;

.field private Wqa:I

.field private Xqa:I

.field private Yqa:Z

.field private Zqa:Z

.field private _qa:Ljavax/crypto/spec/PBEParameterSpec;

.field private ara:Ljava/lang/String;

.field private bra:Ljava/lang/String;

.field private digest:I

.field private scheme:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;

    const-string v1, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/igw;->zta(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->cra:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/bio/zta;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->cra:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Fqa:[Ljava/lang/Class;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->scheme:I

    iput v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    iput-boolean v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Zqa:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->ara:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/bio/zta;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;-><init>(Lorg/bouncycastle/crypto/bio/zta;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/bio/zta;ZI)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->cra:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Fqa:[Ljava/lang/Class;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->scheme:I

    iput v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    iput-boolean v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Zqa:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->ara:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/bio/zta;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Zqa:Z

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    new-instance p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;

    invoke-direct {p2, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;-><init>(Lorg/bouncycastle/crypto/bio/zta;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/rtg;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->cra:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Fqa:[Ljava/lang/Class;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->scheme:I

    iput v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    iput-boolean v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Zqa:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->ara:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/rtg;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;-><init>(Lorg/bouncycastle/crypto/rtg;ZI)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/rtg;IIII)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->cra:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Fqa:[Ljava/lang/Class;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->scheme:I

    iput v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    iput-boolean v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Zqa:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->ara:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->scheme:I

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->digest:I

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Wqa:I

    iput p5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    new-instance p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    invoke-direct {p2, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/rtg;ZI)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->cra:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Fqa:[Ljava/lang/Class;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->scheme:I

    iput v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    iput-boolean v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Zqa:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->ara:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Zqa:Z

    new-instance p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    invoke-direct {p2, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/ssp;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;-><init>(Lorg/bouncycastle/crypto/ssp;ZI)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/ssp;ZI)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->cra:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Fqa:[Ljava/lang/Class;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->scheme:I

    iput v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    iput-boolean v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Zqa:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->ara:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/ssp;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/ssp;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Zqa:Z

    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/jcajce/provider/symmetric/util/kth;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->cra:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Fqa:[Ljava/lang/Class;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->scheme:I

    iput v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    iput-boolean v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Zqa:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->ara:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    invoke-interface {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/kth;->get()Lorg/bouncycastle/crypto/rtg;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Tqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/kth;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    invoke-interface {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/kth;->get()Lorg/bouncycastle/crypto/rtg;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    return-void
.end method

.method private Yc(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "CCM"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "GCM"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private zta(Ljava/security/spec/AlgorithmParameterSpec;Lorg/bouncycastle/crypto/kth;)Lorg/bouncycastle/crypto/kth;
    .locals 2

    instance-of v0, p2, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object v0

    instance-of v1, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_1

    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    new-instance p2, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Uqa:Lorg/bouncycastle/crypto/wtn/ire;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_1

    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    new-instance v0, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Uqa:Lorg/bouncycastle/crypto/wtn/ire;

    :goto_0
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Uqa:Lorg/bouncycastle/crypto/wtn/ire;

    :cond_1
    return-object p2
.end method

.method private zta(Ljava/security/Key;)Z
    .locals 0

    instance-of p0, p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz p0, :cond_0

    check-cast p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->he()Lorg/bouncycastle/crypto/kth;

    move-result-object p0

    instance-of p0, p0, Lorg/bouncycastle/crypto/wtn/ire;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->engineGetOutputSize(I)I

    move-result v0

    add-int/2addr v0, p5

    array-length v1, p4

    if-gt v0, v1, :cond_1

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->zta([BII[BI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    add-int/2addr p5, p1

    invoke-interface {p0, p4, p5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->doFinal([BI)I

    move-result p0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/OutputLengthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, p0

    return p1

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljavax/crypto/ShortBufferException;

    const-string p1, "output buffer too short for input."

    invoke-direct {p0, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineDoFinal([BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->engineGetOutputSize(I)I

    move-result v0

    new-array v0, v0, [B

    const/4 v7, 0x0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    invoke-interface/range {v1 .. v6}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->zta([BII[BI)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v7

    :goto_0
    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->doFinal([BI)I

    move-result p0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, p0

    array-length p0, v0

    if-ne p1, p0, :cond_1

    return-object v0

    :cond_1
    new-array p0, p1, [B

    invoke-static {v0, v7, p0, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineGetBlockSize()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p0

    return p0
.end method

.method protected engineGetIV()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Vqa:Lorg/bouncycastle/crypto/wtn/zta;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/zta;->getNonce()[B

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Uqa:Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ire;->getIV()[B

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method protected engineGetOutputSize(I)I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->getOutputSize(I)I

    move-result p0

    return p0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->ara:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ua(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Vqa:Lorg/bouncycastle/crypto/wtn/zta;

    if-eqz v0, :cond_1

    :try_start_1
    const-string v0, "GCM"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ua(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    new-instance v1, Lorg/bouncycastle/asn1/you/kth;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Vqa:Lorg/bouncycastle/crypto/wtn/zta;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/wtn/zta;->getNonce()[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Vqa:Lorg/bouncycastle/crypto/wtn/zta;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/wtn/zta;->you()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/you/kth;-><init>([BI)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Uqa:Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/rtg;->vju()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ua(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Uqa:Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/wtn/ire;->getIV()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Fqa:[Ljava/lang/Class;

    array-length v3, v2

    if-eq v1, v3, :cond_1

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    aget-object v2, v2, v1

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "can\'t handle parameter "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_3
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    iput-object v5, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v5, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->ara:Ljava/lang/String;

    iput-object v5, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    iput-object v5, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Vqa:Lorg/bouncycastle/crypto/wtn/zta;

    instance-of v6, v2, Ljavax/crypto/SecretKey;

    if-nez v6, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key for algorithm "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not suitable for symmetric enryption."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v3, :cond_3

    iget-object v5, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/rtg;->vju()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RC5-64"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "RC5 requires an RC5ParametersSpec to be passed in."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget v5, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->scheme:I

    const-string v7, "Algorithm requires a PBE key"

    const/4 v8, 0x2

    if-eq v5, v8, :cond_4

    instance-of v5, v2, Lorg/bouncycastle/jcajce/PKCS12Key;

    if-eqz v5, :cond_d

    :cond_4
    invoke-direct {v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->zta(Ljava/security/Key;)Z

    move-result v5

    if-nez v5, :cond_d

    :try_start_0
    move-object v5, v2

    check-cast v5, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v10, v3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v10, :cond_5

    move-object v10, v3

    check-cast v10, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v10, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    :cond_5
    instance-of v10, v5, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v10, :cond_7

    iget-object v11, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v11, :cond_7

    move-object v11, v5

    check-cast v11, Ljavax/crypto/interfaces/PBEKey;

    invoke-interface {v11}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v12

    if-eqz v12, :cond_6

    new-instance v12, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-interface {v11}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v13

    invoke-interface {v11}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v11

    invoke-direct {v12, v13, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v12, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "PBEKey requires parameters to specify salt"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_1
    iget-object v11, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v11, :cond_9

    if-eqz v10, :cond_8

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_2
    instance-of v7, v2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v7, :cond_c

    move-object v5, v2

    check-cast v5, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->he()Lorg/bouncycastle/crypto/kth;

    move-result-object v5

    instance-of v7, v5, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz v7, :cond_a

    goto :goto_3

    :cond_a
    if-nez v5, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unreachable code"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Algorithm requires a PBE key suitable for PKCS12"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v10

    const/4 v11, 0x2

    iget v12, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->digest:I

    iget v13, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Wqa:I

    iget v5, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    mul-int/lit8 v14, v5, 0x8

    iget-object v15, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v5, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->vju()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v10 .. v16}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/kth;

    move-result-object v5

    :goto_3
    instance-of v7, v5, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz v7, :cond_15

    move-object v7, v5

    check-cast v7, Lorg/bouncycastle/crypto/wtn/ire;

    iput-object v7, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Uqa:Lorg/bouncycastle/crypto/wtn/ire;

    goto/16 :goto_7

    :catch_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "PKCS12 requires a SecretKey/PBEKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    instance-of v5, v2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v5, :cond_12

    move-object v5, v2

    check-cast v5, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->Yi()Lorg/bouncycastle/asn1/bvj;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->Yi()Lorg/bouncycastle/asn1/bvj;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_e
    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    :goto_4
    iput-object v7, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->ara:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->he()Lorg/bouncycastle/crypto/kth;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->he()Lorg/bouncycastle/crypto/kth;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->zta(Ljava/security/spec/AlgorithmParameterSpec;Lorg/bouncycastle/crypto/kth;)Lorg/bouncycastle/crypto/kth;

    move-result-object v5

    goto :goto_5

    :cond_f
    instance-of v7, v3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v7, :cond_11

    move-object v7, v3

    check-cast v7, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v7, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v7, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v7

    array-length v7, v7

    if-eqz v7, :cond_10

    iget-object v7, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v7

    if-lez v7, :cond_10

    new-instance v7, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->Yi()Lorg/bouncycastle/asn1/bvj;

    move-result-object v12

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v13

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->Tf()I

    move-result v14

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v15

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->Jj()I

    move-result v16

    new-instance v10, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getPassword()[C

    move-result-object v8

    iget-object v9, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v9}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v9

    iget-object v6, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v6}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v6

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v5

    invoke-direct {v10, v8, v9, v6, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const/16 v18, 0x0

    move-object v5, v10

    move-object v10, v7

    move-object/from16 v17, v5

    invoke-direct/range {v10 .. v18}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/bouncycastle/crypto/kth;)V

    move-object v5, v7

    :cond_10
    iget-object v6, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {v6}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object v6

    invoke-interface {v6}, Lorg/bouncycastle/crypto/rtg;->vju()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/kth;

    move-result-object v5

    :goto_5
    instance-of v6, v5, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz v6, :cond_15

    :goto_6
    move-object v6, v5

    check-cast v6, Lorg/bouncycastle/crypto/wtn/ire;

    iput-object v6, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Uqa:Lorg/bouncycastle/crypto/wtn/ire;

    goto :goto_7

    :cond_11
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "PBE requires PBE parameters to be set."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    instance-of v5, v2, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v5, :cond_14

    move-object v5, v2

    check-cast v5, Ljavax/crypto/interfaces/PBEKey;

    move-object v6, v3

    check-cast v6, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v6, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    instance-of v6, v5, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;

    if-eqz v6, :cond_13

    iget-object v6, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v6, :cond_13

    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-interface {v5}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v7

    invoke-interface {v5}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v8

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v6, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    :cond_13
    invoke-interface {v5}, Ljavax/crypto/interfaces/PBEKey;->getEncoded()[B

    move-result-object v9

    iget v10, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->scheme:I

    iget v11, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->digest:I

    iget v12, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Wqa:I

    iget v5, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    mul-int/lit8 v13, v5, 0x8

    iget-object v14, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->_qa:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v5, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->vju()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v9 .. v15}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/kth;

    move-result-object v5

    instance-of v6, v5, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz v6, :cond_15

    goto :goto_6

    :cond_14
    iget v5, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->scheme:I

    if-eqz v5, :cond_31

    const/4 v6, 0x4

    if-eq v5, v6, :cond_31

    const/4 v6, 0x1

    if-eq v5, v6, :cond_31

    const/4 v6, 0x5

    if-eq v5, v6, :cond_31

    new-instance v5, Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/wtn/cjf;-><init>([B)V

    :cond_15
    :goto_7
    instance-of v6, v3, Lorg/bouncycastle/jcajce/sis/zta;

    const/4 v7, 0x0

    if-eqz v6, :cond_19

    iget-object v6, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    invoke-direct {v0, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Yc(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    instance-of v6, v6, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;

    if-eqz v6, :cond_16

    goto :goto_8

    :cond_16
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "AEADParameterSpec can only be used with AEAD modes."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_8
    check-cast v3, Lorg/bouncycastle/jcajce/sis/zta;

    instance-of v6, v5, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz v6, :cond_18

    check-cast v5, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object v5

    :cond_18
    check-cast v5, Lorg/bouncycastle/crypto/wtn/cjf;

    new-instance v6, Lorg/bouncycastle/crypto/wtn/zta;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/sis/zta;->xg()I

    move-result v8

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/sis/zta;->getNonce()[B

    move-result-object v9

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/sis/zta;->wg()[B

    move-result-object v3

    invoke-direct {v6, v5, v8, v9, v3}, Lorg/bouncycastle/crypto/wtn/zta;-><init>(Lorg/bouncycastle/crypto/wtn/cjf;I[B[B)V

    iput-object v6, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Vqa:Lorg/bouncycastle/crypto/wtn/zta;

    move-object v5, v6

    goto/16 :goto_c

    :cond_19
    instance-of v6, v3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v6, :cond_1f

    iget v6, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    if-eqz v6, :cond_1d

    check-cast v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v6

    array-length v6, v6

    iget v8, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    if-eq v6, v8, :cond_1b

    iget-object v6, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    instance-of v6, v6, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;

    if-nez v6, :cond_1b

    iget-boolean v6, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Zqa:Z

    if-nez v6, :cond_1a

    goto :goto_9

    :cond_1a
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IV must be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes long."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    :goto_9
    instance-of v6, v5, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz v6, :cond_1c

    new-instance v6, Lorg/bouncycastle/crypto/wtn/ire;

    check-cast v5, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object v5

    invoke-virtual {v3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v6, v5, v3}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    goto :goto_a

    :cond_1c
    new-instance v6, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {v3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v6, v5, v3}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    :goto_a
    move-object v5, v6

    iput-object v5, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Uqa:Lorg/bouncycastle/crypto/wtn/ire;

    goto/16 :goto_c

    :cond_1d
    iget-object v3, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    if-eqz v3, :cond_25

    const-string v6, "ECB"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto/16 :goto_c

    :cond_1e
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ECB mode does not use an IV"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    sget-object v6, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->cra:Ljava/lang/Class;

    if-eqz v6, :cond_23

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    iget-object v6, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    invoke-direct {v0, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Yc(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    iget-object v6, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    instance-of v6, v6, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;

    if-eqz v6, :cond_20

    goto :goto_b

    :cond_20
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "GCMParameterSpec can only be used with AEAD modes."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_b
    :try_start_1
    sget-object v6, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->cra:Ljava/lang/Class;

    const-string v8, "getTLen"

    new-array v9, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sget-object v8, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->cra:Ljava/lang/Class;

    const-string v9, "getIV"

    new-array v10, v7, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    instance-of v9, v5, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz v9, :cond_22

    check-cast v5, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object v5

    :cond_22
    check-cast v5, Lorg/bouncycastle/crypto/wtn/cjf;

    new-instance v9, Lorg/bouncycastle/crypto/wtn/zta;

    new-array v10, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v10, v7, [Ljava/lang/Object;

    invoke-virtual {v8, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v9, v5, v6, v3}, Lorg/bouncycastle/crypto/wtn/zta;-><init>(Lorg/bouncycastle/crypto/wtn/cjf;I[B)V

    iput-object v9, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Vqa:Lorg/bouncycastle/crypto/wtn/zta;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v9

    goto :goto_c

    :catch_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Cannot process GCMParameterSpec."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    if-eqz v3, :cond_25

    instance-of v3, v3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v3, :cond_24

    goto :goto_c

    :cond_24
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "unknown parameter type."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    :goto_c
    iget v3, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    const/4 v6, 0x3

    if-eqz v3, :cond_2b

    instance-of v3, v5, Lorg/bouncycastle/crypto/wtn/ire;

    if-nez v3, :cond_2b

    instance-of v3, v5, Lorg/bouncycastle/crypto/wtn/zta;

    if-nez v3, :cond_2b

    if-nez v4, :cond_26

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->gj()Ljava/security/SecureRandom;

    move-result-object v3

    goto :goto_d

    :cond_26
    move-object v3, v4

    :goto_d
    const-string v8, "No IV set when using PBE key"

    const-string v9, " * throw an exception."

    const-string v10, " * with an all-zero IV, but in a future release this call will"

    const-string v11, " * configuration is deprecated.  The cipher will be initialized"

    const-string v12, " * have not provided an IV in the AlgorithmParameterSpec.  This"

    const-string v13, " * You have initialized a cipher with a PBE key with no IV and"

    const-string v14, " ******** DEPRECATED FUNCTIONALITY ********"

    const/4 v15, 0x1

    if-eq v1, v15, :cond_29

    if-ne v1, v6, :cond_27

    goto :goto_e

    :cond_27
    iget-object v3, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {v3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object v3

    invoke-interface {v3}, Lorg/bouncycastle/crypto/rtg;->vju()Ljava/lang/String;

    move-result-object v3

    const-string v15, "PGPCFB"

    invoke-virtual {v3, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2b

    invoke-direct {v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->zta(Ljava/security/Key;)Z

    move-result v2

    if-eqz v2, :cond_28

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v2, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace(Ljava/io/PrintStream;)V

    new-instance v2, Lorg/bouncycastle/crypto/wtn/ire;

    iget v3, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    new-array v3, v3, [B

    invoke-direct {v2, v5, v3}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    goto :goto_10

    :cond_28
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "no IV set when one expected"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    :goto_e
    iget v15, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    new-array v15, v15, [B

    invoke-direct {v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->zta(Ljava/security/Key;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v3, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_f

    :cond_2a
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v2, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_f
    new-instance v2, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-direct {v2, v5, v15}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    :goto_10
    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Uqa:Lorg/bouncycastle/crypto/wtn/ire;

    goto :goto_11

    :cond_2b
    move-object v2, v5

    :goto_11
    if-eqz v4, :cond_2c

    iget-boolean v3, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Yqa:Z

    if-eqz v3, :cond_2c

    new-instance v3, Lorg/bouncycastle/crypto/wtn/hmo;

    invoke-direct {v3, v2, v4}, Lorg/bouncycastle/crypto/wtn/hmo;-><init>(Lorg/bouncycastle/crypto/kth;Ljava/security/SecureRandom;)V

    move-object v2, v3

    :cond_2c
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2f

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2e

    if-eq v1, v6, :cond_2f

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2d

    goto :goto_12

    :cond_2d
    :try_start_2
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown opmode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " passed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    goto :goto_14

    :cond_2e
    :goto_12
    iget-object v1, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {v1, v7, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->zta(ZLorg/bouncycastle/crypto/kth;)V

    goto :goto_13

    :cond_2f
    iget-object v1, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->zta(ZLorg/bouncycastle/crypto/kth;)V

    :goto_13
    iget-object v1, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    instance-of v1, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;

    if-eqz v1, :cond_30

    iget-object v1, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Vqa:Lorg/bouncycastle/crypto/wtn/zta;

    if-nez v1, :cond_30

    iget-object v1, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    check-cast v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;->zta(Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;)Lorg/bouncycastle/crypto/bio/zta;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/wtn/zta;

    iget-object v3, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Uqa:Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/bio/zta;->getMac()[B

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    iget-object v4, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Uqa:Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/wtn/ire;->getIV()[B

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lorg/bouncycastle/crypto/wtn/zta;-><init>(Lorg/bouncycastle/crypto/wtn/cjf;I[B)V

    iput-object v2, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Vqa:Lorg/bouncycastle/crypto/wtn/zta;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_30
    return-void

    :goto_14
    new-instance v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_31
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    const-string v2, "CBC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    new-instance v0, Lorg/bouncycastle/crypto/bio/you;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/bio/you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    const-string v2, "OFB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    new-instance v1, Lorg/bouncycastle/crypto/bio/cno;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/crypto/bio/cno;-><init>(Lorg/bouncycastle/crypto/rtg;I)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    goto/16 :goto_2

    :cond_2
    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    new-instance v0, Lorg/bouncycastle/crypto/bio/cno;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/bio/cno;-><init>(Lorg/bouncycastle/crypto/rtg;I)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    const-string v3, "CFB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    new-instance v1, Lorg/bouncycastle/crypto/bio/tsu;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/crypto/bio/tsu;-><init>(Lorg/bouncycastle/crypto/rtg;I)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    goto :goto_1

    :cond_4
    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    new-instance v0, Lorg/bouncycastle/crypto/bio/tsu;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/bio/tsu;-><init>(Lorg/bouncycastle/crypto/rtg;I)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    const-string v2, "CTR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Zqa:Z

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    new-instance v0, Lorg/bouncycastle/crypto/ssp;

    new-instance v1, Lorg/bouncycastle/crypto/bio/kth;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/bio/kth;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/ssp;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/ssp;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    const-string v1, "CTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    new-instance v0, Lorg/bouncycastle/crypto/bio/rtg;

    new-instance v1, Lorg/bouncycastle/crypto/bio/you;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/bio/you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/bio/rtg;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/ssp;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    const-string v1, "CCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0xc

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;

    new-instance v0, Lorg/bouncycastle/crypto/bio/sis;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/bio/sis;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;-><init>(Lorg/bouncycastle/crypto/bio/zta;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    const-string v1, "GCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Xqa:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;

    new-instance v0, Lorg/bouncycastle/crypto/bio/ssp;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Sqa:Lorg/bouncycastle/crypto/rtg;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/bio/ssp;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$zta;-><init>(Lorg/bouncycastle/crypto/bio/zta;)V

    goto/16 :goto_0

    :goto_2
    return-void

    :cond_9
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t support mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->fto()Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    new-instance v0, Lorg/bouncycastle/crypto/ssp;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/ssp;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/ssp;)V

    goto/16 :goto_5

    :cond_0
    const-string v1, "WITHCTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "CTSPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "CS3PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Yqa:Z

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->bra:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Yc(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v1, "ZEROBYTEPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/igw/kth;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/igw/kth;-><init>()V

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/rtg;Lorg/bouncycastle/crypto/igw/zta;)V

    goto/16 :goto_5

    :cond_3
    const-string v1, "ISO10126PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "ISO10126-2PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string v1, "X9.23PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "X923PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, "ISO7816-4PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ISO9797-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    const-string v1, "TBCPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/igw/ssp;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/igw/ssp;-><init>()V

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/rtg;Lorg/bouncycastle/crypto/igw/zta;)V

    goto :goto_5

    :cond_7
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Padding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unknown."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_0
    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/igw/sis;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/igw/sis;-><init>()V

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/rtg;Lorg/bouncycastle/crypto/igw/zta;)V

    goto :goto_5

    :cond_9
    :goto_1
    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/igw/cno;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/igw/cno;-><init>()V

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/rtg;Lorg/bouncycastle/crypto/igw/zta;)V

    goto :goto_5

    :cond_a
    :goto_2
    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/igw/you;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/igw/you;-><init>()V

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/rtg;Lorg/bouncycastle/crypto/igw/zta;)V

    goto :goto_5

    :cond_b
    :goto_3
    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    goto :goto_5

    :cond_c
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    const-string p1, "Only NoPadding can be used with AEAD modes."

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_4
    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;

    new-instance v0, Lorg/bouncycastle/crypto/bio/rtg;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/bio/rtg;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$you;-><init>(Lorg/bouncycastle/crypto/ssp;)V

    :goto_5
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    :cond_e
    return-void
.end method

.method protected engineUpdate([BII[BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {v0, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->you(I)I

    move-result v0

    add-int/2addr v0, p5

    array-length v1, p4

    if-gt v0, v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->zta([BII[BI)I

    move-result p0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p0, Ljavax/crypto/ShortBufferException;

    const-string p1, "output buffer too short for input."

    invoke-direct {p0, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineUpdate([BII)[B
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {v0, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->you(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    new-array v0, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->zta([BII[BI)I

    move-result p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    array-length p1, v0

    if-eq p0, p1, :cond_1

    new-array p1, p0, [B

    const/4 p2, 0x0

    invoke-static {v0, p2, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->zta([BII[BI)I

    return-object v1
.end method

.method protected engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->engineUpdateAAD([BII)V

    return-void
.end method

.method protected engineUpdateAAD([BII)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;->Gpa:Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis$sis;->updateAAD([BII)V

    return-void
.end method
