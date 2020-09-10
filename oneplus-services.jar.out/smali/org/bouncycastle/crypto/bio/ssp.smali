.class public Lorg/bouncycastle/crypto/bio/ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/bio/zta;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final jDa:J = 0xfffffffe0L


# instance fields
.field private GCa:I

.field private Gpa:Lorg/bouncycastle/crypto/rtg;

.field private S:[B

.field private SCa:[B

.field private UCa:[B

.field private WCa:Lorg/bouncycastle/crypto/bio/zta/sis;

.field private Woa:Z

.field private XCa:Lorg/bouncycastle/crypto/bio/zta/you;

.field private YCa:[B

.field private ZCa:[B

.field private _Ca:[B

.field private aDa:[B

.field private bDa:[B

.field private cDa:[B

.field private counter:[B

.field private dDa:I

.field private eDa:J

.field private fDa:[B

.field private gDa:I

.field private hDa:J

.field private iDa:J

.field private nonce:[B

.field private oza:I

.field private pza:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/rtg;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/bio/ssp;-><init>(Lorg/bouncycastle/crypto/rtg;Lorg/bouncycastle/crypto/bio/zta/sis;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/rtg;Lorg/bouncycastle/crypto/bio/zta/sis;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_0

    new-instance p2, Lorg/bouncycastle/crypto/bio/zta/ssp;

    invoke-direct {p2}, Lorg/bouncycastle/crypto/bio/zta/ssp;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->Gpa:Lorg/bouncycastle/crypto/rtg;

    iput-object p2, p0, Lorg/bouncycastle/crypto/bio/ssp;->WCa:Lorg/bouncycastle/crypto/bio/zta/sis;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cipher required with a block size of 16."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private Ut()V
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->Woa:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lorg/bouncycastle/crypto/bio/ssp;->pza:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "GCM cipher cannot be reused for encryption"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "GCM cipher needs to be initialised"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private Vt()V
    .locals 9

    iget-wide v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->hDa:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x10

    const/4 v4, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->bDa:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/bio/ssp;->cDa:[B

    invoke-static {v0, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v5, p0, Lorg/bouncycastle/crypto/bio/ssp;->hDa:J

    iput-wide v5, p0, Lorg/bouncycastle/crypto/bio/ssp;->iDa:J

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->gDa:I

    if-lez v0, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/crypto/bio/ssp;->cDa:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/bio/ssp;->fDa:[B

    invoke-direct {p0, v5, v6, v4, v0}, Lorg/bouncycastle/crypto/bio/ssp;->you([B[BII)V

    iget-wide v5, p0, Lorg/bouncycastle/crypto/bio/ssp;->iDa:J

    iget v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->gDa:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/bouncycastle/crypto/bio/ssp;->iDa:J

    :cond_1
    iget-wide v5, p0, Lorg/bouncycastle/crypto/bio/ssp;->iDa:J

    cmp-long v0, v5, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->cDa:[B

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/ssp;->S:[B

    invoke-static {v0, v4, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private dd(I)J
    .locals 4

    iget-wide v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->eDa:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget p0, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private gwm([B[B)V
    .locals 0

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/bio/zta/tsu;->you([B[B)V

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/ssp;->WCa:Lorg/bouncycastle/crypto/bio/zta/sis;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/bio/zta/sis;->tsu([B)V

    return-void
.end method

.method private ivd([B)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->dDa:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->dDa:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->counter:[B

    const/16 v1, 0xf

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    int-to-byte v3, v2

    aput-byte v3, v0, v1

    ushr-int/lit8 v1, v2, 0x8

    const/16 v2, 0xe

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    ushr-int/lit8 v1, v1, 0x8

    const/16 v2, 0xd

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    ushr-int/lit8 v1, v1, 0x8

    const/16 v2, 0xc

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/ssp;->Gpa:Lorg/bouncycastle/crypto/rtg;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1, v1}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempt to process too many blocks"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private reset(Z)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->Gpa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/rtg;->reset()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->S:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->bDa:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->cDa:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->fDa:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->gDa:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->hDa:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->iDa:J

    iget-object v3, p0, Lorg/bouncycastle/crypto/bio/ssp;->_Ca:[B

    invoke-static {v3}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/bio/ssp;->counter:[B

    const/4 v3, -0x2

    iput v3, p0, Lorg/bouncycastle/crypto/bio/ssp;->dDa:I

    iput v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    iput-wide v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->eDa:J

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->aDa:[B

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lorg/bouncycastle/util/zta;->fill([BB)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->UCa:[B

    :cond_1
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->pza:Z

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->Woa:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->SCa:[B

    if-eqz p1, :cond_3

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/bio/ssp;->sis([BII)V

    :cond_3
    :goto_0
    return-void
.end method

.method private sis([BII[BI)V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/bio/ssp;->ivd([B)V

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->pza:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1, p2, v0, v2, p3}, Lorg/bouncycastle/crypto/bio/zta/tsu;->zta([BI[BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->S:[B

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/bio/ssp;->you([B[BII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->S:[B

    invoke-direct {p0, v1, p1, p2, p3}, Lorg/bouncycastle/crypto/bio/ssp;->you([B[BII)V

    invoke-static {p1, p2, v0, v2, p3}, Lorg/bouncycastle/crypto/bio/zta/tsu;->zta([BI[BII)V

    :goto_0
    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->eDa:J

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->eDa:J

    return-void
.end method

.method private sis([B[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    sub-int v1, p3, v0

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/bio/ssp;->you([B[BII)V

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    return-void
.end method

.method private tsu([B[BI)V
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/crypto/bio/zta/tsu;->you([B[BI)V

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/ssp;->WCa:Lorg/bouncycastle/crypto/bio/zta/sis;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/bio/zta/sis;->tsu([B)V

    return-void
.end method

.method private you([B[BII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/bio/zta/tsu;->zta([B[BII)V

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/ssp;->WCa:Lorg/bouncycastle/crypto/bio/zta/sis;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/bio/zta/sis;->tsu([B)V

    return-void
.end method

.method private zta([BI[BI)V
    .locals 8

    array-length v0, p3

    sub-int/2addr v0, p4

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->eDa:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/bio/ssp;->Vt()V

    :cond_0
    new-array v2, v1, [B

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/bio/ssp;->ivd([B)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->pza:Z

    if-eqz v0, :cond_1

    invoke-static {v2, p1, p2}, Lorg/bouncycastle/crypto/bio/zta/tsu;->you([B[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->S:[B

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/bio/ssp;->gwm([B[B)V

    const/4 p1, 0x0

    invoke-static {v2, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->S:[B

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/bio/ssp;->tsu([B[BI)V

    const/4 v3, 0x0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/crypto/bio/zta/tsu;->zta([BI[BI[BI)V

    :goto_0
    iget-wide p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->eDa:J

    const-wide/16 p3, 0x10

    add-long/2addr p1, p3

    iput-wide p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->eDa:J

    return-void

    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p1, "Output buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b()Lorg/bouncycastle/crypto/rtg;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/ssp;->Gpa:Lorg/bouncycastle/crypto/rtg;

    return-object p0
.end method

.method public doFinal([BI)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/crypto/bio/ssp;->Ut()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->eDa:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/bio/ssp;->Vt()V

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->pza:Z

    const-string v4, "Output buffer too short"

    if-eqz v1, :cond_2

    array-length v1, p1

    sub-int/2addr v1, p2

    iget v5, p0, Lorg/bouncycastle/crypto/bio/ssp;->GCa:I

    add-int/2addr v5, v0

    if-lt v1, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->GCa:I

    if-lt v0, v1, :cond_b

    sub-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p2

    if-lt v1, v0, :cond_a

    :goto_0
    if-lez v0, :cond_3

    iget-object v6, p0, Lorg/bouncycastle/crypto/bio/ssp;->aDa:[B

    const/4 v7, 0x0

    move-object v5, p0

    move v8, v0

    move-object v9, p1

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/crypto/bio/ssp;->sis([BII[BI)V

    :cond_3
    iget-wide v4, p0, Lorg/bouncycastle/crypto/bio/ssp;->hDa:J

    iget v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->gDa:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/bouncycastle/crypto/bio/ssp;->hDa:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/bio/ssp;->hDa:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/bio/ssp;->iDa:J

    cmp-long v4, v4, v6

    const-wide/16 v5, 0x8

    const/16 v7, 0x10

    const/4 v8, 0x0

    if-lez v4, :cond_7

    if-lez v1, :cond_4

    iget-object v4, p0, Lorg/bouncycastle/crypto/bio/ssp;->bDa:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/bio/ssp;->fDa:[B

    invoke-direct {p0, v4, v9, v8, v1}, Lorg/bouncycastle/crypto/bio/ssp;->you([B[BII)V

    :cond_4
    iget-wide v9, p0, Lorg/bouncycastle/crypto/bio/ssp;->iDa:J

    cmp-long v1, v9, v2

    if-lez v1, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->bDa:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->cDa:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/bio/zta/tsu;->you([B[B)V

    :cond_5
    iget-wide v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->eDa:J

    mul-long/2addr v1, v5

    const-wide/16 v3, 0x7f

    add-long/2addr v1, v3

    const/4 v3, 0x7

    ushr-long/2addr v1, v3

    new-array v3, v7, [B

    iget-object v4, p0, Lorg/bouncycastle/crypto/bio/ssp;->XCa:Lorg/bouncycastle/crypto/bio/zta/you;

    if-nez v4, :cond_6

    new-instance v4, Lorg/bouncycastle/crypto/bio/zta/zta;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/bio/zta/zta;-><init>()V

    iput-object v4, p0, Lorg/bouncycastle/crypto/bio/ssp;->XCa:Lorg/bouncycastle/crypto/bio/zta/you;

    iget-object v4, p0, Lorg/bouncycastle/crypto/bio/ssp;->XCa:Lorg/bouncycastle/crypto/bio/zta/you;

    iget-object v9, p0, Lorg/bouncycastle/crypto/bio/ssp;->ZCa:[B

    invoke-interface {v4, v9}, Lorg/bouncycastle/crypto/bio/zta/you;->init([B)V

    :cond_6
    iget-object v4, p0, Lorg/bouncycastle/crypto/bio/ssp;->XCa:Lorg/bouncycastle/crypto/bio/zta/you;

    invoke-interface {v4, v1, v2, v3}, Lorg/bouncycastle/crypto/bio/zta/you;->zta(J[B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->bDa:[B

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/bio/zta/tsu;->zta([B[B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->S:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->bDa:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/bio/zta/tsu;->you([B[B)V

    :cond_7
    new-array v1, v7, [B

    iget-wide v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->hDa:J

    mul-long/2addr v2, v5

    invoke-static {v2, v3, v1, v8}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    iget-wide v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->eDa:J

    mul-long/2addr v2, v5

    const/16 v4, 0x8

    invoke-static {v2, v3, v1, v4}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->S:[B

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/bio/ssp;->gwm([B[B)V

    new-array v1, v7, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->Gpa:Lorg/bouncycastle/crypto/rtg;

    iget-object v3, p0, Lorg/bouncycastle/crypto/bio/ssp;->_Ca:[B

    invoke-interface {v2, v3, v8, v1, v8}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->S:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/bio/zta/tsu;->you([B[B)V

    iget v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->GCa:I

    new-array v3, v2, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/bio/ssp;->UCa:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/bio/ssp;->UCa:[B

    invoke-static {v1, v8, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->pza:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->UCa:[B

    iget v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    add-int/2addr p2, v2

    iget v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->GCa:I

    invoke-static {v1, v8, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->GCa:I

    add-int/2addr v0, p1

    goto :goto_1

    :cond_8
    iget p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->GCa:I

    new-array p2, p1, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->aDa:[B

    invoke-static {v1, v0, p2, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->UCa:[B

    invoke-static {p1, p2}, Lorg/bouncycastle/util/zta;->cno([B[B)Z

    move-result p1

    if-eqz p1, :cond_9

    :goto_1
    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/bio/ssp;->reset(Z)V

    return v0

    :cond_9
    new-instance p0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "mac check in GCM failed"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "data too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->UCa:[B

    if-nez v0, :cond_0

    iget p0, p0, Lorg/bouncycastle/crypto/bio/ssp;->GCa:I

    new-array p0, p0, [B

    return-object p0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getOutputSize(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->pza:Z

    iget p0, p0, Lorg/bouncycastle/crypto/bio/ssp;->GCa:I

    if-eqz v0, :cond_0

    add-int/2addr p1, p0

    return p1

    :cond_0
    if-ge p1, p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    sub-int p0, p1, p0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/bio/ssp;->reset(Z)V

    return-void
.end method

.method public sis([BII)V
    .locals 6

    invoke-direct {p0}, Lorg/bouncycastle/crypto/bio/ssp;->Ut()V

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/bio/ssp;->dd(I)J

    move-result-wide v0

    const-wide v2, 0xfffffffe0L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->fDa:[B

    iget v3, p0, Lorg/bouncycastle/crypto/bio/ssp;->gDa:I

    add-int v4, p2, v1

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/bio/ssp;->gDa:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/bio/ssp;->bDa:[B

    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/crypto/bio/ssp;->gwm([B[B)V

    iput v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->gDa:I

    iget-wide v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->hDa:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->hDa:J

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input exceeded 68719476704 bytes"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public vju()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/ssp;->Gpa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/rtg;->vju()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/GCM"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public you(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->pza:Z

    if-nez v0, :cond_1

    iget p0, p0, Lorg/bouncycastle/crypto/bio/ssp;->GCa:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-int/2addr p1, p0

    :cond_1
    rem-int/lit8 p0, p1, 0x10

    sub-int/2addr p1, p0

    return p1
.end method

.method public zta(B[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/crypto/bio/ssp;->Ut()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/bio/ssp;->dd(I)J

    move-result-wide v1

    const-wide v3, 0xfffffffe0L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->aDa:[B

    iget v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    aput-byte p1, v1, v2

    add-int/2addr v2, v0

    iput v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    array-length p1, v1

    const/4 v0, 0x0

    if-ne v2, p1, :cond_1

    invoke-direct {p0, v1, v0, p2, p3}, Lorg/bouncycastle/crypto/bio/ssp;->zta([BI[BI)V

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->pza:Z

    const/16 p2, 0x10

    if-eqz p1, :cond_0

    iput v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->aDa:[B

    iget p3, p0, Lorg/bouncycastle/crypto/bio/ssp;->GCa:I

    invoke-static {p1, p2, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->GCa:I

    iput p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    :goto_0
    return p2

    :cond_1
    return v0

    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input exceeded 68719476704 bytes"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta([BII[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/crypto/bio/ssp;->Ut()V

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/bio/ssp;->dd(I)J

    move-result-wide v0

    const-wide v2, 0xfffffffe0L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_8

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_7

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->pza:Z

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    if-eqz v0, :cond_1

    :goto_0
    if-lez p3, :cond_1

    add-int/lit8 p3, p3, -0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->aDa:[B

    iget v3, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    add-int/lit8 v4, p2, 0x1

    aget-byte p2, p1, p2

    aput-byte p2, v0, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    if-ne v3, v1, :cond_0

    invoke-direct {p0, v0, v2, p4, p5}, Lorg/bouncycastle/crypto/bio/ssp;->zta([BI[BI)V

    iput v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    move v0, v1

    move p2, v4

    goto :goto_1

    :cond_0
    move p2, v4

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-lt p3, v1, :cond_2

    add-int v3, p5, v0

    invoke-direct {p0, p1, p2, p4, v3}, Lorg/bouncycastle/crypto/bio/ssp;->zta([BI[BI)V

    add-int/lit8 p2, p2, 0x10

    add-int/lit8 p3, p3, -0x10

    add-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_2
    if-lez p3, :cond_6

    iget-object p4, p0, Lorg/bouncycastle/crypto/bio/ssp;->aDa:[B

    invoke-static {p1, p2, p4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    goto :goto_3

    :cond_3
    move v0, v2

    move v3, v0

    :goto_2
    if-ge v0, p3, :cond_5

    iget-object v4, p0, Lorg/bouncycastle/crypto/bio/ssp;->aDa:[B

    iget v5, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    add-int v6, p2, v0

    aget-byte v6, p1, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    array-length v6, v4

    if-ne v5, v6, :cond_4

    add-int v5, p5, v3

    invoke-direct {p0, v4, v2, p4, v5}, Lorg/bouncycastle/crypto/bio/ssp;->zta([BI[BI)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/bio/ssp;->aDa:[B

    iget v5, p0, Lorg/bouncycastle/crypto/bio/ssp;->GCa:I

    invoke-static {v4, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/bouncycastle/crypto/bio/ssp;->GCa:I

    iput v4, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    add-int/lit8 v3, v3, 0x10

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v3

    :cond_6
    :goto_3
    return v0

    :cond_7
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input exceeded 68719476704 bytes"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(B)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/crypto/bio/ssp;->Ut()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/bio/ssp;->dd(I)J

    move-result-wide v1

    const-wide v3, 0xfffffffe0L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->fDa:[B

    iget v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->gDa:I

    aput-byte p1, v1, v2

    add-int/2addr v2, v0

    iput v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->gDa:I

    const/16 p1, 0x10

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->bDa:[B

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/bio/ssp;->gwm([B[B)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->gDa:I

    iget-wide v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->hDa:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->hDa:J

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input exceeded 68719476704 bytes"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->pza:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->UCa:[B

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/bio/ssp;->Woa:Z

    instance-of v2, p2, Lorg/bouncycastle/crypto/wtn/zta;

    const/16 v3, 0x8

    const/16 v4, 0x10

    if-eqz v2, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/wtn/zta;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/zta;->getNonce()[B

    move-result-object v2

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/zta;->qj()[B

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/crypto/bio/ssp;->SCa:[B

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/zta;->you()I

    move-result v5

    const/16 v6, 0x20

    if-lt v5, v6, :cond_0

    const/16 v6, 0x80

    if-gt v5, v6, :cond_0

    rem-int/lit8 v6, v5, 0x8

    if-nez v6, :cond_0

    div-int/2addr v5, v3

    iput v5, p0, Lorg/bouncycastle/crypto/bio/ssp;->GCa:I

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/zta;->getKey()Lorg/bouncycastle/crypto/wtn/cjf;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid value for MAC size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v2, p2, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz v2, :cond_c

    check-cast p2, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ire;->getIV()[B

    move-result-object v2

    iput-object v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->SCa:[B

    iput v4, p0, Lorg/bouncycastle/crypto/bio/ssp;->GCa:I

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/crypto/wtn/cjf;

    :goto_0
    if-eqz p1, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    iget v5, p0, Lorg/bouncycastle/crypto/bio/ssp;->GCa:I

    add-int/2addr v5, v4

    :goto_1
    new-array v5, v5, [B

    iput-object v5, p0, Lorg/bouncycastle/crypto/bio/ssp;->aDa:[B

    if-eqz v2, :cond_b

    array-length v5, v2

    if-lt v5, v1, :cond_b

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->nonce:[B

    if-eqz p1, :cond_5

    invoke-static {p1, v2}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "cannot reuse nonce for GCM encryption"

    if-eqz p2, :cond_4

    iget-object v5, p0, Lorg/bouncycastle/crypto/bio/ssp;->YCa:[B

    if-eqz v5, :cond_5

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/cjf;->getKey()[B

    move-result-object v6

    invoke-static {v5, v6}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    iput-object v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->nonce:[B

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/cjf;->getKey()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->YCa:[B

    :cond_6
    const/4 p1, 0x0

    if-eqz p2, :cond_7

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->Gpa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v2, v1, p2}, Lorg/bouncycastle/crypto/rtg;->zta(ZLorg/bouncycastle/crypto/kth;)V

    new-array p2, v4, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/bio/ssp;->ZCa:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/bio/ssp;->Gpa:Lorg/bouncycastle/crypto/rtg;

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->ZCa:[B

    invoke-interface {p2, v2, p1, v2, p1}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    iget-object p2, p0, Lorg/bouncycastle/crypto/bio/ssp;->WCa:Lorg/bouncycastle/crypto/bio/zta/sis;

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/ssp;->ZCa:[B

    invoke-interface {p2, v2}, Lorg/bouncycastle/crypto/bio/zta/sis;->init([B)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->XCa:Lorg/bouncycastle/crypto/bio/zta/you;

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lorg/bouncycastle/crypto/bio/ssp;->ZCa:[B

    if-eqz p2, :cond_a

    :goto_3
    new-array p2, v4, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/bio/ssp;->_Ca:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/bio/ssp;->nonce:[B

    array-length v0, p2

    const/16 v2, 0xc

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->_Ca:[B

    array-length v2, p2

    invoke-static {p2, p1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/bio/ssp;->_Ca:[B

    const/16 v0, 0xf

    aput-byte v1, p2, v0

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->_Ca:[B

    array-length v1, p2

    invoke-direct {p0, v0, p2, v1}, Lorg/bouncycastle/crypto/bio/ssp;->sis([B[BI)V

    new-array p2, v4, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->nonce:[B

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v5, 0x8

    mul-long/2addr v0, v5

    invoke-static {v0, v1, p2, v3}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->_Ca:[B

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/bio/ssp;->gwm([B[B)V

    :goto_4
    new-array p2, v4, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/bio/ssp;->S:[B

    new-array p2, v4, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/bio/ssp;->bDa:[B

    new-array p2, v4, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/bio/ssp;->cDa:[B

    new-array p2, v4, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/bio/ssp;->fDa:[B

    iput p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->gDa:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->hDa:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->iDa:J

    iget-object p2, p0, Lorg/bouncycastle/crypto/bio/ssp;->_Ca:[B

    invoke-static {p2}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/bio/ssp;->counter:[B

    const/4 p2, -0x2

    iput p2, p0, Lorg/bouncycastle/crypto/bio/ssp;->dDa:I

    iput p1, p0, Lorg/bouncycastle/crypto/bio/ssp;->oza:I

    iput-wide v0, p0, Lorg/bouncycastle/crypto/bio/ssp;->eDa:J

    iget-object p2, p0, Lorg/bouncycastle/crypto/bio/ssp;->SCa:[B

    if-eqz p2, :cond_9

    array-length v0, p2

    invoke-virtual {p0, p2, p1, v0}, Lorg/bouncycastle/crypto/bio/ssp;->sis([BII)V

    :cond_9
    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key must be specified in initial init"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IV must be at least 1 byte"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameters passed to GCM"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
