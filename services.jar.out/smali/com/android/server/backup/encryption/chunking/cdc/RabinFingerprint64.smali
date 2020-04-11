.class public Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;
.super Ljava/lang/Object;
.source "RabinFingerprint64.java"


# static fields
.field private static final DEFAULT_IRREDUCIBLE_POLYNOMIAL_64:J = 0x1bL

.field private static final POLYNOMIAL_DEGREE:I = 0x40

.field private static final SLIDING_WINDOW_SIZE_BYTES:I = 0x1f


# instance fields
.field private final mPoly64:J

.field private final mTableFP64:[J

.field private final mTableOutByte:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x1b

    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;-><init>(J)V

    invoke-direct {p0}, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->computeFingerprintTables64()V

    invoke-direct {p0}, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->computeFingerprintTables64Windowed()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mTableFP64:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mTableOutByte:[J

    iput-wide p1, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mPoly64:J

    return-void
.end method

.method private computeFingerprintTables64()V
    .locals 10

    const/16 v0, 0x40

    new-array v1, v0, [J

    iget-wide v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mPoly64:J

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v1, v4

    const-wide/high16 v6, -0x8000000000000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v1, v4

    shl-long v3, v4, v3

    aput-wide v3, v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v1, v4

    shl-long v3, v4, v3

    iget-wide v5, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mPoly64:J

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x100

    if-ge v0, v2, :cond_4

    move v2, v0

    const/4 v4, 0x0

    :goto_3
    if-lez v2, :cond_3

    const/16 v5, 0x8

    if-ge v4, v5, :cond_3

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v3, :cond_2

    iget-object v5, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mTableFP64:[J

    aget-wide v6, v5, v0

    aget-wide v8, v1, v4

    xor-long/2addr v6, v8

    aput-wide v6, v5, v0

    :cond_2
    ushr-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private computeFingerprintTables64Windowed()V
    .locals 12

    const/16 v0, 0x8

    new-array v1, v0, [J

    iget-wide v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mPoly64:J

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const/16 v2, 0x41

    :goto_0
    const/16 v3, 0x100

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    rem-int/2addr v3, v0

    aget-wide v5, v1, v3

    const-wide/high16 v7, -0x8000000000000000L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    rem-int/lit8 v3, v2, 0x8

    add-int/lit8 v5, v2, -0x1

    rem-int/2addr v5, v0

    aget-wide v5, v1, v5

    shl-long v4, v5, v4

    aput-wide v4, v1, v3

    goto :goto_1

    :cond_0
    rem-int/lit8 v3, v2, 0x8

    add-int/lit8 v5, v2, -0x1

    rem-int/2addr v5, v0

    aget-wide v5, v1, v5

    shl-long v4, v5, v4

    iget-wide v6, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mPoly64:J

    xor-long/2addr v4, v6

    aput-wide v4, v1, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    move v5, v2

    const/4 v6, 0x0

    :goto_3
    if-lez v5, :cond_3

    if-ge v6, v0, :cond_3

    and-int/lit8 v7, v5, 0x1

    if-ne v7, v4, :cond_2

    iget-object v7, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mTableOutByte:[J

    aget-wide v8, v7, v2

    aget-wide v10, v1, v6

    xor-long/2addr v8, v10

    aput-wide v8, v7, v2

    :cond_2
    ushr-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public computeFingerprint64(BBJ)J
    .locals 5

    const/16 v0, 0x8

    shl-long v0, p3, v0

    and-int/lit16 v2, p1, 0xff

    int-to-long v2, v2

    xor-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mTableFP64:[J

    const/16 v3, 0x38

    ushr-long v3, p3, v3

    long-to-int v3, v3

    aget-wide v2, v2, v3

    xor-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mTableOutByte:[J

    and-int/lit16 v3, p2, 0xff

    aget-wide v2, v2, v3

    xor-long/2addr v0, v2

    return-wide v0
.end method
