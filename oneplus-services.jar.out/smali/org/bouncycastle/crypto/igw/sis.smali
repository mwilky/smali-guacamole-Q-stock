.class public Lorg/bouncycastle/crypto/igw/sis;
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

    const-string p0, "ISO7816-4"

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

    :goto_0
    if-lez p0, :cond_0

    aget-byte v0, p1, p0

    if-nez v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    aget-byte v0, p1, p0

    const/16 v1, -0x80

    if-ne v0, v1, :cond_1

    array-length p1, p1

    sub-int/2addr p1, p0

    return p1

    :cond_1
    new-instance p0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "pad block corrupted"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta([BI)I
    .locals 1

    array-length p0, p1

    sub-int/2addr p0, p2

    const/16 v0, -0x80

    aput-byte v0, p1, p2

    :goto_0
    add-int/lit8 p2, p2, 0x1

    array-length v0, p1

    if-ge p2, v0, :cond_0

    const/4 v0, 0x0

    aput-byte v0, p1, p2

    goto :goto_0

    :cond_0
    return p0
.end method
