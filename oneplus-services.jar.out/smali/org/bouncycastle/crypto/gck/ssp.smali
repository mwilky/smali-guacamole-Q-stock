.class public Lorg/bouncycastle/crypto/gck/ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/vdb;


# static fields
.field private static final QDa:Ljava/util/Hashtable;


# instance fields
.field private final ODa:Lorg/bouncycastle/crypto/zta;

.field private PDa:Z

.field private final Spa:Lorg/bouncycastle/asn1/x509/zta;

.field private final digest:Lorg/bouncycastle/crypto/qbh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/gck/ssp;->QDa:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/crypto/gck/ssp;->QDa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x509/t;->uRa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA-1"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/gck/ssp;->QDa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->oOa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA-224"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/gck/ssp;->QDa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->lOa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA-256"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/gck/ssp;->QDa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->mOa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA-384"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/gck/ssp;->QDa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->nOa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA-512"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/gck/ssp;->QDa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->pOa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA-512/224"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/gck/ssp;->QDa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->qOa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA-512/256"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/gck/ssp;->QDa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->md5:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "MD5"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/qbh;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/gck/ssp;->QDa:Ljava/util/Hashtable;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/qbh;->vju()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/gck/ssp;-><init>(Lorg/bouncycastle/crypto/qbh;Lorg/bouncycastle/asn1/bvj;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/qbh;Lorg/bouncycastle/asn1/bvj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tsu/tsu;

    new-instance v1, Lorg/bouncycastle/crypto/rtg/wtn;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/rtg/wtn;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tsu/tsu;-><init>(Lorg/bouncycastle/crypto/zta;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/gck/ssp;->ODa:Lorg/bouncycastle/crypto/zta;

    iput-object p1, p0, Lorg/bouncycastle/crypto/gck/ssp;->digest:Lorg/bouncycastle/crypto/qbh;

    new-instance p1, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v0, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/gck/ssp;->Spa:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method

.method private veq([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/x509/qbh;

    iget-object p0, p0, Lorg/bouncycastle/crypto/gck/ssp;->Spa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/x509/qbh;-><init>(Lorg/bouncycastle/asn1/x509/zta;[B)V

    const-string p0, "DER"

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public gck()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/gck/ssp;->PDa:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/gck/ssp;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/gck/ssp;->digest:Lorg/bouncycastle/crypto/qbh;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    :try_start_0
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/gck/ssp;->veq([B)[B

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/crypto/gck/ssp;->ODa:Lorg/bouncycastle/crypto/zta;

    array-length v1, v0

    invoke-interface {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/zta;->you([BII)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/crypto/CryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to encode signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "RSADigestSigner not initialised for signature generation."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/gck/ssp;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/qbh;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/gck/ssp;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/qbh;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/gck/ssp;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    return-void
.end method

.method public vju()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/gck/ssp;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/qbh;->vju()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "withRSA"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 2

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/gck/ssp;->PDa:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/wtn/hmo;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/wtn/hmo;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/hmo;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/wtn/you;

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/wtn/you;

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/you;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "signing requires private key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-nez p1, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/you;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "verification requires public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/gck/ssp;->reset()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/gck/ssp;->ODa:Lorg/bouncycastle/crypto/zta;

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/crypto/zta;->zta(ZLorg/bouncycastle/crypto/kth;)V

    return-void
.end method

.method public zta([B)Z
    .locals 9

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/gck/ssp;->PDa:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/gck/ssp;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/gck/ssp;->digest:Lorg/bouncycastle/crypto/qbh;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/gck/ssp;->ODa:Lorg/bouncycastle/crypto/zta;

    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lorg/bouncycastle/crypto/zta;->you([BII)[B

    move-result-object p1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/gck/ssp;->veq([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    array-length v1, p1

    array-length v3, p0

    if-ne v1, v3, :cond_0

    invoke-static {p1, p0}, Lorg/bouncycastle/util/zta;->cno([B[B)Z

    move-result p0

    return p0

    :cond_0
    array-length v1, p1

    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_4

    array-length v1, p1

    array-length v3, v0

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x2

    array-length v3, p0

    array-length v4, v0

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x1

    aget-byte v5, p0, v4

    add-int/lit8 v5, v5, -0x2

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    const/4 v5, 0x3

    aget-byte v6, p0, v5

    add-int/lit8 v6, v6, -0x2

    int-to-byte v6, v6

    aput-byte v6, p0, v5

    move v5, v2

    move v6, v5

    :goto_0
    array-length v7, v0

    if-ge v5, v7, :cond_1

    add-int v7, v1, v5

    aget-byte v7, p1, v7

    add-int v8, v3, v5

    aget-byte v8, p0, v8

    xor-int/2addr v7, v8

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_2

    aget-byte v3, p1, v0

    aget-byte v5, p0, v0

    xor-int/2addr v3, v5

    or-int/2addr v6, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-nez v6, :cond_3

    move v2, v4

    :cond_3
    return v2

    :cond_4
    invoke-static {p0, p0}, Lorg/bouncycastle/util/zta;->cno([B[B)Z

    :catch_0
    return v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RSADigestSigner not initialised for verification"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
