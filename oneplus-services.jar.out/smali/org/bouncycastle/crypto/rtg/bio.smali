.class public Lorg/bouncycastle/crypto/rtg/bio;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/ear;


# static fields
.field private static final Bya:I = 0x100


# instance fields
.field private Aya:[B

.field private Zxa:[B

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/rtg/bio;->Aya:[B

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/rtg/bio;->x:I

    iput v1, p0, Lorg/bouncycastle/crypto/rtg/bio;->y:I

    iput-object v0, p0, Lorg/bouncycastle/crypto/rtg/bio;->Zxa:[B

    return-void
.end method

.method private irq([B)V
    .locals 7

    iput-object p1, p0, Lorg/bouncycastle/crypto/rtg/bio;->Zxa:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/rtg/bio;->x:I

    iput v0, p0, Lorg/bouncycastle/crypto/rtg/bio;->y:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/rtg/bio;->Aya:[B

    const/16 v2, 0x100

    if-nez v1, :cond_0

    new-array v1, v2, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/rtg/bio;->Aya:[B

    :cond_0
    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/crypto/rtg/bio;->Aya:[B

    int-to-byte v4, v1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    move v3, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lorg/bouncycastle/crypto/rtg/bio;->Aya:[B

    aget-byte v6, v5, v0

    add-int/2addr v4, v6

    add-int/2addr v4, v3

    and-int/lit16 v3, v4, 0xff

    aget-byte v4, v5, v0

    aget-byte v6, v5, v3

    aput-byte v6, v5, v0

    aput-byte v4, v5, v3

    add-int/lit8 v1, v1, 0x1

    array-length v4, p1

    rem-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/bio;->Zxa:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/rtg/bio;->irq([B)V

    return-void
.end method

.method public vju()Ljava/lang/String;
    .locals 0

    const-string p0, "RC4"

    return-object p0
.end method

.method public you(B)B
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/rtg/bio;->x:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/bouncycastle/crypto/rtg/bio;->x:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/bio;->Aya:[B

    iget v1, p0, Lorg/bouncycastle/crypto/rtg/bio;->x:I

    aget-byte v2, v0, v1

    iget v3, p0, Lorg/bouncycastle/crypto/rtg/bio;->y:I

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/bouncycastle/crypto/rtg/bio;->y:I

    aget-byte v2, v0, v1

    iget p0, p0, Lorg/bouncycastle/crypto/rtg/bio;->y:I

    aget-byte v3, v0, p0

    aput-byte v3, v0, v1

    aput-byte v2, v0, p0

    aget-byte v1, v0, v1

    aget-byte p0, v0, p0

    add-int/2addr v1, p0

    and-int/lit16 p0, v1, 0xff

    aget-byte p0, v0, p0

    xor-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method public zta([BII[BI)I
    .locals 6

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget v1, p0, Lorg/bouncycastle/crypto/rtg/bio;->x:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/bouncycastle/crypto/rtg/bio;->x:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/rtg/bio;->Aya:[B

    iget v2, p0, Lorg/bouncycastle/crypto/rtg/bio;->x:I

    aget-byte v3, v1, v2

    iget v4, p0, Lorg/bouncycastle/crypto/rtg/bio;->y:I

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lorg/bouncycastle/crypto/rtg/bio;->y:I

    aget-byte v3, v1, v2

    iget v4, p0, Lorg/bouncycastle/crypto/rtg/bio;->y:I

    aget-byte v5, v1, v4

    aput-byte v5, v1, v2

    aput-byte v3, v1, v4

    add-int v3, v0, p5

    add-int v5, v0, p2

    aget-byte v5, p1, v5

    aget-byte v2, v1, v2

    aget-byte v4, v1, v4

    add-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    xor-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p3

    :cond_1
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 1

    instance-of p1, p2, Lorg/bouncycastle/crypto/wtn/cjf;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/cjf;->getKey()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/rtg/bio;->Zxa:[B

    iget-object p1, p0, Lorg/bouncycastle/crypto/rtg/bio;->Zxa:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/rtg/bio;->irq([B)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid parameter passed to RC4 init - "

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
