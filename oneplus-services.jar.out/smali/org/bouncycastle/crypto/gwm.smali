.class public abstract Lorg/bouncycastle/crypto/gwm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected iterationCount:I

.field protected password:[B

.field protected salt:[B


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PKCS5PasswordToBytes([C)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    new-array v1, v1, [B

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    aget-char v2, p0, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-array p0, v0, [B

    return-object p0
.end method

.method public static you([C)[B
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->ssp([C)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static zta([C)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    :goto_0
    array-length v2, p0

    if-eq v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    aget-char v3, p0, v0

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    aget-char v3, p0, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-array p0, v0, [B

    return-object p0
.end method


# virtual methods
.method public abstract da(I)Lorg/bouncycastle/crypto/kth;
.end method

.method public abstract generateDerivedParameters(I)Lorg/bouncycastle/crypto/kth;
.end method

.method public getIterationCount()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/gwm;->iterationCount:I

    return p0
.end method

.method public getPassword()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/gwm;->password:[B

    return-object p0
.end method

.method public getSalt()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/gwm;->salt:[B

    return-object p0
.end method

.method public abstract ugm(II)Lorg/bouncycastle/crypto/kth;
.end method

.method public zta([B[BI)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/gwm;->password:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/gwm;->salt:[B

    iput p3, p0, Lorg/bouncycastle/crypto/gwm;->iterationCount:I

    return-void
.end method