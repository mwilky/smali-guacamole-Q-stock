.class public Lorg/bouncycastle/crypto/tsu/tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/zta;


# static fields
.field public static final Bya:Ljava/lang/String; = "org.bouncycastle.pkcs1.strict"

.field public static final Cya:Ljava/lang/String; = "org.bouncycastle.pkcs1.not_strict"

.field private static final Dya:I = 0xa


# instance fields
.field private Aya:[B

.field private Gma:Lorg/bouncycastle/crypto/zta;

.field private bxa:Z

.field private wya:Z

.field private xma:Ljava/security/SecureRandom;

.field private xya:Z

.field private yya:I

.field private zya:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/zta;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->yya:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->zya:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Gma:Lorg/bouncycastle/crypto/zta;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tsu/tsu;->rt()Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->xya:Z

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/zta;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->yya:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->zya:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Gma:Lorg/bouncycastle/crypto/zta;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tsu/tsu;->rt()Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->xya:Z

    iput p2, p0, Lorg/bouncycastle/crypto/tsu/tsu;->yya:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/zta;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->yya:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->zya:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Gma:Lorg/bouncycastle/crypto/zta;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tsu/tsu;->rt()Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->xya:Z

    iput-object p2, p0, Lorg/bouncycastle/crypto/tsu/tsu;->zya:[B

    array-length p1, p2

    iput p1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->yya:I

    return-void
.end method

.method private static bvj([BI)I
    .locals 6

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    array-length v1, p0

    const/4 v2, 0x1

    add-int/2addr p1, v2

    sub-int/2addr v1, p1

    move v3, v0

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v4, p0, v0

    shr-int/lit8 v5, v4, 0x1

    or-int/2addr v4, v5

    shr-int/lit8 v5, v4, 0x2

    or-int/2addr v4, v5

    shr-int/lit8 v5, v4, 0x4

    or-int/2addr v4, v5

    and-int/2addr v4, v2

    sub-int/2addr v4, v2

    or-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p0

    sub-int/2addr v0, p1

    aget-byte p0, p0, v0

    or-int/2addr p0, v3

    shr-int/lit8 p1, p0, 0x1

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x2

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x4

    or-int/2addr p0, p1

    and-int/2addr p0, v2

    sub-int/2addr p0, v2

    not-int p0, p0

    return p0
.end method

.method private qbh([BII)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->wya:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Gma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/zta;->you([BII)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tsu/tsu;->zya:[B

    if-nez p2, :cond_0

    iget p2, p0, Lorg/bouncycastle/crypto/tsu/tsu;->yya:I

    new-array p2, p2, [B

    iget-object p3, p0, Lorg/bouncycastle/crypto/tsu/tsu;->xma:Ljava/security/SecureRandom;

    invoke-virtual {p3, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_0
    iget-boolean p3, p0, Lorg/bouncycastle/crypto/tsu/tsu;->xya:Z

    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Gma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/zta;->ivd()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    and-int/2addr p3, v0

    if-eqz p3, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Aya:[B

    :cond_2
    iget p3, p0, Lorg/bouncycastle/crypto/tsu/tsu;->yya:I

    invoke-static {p1, p3}, Lorg/bouncycastle/crypto/tsu/tsu;->bvj([BI)I

    move-result p3

    iget v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->yya:I

    new-array v0, v0, [B

    move v1, v2

    :goto_1
    iget v3, p0, Lorg/bouncycastle/crypto/tsu/tsu;->yya:I

    if-ge v1, v3, :cond_3

    array-length v4, p1

    sub-int/2addr v4, v3

    add-int/2addr v4, v1

    aget-byte v3, p1, v4

    not-int v4, p3

    and-int/2addr v3, v4

    aget-byte v4, p2, v1

    and-int/2addr v4, p3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p1, v2}, Lorg/bouncycastle/util/zta;->fill([BB)V

    return-object v0

    :cond_4
    new-instance p0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "sorry, this method is only for decryption, not for signing"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private rt()Z
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/tsu/you;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/tsu/you;-><init>(Lorg/bouncycastle/crypto/tsu/tsu;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lorg/bouncycastle/crypto/tsu/sis;

    invoke-direct {v1, p0}, Lorg/bouncycastle/crypto/tsu/sis;-><init>(Lorg/bouncycastle/crypto/tsu/tsu;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "true"

    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private rtg([BII)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->yya:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tsu/tsu;->qbh([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Gma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/zta;->you([BII)[B

    move-result-object p1

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/tsu/tsu;->xya:Z

    array-length p3, p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Gma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/zta;->ivd()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, v2

    :goto_0
    and-int/2addr p2, p3

    array-length p3, p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tsu/tsu;->ivd()I

    move-result v0

    if-ge p3, v0, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Aya:[B

    :cond_2
    aget-byte p3, p1, v2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->wya:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    if-eq p3, v1, :cond_3

    goto :goto_1

    :goto_2
    invoke-direct {p0, p3, p1}, Lorg/bouncycastle/crypto/tsu/tsu;->zta(B[B)I

    move-result p0

    add-int/2addr p0, v1

    const/16 p3, 0xa

    if-ge p0, p3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    or-int p3, v0, v1

    if-nez p3, :cond_7

    if-nez p2, :cond_6

    array-length p2, p1

    sub-int/2addr p2, p0

    new-array p2, p2, [B

    array-length p3, p2

    invoke-static {p1, p0, p2, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_6
    invoke-static {p1, v2}, Lorg/bouncycastle/util/zta;->fill([BB)V

    new-instance p0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "block incorrect size"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {p1, v2}, Lorg/bouncycastle/util/zta;->fill([BB)V

    new-instance p0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "block incorrect"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private ssp([BII)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tsu/tsu;->d()I

    move-result v0

    if-gt p3, v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Gma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/zta;->d()I

    move-result v0

    new-array v0, v0, [B

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->wya:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    aput-byte v3, v0, v2

    move v1, v3

    :goto_0
    array-length v4, v0

    sub-int/2addr v4, p3

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_2

    const/4 v4, -0x1

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->xma:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x2

    aput-byte v1, v0, v2

    move v1, v3

    :goto_1
    array-length v4, v0

    sub-int/2addr v4, p3

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_2

    :goto_2
    aget-byte v4, v0, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/crypto/tsu/tsu;->xma:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    array-length v1, v0

    sub-int/2addr v1, p3

    sub-int/2addr v1, v3

    aput-byte v2, v0, v1

    array-length v1, v0

    sub-int/2addr v1, p3

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Gma:Lorg/bouncycastle/crypto/zta;

    array-length p1, v0

    invoke-interface {p0, v0, v2, p1}, Lorg/bouncycastle/crypto/zta;->you([BII)[B

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input data too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private zta(B[B)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 p0, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v4, p0

    move v3, v0

    move v2, v1

    :goto_0
    array-length v5, p2

    if-eq v2, v5, :cond_6

    aget-byte v5, p2, v2

    if-nez v5, :cond_0

    move v6, v1

    goto :goto_1

    :cond_0
    move v6, v0

    :goto_1
    if-gez v4, :cond_1

    move v7, v1

    goto :goto_2

    :cond_1
    move v7, v0

    :goto_2
    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    move v4, v2

    :cond_2
    if-ne p1, v1, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v0

    :goto_3
    if-gez v4, :cond_4

    move v7, v1

    goto :goto_4

    :cond_4
    move v7, v0

    :goto_4
    and-int/2addr v6, v7

    if-eq v5, p0, :cond_5

    move v5, v1

    goto :goto_5

    :cond_5
    move v5, v0

    :goto_5
    and-int/2addr v5, v6

    or-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    return p0

    :cond_7
    return v4
.end method


# virtual methods
.method public b()Lorg/bouncycastle/crypto/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Gma:Lorg/bouncycastle/crypto/zta;

    return-object p0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Gma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/zta;->d()I

    move-result v0

    iget-boolean p0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->bxa:Z

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, -0xa

    :cond_0
    return v0
.end method

.method public ivd()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Gma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/zta;->ivd()I

    move-result v0

    iget-boolean p0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->bxa:Z

    if-eqz p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0xa

    return v0
.end method

.method public you([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->bxa:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tsu/tsu;->ssp([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tsu/tsu;->rtg([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 2

    instance-of v0, p2, Lorg/bouncycastle/crypto/wtn/hmo;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/wtn/hmo;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/hmo;->Zi()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->xma:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/hmo;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/wtn/you;

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/wtn/you;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/you;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->Yi()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->xma:Ljava/security/SecureRandom;

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Gma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/crypto/zta;->zta(ZLorg/bouncycastle/crypto/kth;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/you;->isPrivate()Z

    move-result p2

    iput-boolean p2, p0, Lorg/bouncycastle/crypto/tsu/tsu;->wya:Z

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->bxa:Z

    iget-object p1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Gma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/zta;->ivd()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->Aya:[B

    iget p1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->yya:I

    if-lez p1, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/crypto/tsu/tsu;->zya:[B

    if-nez p1, :cond_3

    iget-object p0, p0, Lorg/bouncycastle/crypto/tsu/tsu;->xma:Ljava/security/SecureRandom;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encoder requires random"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method
