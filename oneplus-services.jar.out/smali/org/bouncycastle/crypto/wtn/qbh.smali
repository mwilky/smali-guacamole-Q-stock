.class public Lorg/bouncycastle/crypto/wtn/qbh;
.super Lorg/bouncycastle/crypto/wtn/gck;
.source ""


# instance fields
.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/ywr;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/wtn/gck;-><init>(ZLorg/bouncycastle/crypto/wtn/ywr;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/qbh;->x:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getX()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/qbh;->x:Ljava/math/BigInteger;

    return-object p0
.end method
