.class public Lorg/bouncycastle/crypto/wtn/ssp;
.super Lorg/bouncycastle/crypto/wtn/you;
.source ""


# instance fields
.field private params:Lorg/bouncycastle/crypto/wtn/cno;


# direct methods
.method protected constructor <init>(ZLorg/bouncycastle/crypto/wtn/cno;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/wtn/you;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/wtn/ssp;->params:Lorg/bouncycastle/crypto/wtn/cno;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/crypto/wtn/ssp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/wtn/ssp;

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/ssp;->params:Lorg/bouncycastle/crypto/wtn/cno;

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ssp;->getParameters()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ssp;->getParameters()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/wtn/cno;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getParameters()Lorg/bouncycastle/crypto/wtn/cno;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/ssp;->params:Lorg/bouncycastle/crypto/wtn/cno;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/you;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/ssp;->params:Lorg/bouncycastle/crypto/wtn/cno;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/cno;->hashCode()I

    move-result p0

    xor-int/2addr v0, p0

    :cond_1
    return v0
.end method
