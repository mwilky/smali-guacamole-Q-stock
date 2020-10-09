.class public Lorg/bouncycastle/crypto/wtn/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/kth;


# instance fields
.field private RCa:I

.field private fDa:[B

.field private key:Lorg/bouncycastle/crypto/wtn/cjf;

.field private nonce:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/wtn/cjf;I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/wtn/zta;-><init>(Lorg/bouncycastle/crypto/wtn/cjf;I[B[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/wtn/cjf;I[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/zta;->key:Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-static {p3}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/zta;->nonce:[B

    iput p2, p0, Lorg/bouncycastle/crypto/wtn/zta;->RCa:I

    invoke-static {p4}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/zta;->fDa:[B

    return-void
.end method


# virtual methods
.method public getKey()Lorg/bouncycastle/crypto/wtn/cjf;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/zta;->key:Lorg/bouncycastle/crypto/wtn/cjf;

    return-object p0
.end method

.method public getNonce()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/zta;->nonce:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method public sj()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/zta;->fDa:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method public you()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/wtn/zta;->RCa:I

    return p0
.end method
