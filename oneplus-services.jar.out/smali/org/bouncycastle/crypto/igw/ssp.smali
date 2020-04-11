.class public Lorg/bouncycastle/crypto/igw/ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/igw/zta;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    const-string p0, "TBC"

    return-object p0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public rtg([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget-byte p0, p1, p0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p1, v1

    if-ne v1, p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    array-length p0, p1

    sub-int/2addr p0, v0

    return p0
.end method

.method public zta([BI)I
    .locals 3

    array-length p0, p1

    sub-int/2addr p0, p2

    const/16 v0, 0xff

    const/4 v1, 0x0

    if-lez p2, :cond_0

    add-int/lit8 v2, p2, -0x1

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    int-to-byte v0, v0

    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_2

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return p0
.end method
