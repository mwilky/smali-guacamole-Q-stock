.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/util/gck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(II)Lorg/bouncycastle/crypto/gwm;
    .locals 6

    const/4 v0, 0x1

    if-eqz p0, :cond_10

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x7

    if-eq p0, v0, :cond_9

    const/4 v5, 0x5

    if-ne p0, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    if-ne p0, v5, :cond_8

    if-eqz p1, :cond_7

    if-eq p1, v0, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-ne p1, v2, :cond_2

    new-instance p0, Lorg/bouncycastle/crypto/ssp/wtn;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->wtn()Lorg/bouncycastle/crypto/qbh;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/ssp/wtn;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    goto/16 :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unknown digest scheme for PBE encryption."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/bouncycastle/crypto/ssp/wtn;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->ywr()Lorg/bouncycastle/crypto/qbh;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/ssp/wtn;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    goto/16 :goto_2

    :cond_4
    new-instance p0, Lorg/bouncycastle/crypto/ssp/wtn;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->bud()Lorg/bouncycastle/crypto/qbh;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/ssp/wtn;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    goto/16 :goto_2

    :cond_5
    new-instance p0, Lorg/bouncycastle/crypto/ssp/wtn;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->oxb()Lorg/bouncycastle/crypto/qbh;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/ssp/wtn;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    goto/16 :goto_2

    :cond_6
    new-instance p0, Lorg/bouncycastle/crypto/ssp/wtn;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->e()Lorg/bouncycastle/crypto/qbh;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/ssp/wtn;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    goto/16 :goto_2

    :cond_7
    new-instance p0, Lorg/bouncycastle/crypto/ssp/wtn;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->veq()Lorg/bouncycastle/crypto/qbh;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/ssp/wtn;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    goto/16 :goto_2

    :cond_8
    new-instance p0, Lorg/bouncycastle/crypto/ssp/igw;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/ssp/igw;-><init>()V

    goto/16 :goto_2

    :cond_9
    :goto_0
    if-eqz p1, :cond_f

    if-eq p1, v0, :cond_e

    if-eq p1, v1, :cond_d

    if-eq p1, v4, :cond_c

    if-eq p1, v3, :cond_b

    if-ne p1, v2, :cond_a

    new-instance p0, Lorg/bouncycastle/crypto/ssp/dma;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->wtn()Lorg/bouncycastle/crypto/qbh;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/ssp/dma;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    goto :goto_2

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unknown digest scheme for PBE PKCS5S2 encryption."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lorg/bouncycastle/crypto/ssp/dma;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->ywr()Lorg/bouncycastle/crypto/qbh;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/ssp/dma;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    goto :goto_2

    :cond_c
    new-instance p0, Lorg/bouncycastle/crypto/ssp/dma;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->bud()Lorg/bouncycastle/crypto/qbh;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/ssp/dma;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    goto :goto_2

    :cond_d
    new-instance p0, Lorg/bouncycastle/crypto/ssp/dma;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->oxb()Lorg/bouncycastle/crypto/qbh;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/ssp/dma;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    goto :goto_2

    :cond_e
    new-instance p0, Lorg/bouncycastle/crypto/ssp/dma;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->e()Lorg/bouncycastle/crypto/qbh;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/ssp/dma;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    goto :goto_2

    :cond_f
    new-instance p0, Lorg/bouncycastle/crypto/ssp/dma;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->veq()Lorg/bouncycastle/crypto/qbh;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/ssp/dma;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    goto :goto_2

    :cond_10
    :goto_1
    if-eqz p1, :cond_12

    if-ne p1, v0, :cond_11

    new-instance p0, Lorg/bouncycastle/crypto/ssp/gck;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->e()Lorg/bouncycastle/crypto/qbh;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/ssp/gck;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    goto :goto_2

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Lorg/bouncycastle/crypto/ssp/gck;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->veq()Lorg/bouncycastle/crypto/qbh;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/ssp/gck;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    :goto_2
    return-object p0
.end method

.method public static zta(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 4

    :try_start_0
    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "javax.crypto.spec.PBEParameterSpec"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getParameterSpec"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lorg/bouncycastle/crypto/kth;
    .locals 1

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->a(II)Lorg/bouncycastle/crypto/gwm;

    move-result-object p1

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p2

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p4

    invoke-virtual {p1, p0, v0, p4}, Lorg/bouncycastle/crypto/gwm;->zta([B[BI)V

    invoke-virtual {p1, p3}, Lorg/bouncycastle/crypto/gwm;->ja(I)Lorg/bouncycastle/crypto/kth;

    move-result-object p0

    const/4 p1, 0x0

    move p3, p1

    :goto_0
    array-length p4, p2

    if-eq p3, p4, :cond_0

    aput-byte p1, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static zta(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/bouncycastle/crypto/kth;
    .locals 1

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->a(II)Lorg/bouncycastle/crypto/gwm;

    move-result-object p2

    invoke-static {p1, p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object p1

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p0

    invoke-virtual {p2, p1, v0, p0}, Lorg/bouncycastle/crypto/gwm;->zta([B[BI)V

    invoke-virtual {p2, p3}, Lorg/bouncycastle/crypto/gwm;->ja(I)Lorg/bouncycastle/crypto/kth;

    move-result-object p0

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    array-length v0, p1

    if-eq p3, v0, :cond_0

    aput-byte p2, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static zta(Ljavax/crypto/spec/PBEKeySpec;IIII)Lorg/bouncycastle/crypto/kth;
    .locals 1

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->a(II)Lorg/bouncycastle/crypto/gwm;

    move-result-object p2

    invoke-static {p1, p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object p1

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p0

    invoke-virtual {p2, p1, v0, p0}, Lorg/bouncycastle/crypto/gwm;->zta([B[BI)V

    if-eqz p4, :cond_0

    invoke-virtual {p2, p3, p4}, Lorg/bouncycastle/crypto/gwm;->ugm(II)Lorg/bouncycastle/crypto/kth;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lorg/bouncycastle/crypto/gwm;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/kth;

    move-result-object p0

    :goto_0
    const/4 p2, 0x0

    move p3, p2

    :goto_1
    array-length p4, p1

    if-eq p3, p4, :cond_1

    aput-byte p2, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/crypto/kth;
    .locals 3

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->Uf()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->a(II)Lorg/bouncycastle/crypto/gwm;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/bouncycastle/crypto/gwm;->zta([B[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/gwm;->ja(I)Lorg/bouncycastle/crypto/kth;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zta(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/kth;
    .locals 4

    if-eqz p1, :cond_6

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_6

    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->Uf()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->a(II)Lorg/bouncycastle/crypto/gwm;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->Lj()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [B

    :cond_0
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/gwm;->zta([B[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->Kj()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->Kj()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/gwm;->ugm(II)Lorg/bouncycastle/crypto/kth;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    :cond_1
    instance-of p0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz p0, :cond_2

    check-cast v0, Lorg/bouncycastle/crypto/wtn/ire;

    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    new-instance p0, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/gwm;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/kth;

    move-result-object p0

    :goto_0
    const-string p1, "DES"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    instance-of p1, p0, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz p1, :cond_4

    move-object p1, p0

    check-cast p1, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/wtn/cjf;

    goto :goto_1

    :cond_4
    move-object p1, p0

    check-cast p1, Lorg/bouncycastle/crypto/wtn/cjf;

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cjf;->getKey()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/wtn/sis;->bvj([B)V

    :cond_5
    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zta([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/kth;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p5, :cond_5

    instance-of v0, p5, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_5

    check-cast p5, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->a(II)Lorg/bouncycastle/crypto/gwm;

    move-result-object p2

    invoke-virtual {p5}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p5}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v1

    invoke-virtual {p2, p0, v0, v1}, Lorg/bouncycastle/crypto/gwm;->zta([B[BI)V

    if-eqz p4, :cond_1

    invoke-virtual {p2, p3, p4}, Lorg/bouncycastle/crypto/gwm;->ugm(II)Lorg/bouncycastle/crypto/kth;

    move-result-object p0

    invoke-static {p5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    const/4 p3, 0x5

    if-ne p1, p3, :cond_2

    :cond_0
    instance-of p1, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz p1, :cond_2

    check-cast p0, Lorg/bouncycastle/crypto/wtn/ire;

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    new-instance p1, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p3}, Lorg/bouncycastle/crypto/gwm;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/kth;

    move-result-object p0

    :cond_2
    :goto_0
    const-string p1, "DES"

    invoke-virtual {p6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    instance-of p1, p0, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz p1, :cond_3

    move-object p1, p0

    check-cast p1, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/wtn/cjf;

    goto :goto_1

    :cond_3
    move-object p1, p0

    check-cast p1, Lorg/bouncycastle/crypto/wtn/cjf;

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cjf;->getKey()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/wtn/sis;->bvj([B)V

    :cond_4
    return-object p0

    :cond_5
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zta(ILjavax/crypto/spec/PBEKeySpec;)[B
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/gwm;->zta([C)[B

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/gwm;->PKCS5PasswordToBytes([C)[B

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/gwm;->you([C)[B

    move-result-object p0

    :goto_1
    return-object p0
.end method
