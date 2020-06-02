.class public abstract Lorg/bouncycastle/crypto/you/ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/oif;
.implements Lorg/bouncycastle/util/bio;


# static fields
.field private static final Xza:I = 0x40


# instance fields
.field private Pza:J

.field private final Vza:[B

.field private Wza:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Vza:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/you/ssp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Vza:[B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/you/ssp;->zta(Lorg/bouncycastle/crypto/you/ssp;)V

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/you/ssp;->Vza:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/you/ssp;->Vza:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->wtn([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Pza:J

    return-void
.end method


# virtual methods
.method protected abstract cjf(J)V
.end method

.method protected dma([B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Vza:[B

    iget v1, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Pza:J

    const/16 p0, 0x8

    invoke-static {v0, v1, p1, p0}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    return-void
.end method

.method public finish()V
    .locals 3

    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Pza:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, -0x80

    :goto_0
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/you/ssp;->update(B)V

    iget v2, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/you/ssp;->cjf(J)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/ssp;->jj()V

    return-void
.end method

.method public getByteLength()I
    .locals 0

    const/16 p0, 0x40

    return p0
.end method

.method protected abstract jj()V
.end method

.method public reset()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Pza:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/you/ssp;->Vza:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract rtg([BI)V
.end method

.method public update(B)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Vza:[B

    iget v1, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    aput-byte p1, v0, v1

    iget p1, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    array-length v1, v0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/you/ssp;->rtg([BI)V

    iput p1, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Pza:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Pza:J

    return-void
.end method

.method public update([BII)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget v1, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    if-eqz v1, :cond_2

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/you/ssp;->Vza:[B

    iget v3, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    iget v1, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/crypto/you/ssp;->rtg([BI)V

    iput v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    move v0, v4

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    sub-int v1, p3, v0

    and-int/lit8 v1, v1, -0x4

    add-int/2addr v1, v0

    :goto_2
    if-ge v0, v1, :cond_3

    add-int v2, p2, v0

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/you/ssp;->rtg([BI)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v0, p3, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/you/ssp;->Vza:[B

    iget v2, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    aput-byte v0, v1, v2

    move v0, v3

    goto :goto_3

    :cond_4
    iget-wide p1, p0, Lorg/bouncycastle/crypto/you/ssp;->Pza:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/you/ssp;->Pza:J

    return-void
.end method

.method protected zta(Lorg/bouncycastle/crypto/you/ssp;)V
    .locals 4

    iget-object v0, p1, Lorg/bouncycastle/crypto/you/ssp;->Vza:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/you/ssp;->Vza:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Wza:I

    iget-wide v0, p1, Lorg/bouncycastle/crypto/you/ssp;->Pza:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/ssp;->Pza:J

    return-void
.end method
