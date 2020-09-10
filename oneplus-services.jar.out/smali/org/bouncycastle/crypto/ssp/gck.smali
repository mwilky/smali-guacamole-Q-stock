.class public Lorg/bouncycastle/crypto/ssp/gck;
.super Lorg/bouncycastle/crypto/gwm;
.source ""


# instance fields
.field private digest:Lorg/bouncycastle/crypto/qbh;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/qbh;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/gwm;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/ssp/gck;->digest:Lorg/bouncycastle/crypto/qbh;

    return-void
.end method

.method private Mt()[B
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/ssp/gck;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp/gck;->digest:Lorg/bouncycastle/crypto/qbh;

    iget-object v2, p0, Lorg/bouncycastle/crypto/gwm;->password:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp/gck;->digest:Lorg/bouncycastle/crypto/qbh;

    iget-object v2, p0, Lorg/bouncycastle/crypto/gwm;->salt:[B

    array-length v3, v2

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp/gck;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v1, v0, v4}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/gwm;->iterationCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/ssp/gck;->digest:Lorg/bouncycastle/crypto/qbh;

    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/ssp/gck;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v2, v0, v4}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public generateDerivedParameters(I)Lorg/bouncycastle/crypto/kth;
    .locals 2

    div-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lorg/bouncycastle/crypto/ssp/gck;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/ssp/gck;->Mt()[B

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/crypto/wtn/cjf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/bouncycastle/crypto/wtn/cjf;-><init>([BII)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t generate a derived key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes long."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ja(I)Lorg/bouncycastle/crypto/kth;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/ssp/gck;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/kth;

    move-result-object p0

    return-object p0
.end method

.method public ugm(II)Lorg/bouncycastle/crypto/kth;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp/gck;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/ssp/gck;->Mt()[B

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/crypto/wtn/ire;

    new-instance v1, Lorg/bouncycastle/crypto/wtn/cjf;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lorg/bouncycastle/crypto/wtn/cjf;-><init>([BII)V

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[BII)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t generate a derived key "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes long."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
