.class public Lorg/bouncycastle/crypto/rtg/ssp;
.super Lorg/bouncycastle/crypto/rtg/rtg;
.source ""


# static fields
.field protected static final BLOCK_SIZE:I = 0x8


# instance fields
.field private FBa:[I

.field private GBa:[I

.field private HBa:[I

.field private pza:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/rtg/rtg;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/rtg/ssp;->FBa:[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/rtg/ssp;->GBa:[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/rtg/ssp;->HBa:[I

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public vju()Ljava/lang/String;
    .locals 0

    const-string p0, "DESede"

    return-object p0
.end method

.method public zta([BI[BI)I
    .locals 8

    iget-object v1, p0, Lorg/bouncycastle/crypto/rtg/ssp;->FBa:[I

    if-eqz v1, :cond_3

    add-int/lit8 v0, p2, 0x8

    array-length v3, p1

    if-gt v0, v3, :cond_2

    add-int/lit8 v0, p4, 0x8

    array-length v3, p3

    if-gt v0, v3, :cond_1

    const/16 v6, 0x8

    new-array v7, v6, [B

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/rtg/ssp;->pza:Z

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/rtg/rtg;->zta([I[BI[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/rtg/ssp;->GBa:[I

    const/4 v3, 0x0

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/rtg/rtg;->zta([I[BI[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/rtg/ssp;->HBa:[I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/rtg/ssp;->HBa:[I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/rtg/rtg;->zta([I[BI[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/rtg/ssp;->GBa:[I

    const/4 v3, 0x0

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/rtg/rtg;->zta([I[BI[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/rtg/ssp;->FBa:[I

    :goto_0
    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/rtg/rtg;->zta([I[BI[BI)V

    return v6

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DESede engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 6

    instance-of v0, p2, Lorg/bouncycastle/crypto/wtn/cjf;

    if-eqz v0, :cond_3

    check-cast p2, Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/cjf;->getKey()[B

    move-result-object p2

    array-length v0, p2

    const/16 v1, 0x10

    const/16 v2, 0x18

    if-eq v0, v2, :cond_1

    array-length v0, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key size must be 16 or 24 bytes."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/rtg/ssp;->pza:Z

    const/16 v0, 0x8

    new-array v3, v0, [B

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {p2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1, v3}, Lorg/bouncycastle/crypto/rtg/rtg;->zta(Z[B)[I

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/rtg/ssp;->FBa:[I

    new-array v3, v0, [B

    array-length v4, v3

    invoke-static {p2, v0, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4, v3}, Lorg/bouncycastle/crypto/rtg/rtg;->zta(Z[B)[I

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/rtg/ssp;->GBa:[I

    array-length v3, p2

    if-ne v3, v2, :cond_2

    new-array v0, v0, [B

    array-length v2, v0

    invoke-static {p2, v1, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/rtg/rtg;->zta(Z[B)[I

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/rtg/ssp;->FBa:[I

    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/crypto/rtg/ssp;->HBa:[I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid parameter passed to DESede init - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
