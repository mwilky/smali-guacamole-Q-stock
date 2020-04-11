.class public Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;
.super Ljava/lang/Object;
.source "ChunkEncryptor.java"


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final GCM_NONCE_LENGTH_BYTES:I = 0xc

.field private static final GCM_TAG_LENGTH_BYTES:I = 0x10


# instance fields
.field private final mSecretKey:Ljavax/crypto/SecretKey;

.field private final mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;->mSecretKey:Ljavax/crypto/SecretKey;

    iput-object p2, p0, Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;->mSecureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method private generateNonce()[B
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method


# virtual methods
.method public encrypt(Lcom/android/server/backup/encryption/chunk/ChunkHash;[B)Lcom/android/server/backup/encryption/chunking/EncryptedChunk;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;->generateNonce()[B

    move-result-object v0

    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;->mSecretKey:Ljavax/crypto/SecretKey;

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    invoke-static {p1, v0, v2}, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->create(Lcom/android/server/backup/encryption/chunk/ChunkHash;[B[B)Lcom/android/server/backup/encryption/chunking/EncryptedChunk;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Impossible: threw BadPaddingException in encrypt mode."

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
