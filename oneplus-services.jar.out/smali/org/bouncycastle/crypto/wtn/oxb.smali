.class public Lorg/bouncycastle/crypto/wtn/oxb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/ywr;


# instance fields
.field iv:[B

.field shared:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/oxb;->shared:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/wtn/oxb;->iv:[B

    return-void
.end method


# virtual methods
.method public Aj()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/oxb;->shared:[B

    return-object p0
.end method

.method public getIV()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/oxb;->iv:[B

    return-object p0
.end method
