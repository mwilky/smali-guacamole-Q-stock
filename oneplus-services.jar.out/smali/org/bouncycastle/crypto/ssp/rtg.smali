.class public Lorg/bouncycastle/crypto/ssp/rtg;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Zna:Ljava/math/BigInteger;


# instance fields
.field private size:I

.field private swa:I

.field private yla:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/ssp/rtg;->Zna:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateParameters()Lorg/bouncycastle/crypto/wtn/cno;
    .locals 8

    iget v0, p0, Lorg/bouncycastle/crypto/ssp/rtg;->size:I

    iget v1, p0, Lorg/bouncycastle/crypto/ssp/rtg;->swa:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/ssp/rtg;->yla:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/ssp/ssp;->you(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v3, v0, v1

    const/4 v1, 0x1

    aget-object v5, v0, v1

    iget-object p0, p0, Lorg/bouncycastle/crypto/ssp/rtg;->yla:Ljava/security/SecureRandom;

    invoke-static {v3, v5, p0}, Lorg/bouncycastle/crypto/ssp/ssp;->zta(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    new-instance p0, Lorg/bouncycastle/crypto/wtn/cno;

    sget-object v6, Lorg/bouncycastle/crypto/ssp/rtg;->Zna:Ljava/math/BigInteger;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/crypto/wtn/cno;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/igw;)V

    return-object p0
.end method

.method public zta(IILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/ssp/rtg;->size:I

    iput p2, p0, Lorg/bouncycastle/crypto/ssp/rtg;->swa:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/ssp/rtg;->yla:Ljava/security/SecureRandom;

    return-void
.end method
