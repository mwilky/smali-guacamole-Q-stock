.class public Lorg/bouncycastle/crypto/kth/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/ibl;


# static fields
.field private static final YCa:B = 0x36t

.field private static final ZCa:B = 0x5ct

.field private static _Ca:Ljava/util/Hashtable;


# instance fields
.field private SCa:I

.field private TCa:I

.field private UCa:Lorg/bouncycastle/util/bio;

.field private VCa:Lorg/bouncycastle/util/bio;

.field private WCa:[B

.field private XCa:[B

.field private digest:Lorg/bouncycastle/crypto/qbh;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/kth/you;->_Ca:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/crypto/kth/you;->_Ca:Ljava/util/Hashtable;

    const/16 v1, 0x40

    invoke-static {v1}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MD5"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/kth/you;->_Ca:Ljava/util/Hashtable;

    invoke-static {v1}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SHA-1"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/kth/you;->_Ca:Ljava/util/Hashtable;

    invoke-static {v1}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SHA-224"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/kth/you;->_Ca:Ljava/util/Hashtable;

    invoke-static {v1}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SHA-256"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/kth/you;->_Ca:Ljava/util/Hashtable;

    const/16 v1, 0x80

    invoke-static {v1}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SHA-384"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/kth/you;->_Ca:Ljava/util/Hashtable;

    invoke-static {v1}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SHA-512"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/qbh;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/crypto/kth/you;->zta(Lorg/bouncycastle/crypto/qbh;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/kth/you;-><init>(Lorg/bouncycastle/crypto/qbh;I)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/crypto/qbh;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/kth/you;->SCa:I

    iput p2, p0, Lorg/bouncycastle/crypto/kth/you;->TCa:I

    iget p1, p0, Lorg/bouncycastle/crypto/kth/you;->TCa:I

    new-array p2, p1, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/kth/you;->WCa:[B

    iget p2, p0, Lorg/bouncycastle/crypto/kth/you;->SCa:I

    add-int/2addr p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/kth/you;->XCa:[B

    return-void
.end method

.method private static you([BIB)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-byte v1, p0, v0

    xor-int/2addr v1, p2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static zta(Lorg/bouncycastle/crypto/qbh;)I
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/crypto/oif;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/crypto/oif;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/oif;->getByteLength()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/kth/you;->_Ca:Ljava/util/Hashtable;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/qbh;->vju()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown digest passed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/qbh;->vju()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    iget-object v1, p0, Lorg/bouncycastle/crypto/kth/you;->XCa:[B

    iget v2, p0, Lorg/bouncycastle/crypto/kth/you;->TCa:I

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/you;->VCa:Lorg/bouncycastle/util/bio;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    check-cast v2, Lorg/bouncycastle/util/bio;

    invoke-interface {v2, v0}, Lorg/bouncycastle/util/bio;->zta(Lorg/bouncycastle/util/bio;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    iget-object v2, p0, Lorg/bouncycastle/crypto/kth/you;->XCa:[B

    iget v3, p0, Lorg/bouncycastle/crypto/kth/you;->TCa:I

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    iget-object v2, p0, Lorg/bouncycastle/crypto/kth/you;->XCa:[B

    array-length v3, v2

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    move-result p1

    iget p2, p0, Lorg/bouncycastle/crypto/kth/you;->TCa:I

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/you;->XCa:[B

    array-length v2, v0

    if-ge p2, v2, :cond_1

    aput-byte v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/bouncycastle/crypto/kth/you;->UCa:Lorg/bouncycastle/util/bio;

    if-eqz p2, :cond_2

    iget-object p0, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    check-cast p0, Lorg/bouncycastle/util/bio;

    invoke-interface {p0, p2}, Lorg/bouncycastle/util/bio;->zta(Lorg/bouncycastle/util/bio;)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    iget-object p0, p0, Lorg/bouncycastle/crypto/kth/you;->WCa:[B

    array-length v0, p0

    invoke-interface {p2, p0, v1, v0}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    :goto_2
    return p1
.end method

.method public nj()Lorg/bouncycastle/crypto/qbh;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    return-object p0
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    iget-object p0, p0, Lorg/bouncycastle/crypto/kth/you;->WCa:[B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v1}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    return-void
.end method

.method public update(B)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/qbh;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    return-void
.end method

.method public vju()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/qbh;->vju()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/HMAC"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public you()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/kth/you;->SCa:I

    return p0
.end method

.method public you(Lorg/bouncycastle/crypto/kth;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->reset()V

    check-cast p1, Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cjf;->getKey()[B

    move-result-object p1

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/kth/you;->TCa:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v1, p1, v2, v0}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/you;->WCa:[B

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    iget v0, p0, Lorg/bouncycastle/crypto/kth/you;->SCa:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/kth/you;->WCa:[B

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/kth/you;->WCa:[B

    array-length v1, p1

    if-ge v0, v1, :cond_1

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/you;->XCa:[B

    iget v1, p0, Lorg/bouncycastle/crypto/kth/you;->TCa:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/kth/you;->WCa:[B

    iget v0, p0, Lorg/bouncycastle/crypto/kth/you;->TCa:I

    const/16 v1, 0x36

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/crypto/kth/you;->you([BIB)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/kth/you;->XCa:[B

    iget v0, p0, Lorg/bouncycastle/crypto/kth/you;->TCa:I

    const/16 v1, 0x5c

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/crypto/kth/you;->you([BIB)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    instance-of v0, p1, Lorg/bouncycastle/util/bio;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/bouncycastle/util/bio;

    invoke-interface {p1}, Lorg/bouncycastle/util/bio;->copy()Lorg/bouncycastle/util/bio;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/kth/you;->VCa:Lorg/bouncycastle/util/bio;

    iget-object p1, p0, Lorg/bouncycastle/crypto/kth/you;->VCa:Lorg/bouncycastle/util/bio;

    check-cast p1, Lorg/bouncycastle/crypto/qbh;

    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/you;->XCa:[B

    iget v1, p0, Lorg/bouncycastle/crypto/kth/you;->TCa:I

    invoke-interface {p1, v0, v2, v1}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/you;->WCa:[B

    array-length v1, v0

    invoke-interface {p1, v0, v2, v1}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/kth/you;->digest:Lorg/bouncycastle/crypto/qbh;

    instance-of v0, p1, Lorg/bouncycastle/util/bio;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/bouncycastle/util/bio;

    invoke-interface {p1}, Lorg/bouncycastle/util/bio;->copy()Lorg/bouncycastle/util/bio;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/kth/you;->UCa:Lorg/bouncycastle/util/bio;

    :cond_3
    return-void
.end method
