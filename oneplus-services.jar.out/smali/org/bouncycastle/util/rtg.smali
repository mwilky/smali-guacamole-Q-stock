.class public Lorg/bouncycastle/util/rtg;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ZEa:[C


# instance fields
.field private final fingerprint:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/util/rtg;->ZEa:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0xa0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/util/rtg;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/bouncycastle/util/rtg;->ywr([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/util/rtg;->fingerprint:[B

    return-void
.end method

.method public static oxb([B)[B
    .locals 1

    const/16 v0, 0xa0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/rtg;->ywr([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static ywr([BI)[B
    .locals 4

    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_1

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->oxb()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v1}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    div-int/lit8 p1, p1, 0x8

    new-array p0, p1, [B

    const/16 v1, 0x20

    new-array v3, v1, [B

    invoke-interface {v0, v3, v2}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    if-lt p1, v1, :cond_0

    return-object v3

    :cond_0
    array-length p1, p0

    invoke-static {v3, v2, p0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitLength must be a multiple of 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/util/rtg;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/util/rtg;

    iget-object p1, p1, Lorg/bouncycastle/util/rtg;->fingerprint:[B

    iget-object p0, p0, Lorg/bouncycastle/util/rtg;->fingerprint:[B

    invoke-static {p1, p0}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getFingerprint()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/util/rtg;->fingerprint:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/util/rtg;->fingerprint:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/util/rtg;->fingerprint:[B

    array-length v2, v2

    if-eq v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    sget-object v2, Lorg/bouncycastle/util/rtg;->ZEa:[C

    iget-object v3, p0, Lorg/bouncycastle/util/rtg;->fingerprint:[B

    aget-byte v3, v3, v1

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/bouncycastle/util/rtg;->ZEa:[C

    iget-object v3, p0, Lorg/bouncycastle/util/rtg;->fingerprint:[B

    aget-byte v3, v3, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
