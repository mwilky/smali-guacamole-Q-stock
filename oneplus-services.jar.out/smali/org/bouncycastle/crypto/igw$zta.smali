.class public final Lorg/bouncycastle/crypto/igw$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/igw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zta"
.end annotation


# static fields
.field public static final DH_DEFAULT_PARAMS:Lorg/bouncycastle/crypto/igw$zta;

.field public static final EC_IMPLICITLY_CA:Lorg/bouncycastle/crypto/igw$zta;

.field public static final Hza:Lorg/bouncycastle/crypto/igw$zta;


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/igw$zta;

    const-class v1, Lorg/bouncycastle/asn1/ibl/vju;

    const-string v2, "ecImplicitlyCA"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/igw$zta;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/bouncycastle/crypto/igw$zta;->EC_IMPLICITLY_CA:Lorg/bouncycastle/crypto/igw$zta;

    new-instance v0, Lorg/bouncycastle/crypto/igw$zta;

    const-class v1, Lorg/bouncycastle/crypto/wtn/cno;

    const-string v2, "dhDefaultParams"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/igw$zta;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/bouncycastle/crypto/igw$zta;->DH_DEFAULT_PARAMS:Lorg/bouncycastle/crypto/igw$zta;

    new-instance v0, Lorg/bouncycastle/crypto/igw$zta;

    const-class v1, Lorg/bouncycastle/crypto/wtn/ywr;

    const-string v2, "dsaDefaultParams"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/igw$zta;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/bouncycastle/crypto/igw$zta;->Hza:Lorg/bouncycastle/crypto/igw$zta;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/igw$zta;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/crypto/igw$zta;->type:Ljava/lang/Class;

    return-void
.end method

.method static synthetic you(Lorg/bouncycastle/crypto/igw$zta;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/igw$zta;->type:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic zta(Lorg/bouncycastle/crypto/igw$zta;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/igw$zta;->name:Ljava/lang/String;

    return-object p0
.end method
