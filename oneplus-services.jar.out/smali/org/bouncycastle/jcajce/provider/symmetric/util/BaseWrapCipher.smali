.class public abstract Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.super Ljavax/crypto/CipherSpi;
.source ""

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/gck;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;,
        Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;
    }
.end annotation


# instance fields
.field private Fqa:[Ljava/lang/Class;

.field protected Gqa:Ljava/security/AlgorithmParameters;

.field protected Hqa:Lorg/bouncycastle/crypto/ire;

.field protected Mqa:I

.field protected Nqa:I

.field protected Oqa:I

.field protected Pqa:I

.field private Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

.field private Rqa:Z

.field private final helper:Lorg/bouncycastle/jcajce/tsu/tsu;

.field private iv:[B

.field private ivSize:I


# direct methods
.method protected constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Fqa:[Ljava/lang/Class;

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Mqa:I

    iput v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Nqa:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    new-instance v0, Lorg/bouncycastle/jcajce/tsu/sis;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/tsu/sis;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/ire;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/bouncycastle/crypto/ire;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/ire;I)V
    .locals 4

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Fqa:[Ljava/lang/Class;

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Mqa:I

    iput v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Nqa:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    new-instance v0, Lorg/bouncycastle/jcajce/tsu/sis;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/tsu/sis;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ivSize:I

    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :try_start_0
    iget-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Rqa:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;->Uf()[B

    move-result-object p3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-interface {p1, p3, p2, v0}, Lorg/bouncycastle/crypto/ire;->wrap([BII)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;->Uf()[B

    move-result-object p3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-interface {p1, p3, p2, v0}, Lorg/bouncycastle/crypto/ire;->tsu([BII)[B

    move-result-object p1
    :try_end_3
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    array-length p3, p1

    add-int/2addr p3, p5

    array-length v0, p4

    if-gt p3, v0, :cond_1

    array-length p3, p1

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;->erase()V

    return p1

    :cond_1
    :try_start_5
    new-instance p1, Ljavax/crypto/ShortBufferException;

    const-string p2, "output buffer too short for input."

    invoke-direct {p1, p2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;->erase()V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not supported in a wrapping mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineDoFinal([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :try_start_0
    iget-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Rqa:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;->Uf()[B

    move-result-object p3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-interface {p1, p3, p2, v0}, Lorg/bouncycastle/crypto/ire;->wrap([BII)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;->erase()V

    return-object p1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;->Uf()[B

    move-result-object p3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-interface {p1, p3, p2, v0}, Lorg/bouncycastle/crypto/ire;->tsu([BII)[B

    move-result-object p1
    :try_end_3
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_4
    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;->erase()V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not supported in a wrapping mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineGetBlockSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected engineGetIV()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method protected engineGetOutputSize(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ire;->vju()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ua(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Fqa:[Ljava/lang/Class;

    array-length v3, v2

    if-eq v1, v3, :cond_0

    :try_start_0
    aget-object v2, v2, v1

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "can\'t handle parameter "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Gqa:Ljava/security/AlgorithmParameters;

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;

    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    instance-of v0, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ire;->vju()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/kth;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->he()Lorg/bouncycastle/crypto/kth;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->he()Lorg/bouncycastle/crypto/kth;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "PBE requires PBE parameters to be set."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/wtn/cjf;-><init>([B)V

    move-object p2, v0

    :goto_0
    instance-of v0, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_3

    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    new-instance p3, Lorg/bouncycastle/crypto/wtn/ire;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-direct {p3, p2, v0}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    move-object p2, p3

    :cond_3
    instance-of p3, p2, Lorg/bouncycastle/crypto/wtn/cjf;

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p3, :cond_5

    iget p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ivSize:I

    if-eqz p3, :cond_5

    if-eq p1, v0, :cond_4

    if-ne p1, v1, :cond_5

    :cond_4
    iget p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ivSize:I

    new-array p3, p3, [B

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-virtual {p4, p3}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p3, Lorg/bouncycastle/crypto/wtn/ire;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-direct {p3, p2, v2}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    move-object p2, p3

    :cond_5
    if-eqz p4, :cond_6

    new-instance p3, Lorg/bouncycastle/crypto/wtn/hmo;

    invoke-direct {p3, p2, p4}, Lorg/bouncycastle/crypto/wtn/hmo;-><init>(Lorg/bouncycastle/crypto/kth;Ljava/security/SecureRandom;)V

    move-object p2, p3

    :cond_6
    if-eq p1, v1, :cond_a

    const/4 p3, 0x2

    const/4 p4, 0x0

    if-eq p1, p3, :cond_9

    const/4 p3, 0x0

    if-eq p1, v0, :cond_8

    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    invoke-interface {p1, p4, p2}, Lorg/bouncycastle/crypto/ire;->zta(ZLorg/bouncycastle/crypto/kth;)V

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    :goto_1
    iput-boolean p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Rqa:Z

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Unknown mode parameter passed to init."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    invoke-interface {p1, v1, p2}, Lorg/bouncycastle/crypto/ire;->zta(ZLorg/bouncycastle/crypto/kth;)V

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    :goto_2
    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Rqa:Z

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    invoke-interface {p1, p4, p2}, Lorg/bouncycastle/crypto/ire;->zta(ZLorg/bouncycastle/crypto/kth;)V

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    invoke-interface {p1, v1, p2}, Lorg/bouncycastle/crypto/ire;->zta(ZLorg/bouncycastle/crypto/kth;)V

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t support mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Padding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unknown."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "Unknown key type "

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineDoFinal([BII)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lorg/bouncycastle/crypto/ire;->tsu([BII)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0

    :cond_1
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    if-ne p3, v2, :cond_3

    :try_start_1
    invoke-static {p1}, Lorg/bouncycastle/asn1/dma/vdb;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->you(Lorg/bouncycastle/asn1/dma/vdb;)Ljava/security/PrivateKey;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "algorithm "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/vdb;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not supported"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Invalid key encoding."

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :try_start_2
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    invoke-interface {p0, p2}, Lorg/bouncycastle/jcajce/tsu/tsu;->qbh(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    const/4 p2, 0x1

    if-ne p3, p2, :cond_4

    new-instance p2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p2, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, p2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :cond_4
    if-ne p3, v2, :cond_5

    new-instance p2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, p2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :cond_5
    new-instance p0, Ljava/security/InvalidKeyException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_4
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_5
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineUpdate([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not supported in a wrapping mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineUpdate([BII)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Qqa:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$zta;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not supported in a wrapping mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineDoFinal([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Hqa:Lorg/bouncycastle/crypto/ire;

    array-length v0, p1

    invoke-interface {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/ire;->wrap([BII)[B

    move-result-object p0
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Cannot wrap key, null encoding."

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final ua(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    invoke-interface {p0, p1}, Lorg/bouncycastle/jcajce/tsu/tsu;->cno(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    return-object p0
.end method
