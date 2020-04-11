.class public Lorg/bouncycastle/crypto/wtn/hmo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/kth;


# instance fields
.field private parameters:Lorg/bouncycastle/crypto/kth;

.field private yla:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/kth;)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->Ui()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/wtn/hmo;-><init>(Lorg/bouncycastle/crypto/kth;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/kth;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/crypto/wtn/hmo;->yla:Ljava/security/SecureRandom;

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/hmo;->parameters:Lorg/bouncycastle/crypto/kth;

    return-void
.end method


# virtual methods
.method public Vi()Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/hmo;->yla:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public getParameters()Lorg/bouncycastle/crypto/kth;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/hmo;->parameters:Lorg/bouncycastle/crypto/kth;

    return-object p0
.end method
