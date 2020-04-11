.class public Lorg/bouncycastle/crypto/igw/tsu;
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

    const-string p0, "PKCS7"

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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte v1, p0

    array-length v2, p1

    const/4 v3, 0x0

    if-le p0, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez p0, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    or-int/2addr v2, v4

    move v4, v2

    move v2, v3

    :goto_2
    array-length v5, p1

    if-ge v2, v5, :cond_4

    array-length v5, p1

    sub-int/2addr v5, v2

    if-gt v5, p0, :cond_2

    move v5, v0

    goto :goto_3

    :cond_2
    move v5, v3

    :goto_3
    aget-byte v6, p1, v2

    if-eq v6, v1, :cond_3

    move v6, v0

    goto :goto_4

    :cond_3
    move v6, v3

    :goto_4
    and-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-nez v4, :cond_5

    return p0

    :cond_5
    new-instance p0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "pad block corrupted"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta([BI)I
    .locals 1

    array-length p0, p1

    sub-int/2addr p0, p2

    int-to-byte p0, p0

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    aput-byte p0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method
