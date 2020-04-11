.class public Lcom/android/server/backup/encryption/chunking/ChunkHasher;
.super Ljava/lang/Object;
.source "ChunkHasher.java"


# static fields
.field private static final MAC_ALGORITHM:Ljava/lang/String; = "HmacSHA256"


# instance fields
.field private final mSecretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/encryption/chunking/ChunkHasher;->mSecretKey:Ljavax/crypto/SecretKey;

    return-void
.end method


# virtual methods
.method public computeHash([B)Lcom/android/server/backup/encryption/chunk/ChunkHash;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/encryption/chunking/ChunkHasher;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    new-instance v1, Lcom/android/server/backup/encryption/chunk/ChunkHash;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/backup/encryption/chunk/ChunkHash;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
