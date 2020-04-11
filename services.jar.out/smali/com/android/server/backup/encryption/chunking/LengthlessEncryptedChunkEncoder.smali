.class public Lcom/android/server/backup/encryption/chunking/LengthlessEncryptedChunkEncoder;
.super Ljava/lang/Object;
.source "LengthlessEncryptedChunkEncoder.java"

# interfaces
.implements Lcom/android/server/backup/encryption/chunking/EncryptedChunkEncoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChunkOrderingType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getEncodedLengthOfChunk(Lcom/android/server/backup/encryption/chunking/EncryptedChunk;)I
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->nonce()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1}, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->encryptedBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeChunkToWriter(Lcom/android/server/backup/encryption/chunking/BackupWriter;Lcom/android/server/backup/encryption/chunking/EncryptedChunk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->nonce()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/server/backup/encryption/chunking/BackupWriter;->writeBytes([B)V

    invoke-virtual {p2}, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->encryptedBytes()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/server/backup/encryption/chunking/BackupWriter;->writeBytes([B)V

    return-void
.end method
