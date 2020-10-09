.class public Lorg/bouncycastle/asn1/tsu;
.super Lorg/bouncycastle/asn1/vdb;
.source ""


# static fields
.field public static final FALSE:Lorg/bouncycastle/asn1/tsu;

.field public static final TRUE:Lorg/bouncycastle/asn1/tsu;

.field private static final msa:[B

.field private static final nsa:[B


# instance fields
.field private final value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    sput-object v1, Lorg/bouncycastle/asn1/tsu;->msa:[B

    new-array v1, v0, [B

    aput-byte v2, v1, v2

    sput-object v1, Lorg/bouncycastle/asn1/tsu;->nsa:[B

    new-instance v1, Lorg/bouncycastle/asn1/tsu;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/tsu;-><init>(Z)V

    sput-object v1, Lorg/bouncycastle/asn1/tsu;->FALSE:Lorg/bouncycastle/asn1/tsu;

    new-instance v1, Lorg/bouncycastle/asn1/tsu;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/tsu;-><init>(Z)V

    sput-object v1, Lorg/bouncycastle/asn1/tsu;->TRUE:Lorg/bouncycastle/asn1/tsu;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/vdb;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lorg/bouncycastle/asn1/tsu;->msa:[B

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/bouncycastle/asn1/tsu;->nsa:[B

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/tsu;->value:[B

    return-void
.end method

.method constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/vdb;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    sget-object p1, Lorg/bouncycastle/asn1/tsu;->nsa:[B

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/tsu;->value:[B

    goto :goto_1

    :cond_0
    aget-byte v0, p1, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    sget-object p1, Lorg/bouncycastle/asn1/tsu;->msa:[B

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byte value should have 1 byte in it"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(I)Lorg/bouncycastle/asn1/tsu;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/tsu;->TRUE:Lorg/bouncycastle/asn1/tsu;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/bouncycastle/asn1/tsu;->FALSE:Lorg/bouncycastle/asn1/tsu;

    :goto_0
    return-object p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsu;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/tsu;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/tsu;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct boolean from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/tsu;

    return-object p0
.end method

.method public static getInstance(Z)Lorg/bouncycastle/asn1/tsu;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/tsu;->TRUE:Lorg/bouncycastle/asn1/tsu;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/bouncycastle/asn1/tsu;->FALSE:Lorg/bouncycastle/asn1/tsu;

    :goto_0
    return-object p0
.end method

.method public static getInstance([B)Lorg/bouncycastle/asn1/tsu;
    .locals 1

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/tsu;->TRUE:Lorg/bouncycastle/asn1/tsu;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/bouncycastle/asn1/tsu;->FALSE:Lorg/bouncycastle/asn1/tsu;

    :goto_0
    return-object p0
.end method

.method static wtn([B)Lorg/bouncycastle/asn1/tsu;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/tsu;->FALSE:Lorg/bouncycastle/asn1/tsu;

    return-object p0

    :cond_0
    aget-byte v0, p0, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    sget-object p0, Lorg/bouncycastle/asn1/tsu;->TRUE:Lorg/bouncycastle/asn1/tsu;

    return-object p0

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/tsu;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/tsu;-><init>([B)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BOOLEAN value should have 1 byte in it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/tsu;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/lqr;->getObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    if-nez p1, :cond_1

    instance-of p1, p0, Lorg/bouncycastle/asn1/tsu;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/tsu;->wtn([B)Lorg/bouncycastle/asn1/tsu;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsu;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method Eg()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public Jg()Z
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/asn1/tsu;->value:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/asn1/tsu;->value:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    return p0
.end method

.method isConstructed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/asn1/tsu;->value:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    if-eqz p0, :cond_0

    const-string p0, "TRUE"

    goto :goto_0

    :cond_0
    const-string p0, "FALSE"

    :goto_0
    return-object p0
.end method

.method zta(Lorg/bouncycastle/asn1/ugm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/asn1/tsu;->value:[B

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lorg/bouncycastle/asn1/ugm;->zta(I[B)V

    return-void
.end method

.method protected zta(Lorg/bouncycastle/asn1/vdb;)Z
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/asn1/tsu;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/asn1/tsu;->value:[B

    aget-byte p0, p0, v1

    check-cast p1, Lorg/bouncycastle/asn1/tsu;

    iget-object p1, p1, Lorg/bouncycastle/asn1/tsu;->value:[B

    aget-byte p1, p1, v1

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
