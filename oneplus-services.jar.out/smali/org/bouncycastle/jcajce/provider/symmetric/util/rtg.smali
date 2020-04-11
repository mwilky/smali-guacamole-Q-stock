.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;
.super Ljavax/crypto/MacSpi;
.source ""

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/gck;


# static fields
.field private static final Qna:Ljava/lang/Class;


# instance fields
.field private Ana:I

.field private foa:Lorg/bouncycastle/crypto/ibl;

.field private keySize:I

.field private scheme:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;

    const-string v1, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/igw;->zta(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->Qna:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/ibl;)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->scheme:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->Ana:I

    const/16 v0, 0xa0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->keySize:I

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->foa:Lorg/bouncycastle/crypto/ibl;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/ibl;III)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->scheme:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->Ana:I

    const/16 v0, 0xa0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->keySize:I

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->foa:Lorg/bouncycastle/crypto/ibl;

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->scheme:I

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->Ana:I

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->keySize:I

    return-void
.end method

.method private static ssp(Ljava/util/Map;)Ljava/util/Hashtable;
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->engineGetMacLength()I

    move-result v0

    new-array v0, v0, [B

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->foa:Lorg/bouncycastle/crypto/ibl;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lorg/bouncycastle/crypto/ibl;->doFinal([BI)I

    return-object v0
.end method

.method protected engineGetMacLength()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->foa:Lorg/bouncycastle/crypto/ibl;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/ibl;->you()I

    move-result p0

    return p0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p1, :cond_11

    instance-of v0, p1, Lorg/bouncycastle/jcajce/PKCS12Key;

    if-eqz v0, :cond_6

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v1, p2

    check-cast v1, Ljavax/crypto/spec/PBEParameterSpec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    instance-of v2, v0, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v2, v0

    check-cast v2, Ljavax/crypto/interfaces/PBEKey;

    invoke-interface {v2}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v3

    invoke-interface {v2}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v2

    invoke-direct {v1, v3, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    :cond_0
    const/4 v2, 0x1

    const/16 v3, 0xa0

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->foa:Lorg/bouncycastle/crypto/ibl;

    instance-of v5, v4, Lorg/bouncycastle/crypto/kth/you;

    if-eqz v5, :cond_5

    invoke-interface {v4}, Lorg/bouncycastle/crypto/ibl;->vju()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SHA-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->foa:Lorg/bouncycastle/crypto/ibl;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/ibl;->vju()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA-224"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    const/16 v3, 0xe0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->foa:Lorg/bouncycastle/crypto/ibl;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/ibl;->vju()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA-256"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    const/16 v3, 0x100

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->foa:Lorg/bouncycastle/crypto/ibl;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/ibl;->vju()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA-384"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    const/16 v3, 0x180

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->foa:Lorg/bouncycastle/crypto/ibl;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/ibl;->vju()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA-512"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x9

    const/16 v3, 0x200

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no PKCS12 mapping for HMAC: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->foa:Lorg/bouncycastle/crypto/ibl;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/ibl;->vju()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    const/4 v4, 0x2

    invoke-static {v0, v4, v2, v3, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lorg/bouncycastle/crypto/kth;

    move-result-object v0

    goto :goto_1

    :catch_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "PKCS12 requires a PBEParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "PKCS12 requires a SecretKey/PBEKey"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->Xd()Lorg/bouncycastle/crypto/kth;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->Xd()Lorg/bouncycastle/crypto/kth;

    move-result-object v0

    goto :goto_1

    :cond_7
    instance-of v1, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v1, :cond_8

    invoke-static {v0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/crypto/kth;

    move-result-object v0

    goto :goto_1

    :cond_8
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "PBE requires PBE parameters to be set."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    instance-of v0, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v0, :cond_10

    new-instance v0, Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/wtn/cjf;-><init>([B)V

    :goto_1
    instance-of v1, v0, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/wtn/cjf;

    goto :goto_2

    :cond_a
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/crypto/wtn/cjf;

    :goto_2
    instance-of v2, p2, Lorg/bouncycastle/jcajce/sis/zta;

    if-eqz v2, :cond_b

    check-cast p2, Lorg/bouncycastle/jcajce/sis/zta;

    new-instance v0, Lorg/bouncycastle/crypto/wtn/zta;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/sis/zta;->kg()I

    move-result p1

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/sis/zta;->getNonce()[B

    move-result-object v2

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/sis/zta;->jg()[B

    move-result-object p2

    invoke-direct {v0, v1, p1, v2, p2}, Lorg/bouncycastle/crypto/wtn/zta;-><init>(Lorg/bouncycastle/crypto/wtn/cjf;I[B[B)V

    goto :goto_3

    :cond_b
    instance-of v2, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_c

    new-instance v0, Lorg/bouncycastle/crypto/wtn/ire;

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    goto :goto_3

    :cond_c
    if-nez p2, :cond_d

    new-instance v0, Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/wtn/cjf;-><init>([B)V

    goto :goto_3

    :cond_d
    sget-object p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->Qna:Ljava/lang/Class;

    if-eqz p1, :cond_e

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_e

    :try_start_2
    sget-object p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->Qna:Ljava/lang/Class;

    const-string v0, "getTLen"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->Qna:Ljava/lang/Class;

    const-string v3, "getIV"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v3, Lorg/bouncycastle/crypto/wtn/zta;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-direct {v3, v1, p1, p2}, Lorg/bouncycastle/crypto/wtn/zta;-><init>(Lorg/bouncycastle/crypto/wtn/cjf;I[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v3

    goto :goto_3

    :catch_2
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Cannot process GCMParameterSpec."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    instance-of p1, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz p1, :cond_f

    :goto_3
    :try_start_3
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->foa:Lorg/bouncycastle/crypto/ibl;

    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/ibl;->you(Lorg/bouncycastle/crypto/kth;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception p0

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot initialize MAC: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown parameter type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "inappropriate parameter type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "key is null"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineReset()V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->foa:Lorg/bouncycastle/crypto/ibl;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/ibl;->reset()V

    return-void
.end method

.method protected engineUpdate(B)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->foa:Lorg/bouncycastle/crypto/ibl;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/ibl;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;->foa:Lorg/bouncycastle/crypto/ibl;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/ibl;->update([BII)V

    return-void
.end method
