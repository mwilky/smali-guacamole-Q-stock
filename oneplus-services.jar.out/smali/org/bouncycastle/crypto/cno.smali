.class public Lorg/bouncycastle/crypto/cno;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected strength:I

.field protected yla:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/cno;->strength:I

    new-array v0, v0, [B

    iget-object p0, p0, Lorg/bouncycastle/crypto/cno;->yla:Ljava/security/SecureRandom;

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public zta(Lorg/bouncycastle/crypto/bvj;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/bvj;->Vi()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/cno;->yla:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/bvj;->getStrength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/cno;->strength:I

    return-void
.end method