.class public Lorg/bouncycastle/asn1/ibl/veq;
.super Lorg/bouncycastle/asn1/oif;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/rtg;


# instance fields
.field private params:Lorg/bouncycastle/asn1/vdb;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/veq;->params:Lorg/bouncycastle/asn1/vdb;

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/veq;->params:Lorg/bouncycastle/asn1/vdb;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ibl/vju;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/veq;->params:Lorg/bouncycastle/asn1/vdb;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/vju;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/veq;->params:Lorg/bouncycastle/asn1/vdb;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/qbh;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/veq;->params:Lorg/bouncycastle/asn1/vdb;

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/veq;->params:Lorg/bouncycastle/asn1/vdb;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/vdb;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/veq;->params:Lorg/bouncycastle/asn1/vdb;

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/veq;->params:Lorg/bouncycastle/asn1/vdb;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/veq;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/bouncycastle/asn1/ibl/veq;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/vdb;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/ibl/veq;

    check-cast p0, Lorg/bouncycastle/asn1/vdb;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/vdb;)V

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ibl/veq;

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/vdb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse encoded data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/ibl/veq;

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ibl/veq;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/lqr;->getObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl/veq;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/veq;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/veq;->params:Lorg/bouncycastle/asn1/vdb;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/veq;->params:Lorg/bouncycastle/asn1/vdb;

    return-object p0
.end method

.method public yi()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/veq;->params:Lorg/bouncycastle/asn1/vdb;

    instance-of p0, p0, Lorg/bouncycastle/asn1/qbh;

    return p0
.end method

.method public zi()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/veq;->params:Lorg/bouncycastle/asn1/vdb;

    instance-of p0, p0, Lorg/bouncycastle/asn1/bvj;

    return p0
.end method
