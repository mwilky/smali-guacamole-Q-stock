.class public Lorg/bouncycastle/jcajce/you/tsu/zta$you;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/you;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "you"
.end annotation


# instance fields
.field private Cla:Lorg/bouncycastle/asn1/you/kth;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/you;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/tsu/zta$you;->Cla:Lorg/bouncycastle/asn1/you/kth;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/you;->sa(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/tsu/zta$you;->Cla:Lorg/bouncycastle/asn1/you/kth;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unknown format specified"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jcajce/you/tsu/cno;->you(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/jcajce/you/tsu/cno;->zta(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/asn1/you/kth;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/tsu/zta$you;->Cla:Lorg/bouncycastle/asn1/you/kth;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jcajce/sis/zta;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/you/kth;

    check-cast p1, Lorg/bouncycastle/jcajce/sis/zta;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/sis/zta;->getNonce()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/sis/zta;->kg()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/you/kth;-><init>([BI)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/you/tsu/zta$you;->Cla:Lorg/bouncycastle/asn1/you/kth;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlgorithmParameterSpec class not recognized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineInit([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/asn1/you/kth;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/kth;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/tsu/zta$you;->Cla:Lorg/bouncycastle/asn1/you/kth;

    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/you;->sa(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/asn1/you/kth;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/kth;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/tsu/zta$you;->Cla:Lorg/bouncycastle/asn1/you/kth;

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unknown format specified"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 0

    const-string p0, "GCM"

    return-object p0
.end method

.method protected zta(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-eq p1, v0, :cond_3

    invoke-static {p1}, Lorg/bouncycastle/jcajce/you/tsu/cno;->you(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lorg/bouncycastle/jcajce/sis/zta;

    if-ne p1, v0, :cond_1

    new-instance p1, Lorg/bouncycastle/jcajce/sis/zta;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/you/tsu/zta$you;->Cla:Lorg/bouncycastle/asn1/you/kth;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/you/kth;->getNonce()[B

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/tsu/zta$you;->Cla:Lorg/bouncycastle/asn1/you/kth;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/you/kth;->Og()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jcajce/sis/zta;-><init>([BI)V

    return-object p1

    :cond_1
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_2

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/tsu/zta$you;->Cla:Lorg/bouncycastle/asn1/you/kth;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/you/kth;->getNonce()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlgorithmParameterSpec not recognized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-static {}, Lorg/bouncycastle/jcajce/you/tsu/cno;->vj()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/tsu/zta$you;->Cla:Lorg/bouncycastle/asn1/you/kth;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/you/kth;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/you/tsu/cno;->sis(Lorg/bouncycastle/asn1/vdb;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p1, Lorg/bouncycastle/jcajce/sis/zta;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/you/tsu/zta$you;->Cla:Lorg/bouncycastle/asn1/you/kth;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/you/kth;->getNonce()[B

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/tsu/zta$you;->Cla:Lorg/bouncycastle/asn1/you/kth;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/you/kth;->Og()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jcajce/sis/zta;-><init>([BI)V

    return-object p1
.end method
