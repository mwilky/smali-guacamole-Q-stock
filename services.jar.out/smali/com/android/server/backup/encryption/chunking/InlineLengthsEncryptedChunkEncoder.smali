.class public Lcom/android/server/backup/encryption/chunking/InlineLengthsEncryptedChunkEncoder;
.super Ljava/lang/Object;
.source "InlineLengthsEncryptedChunkEncoder.java"

# interfaces
.implements Lcom/android/server/backup/encryption/chunking/EncryptedChunkEncoder;


# static fields
.field public static final BYTES_LENGTH:I = 0x4


# instance fields
.field private final mLengthlessEncryptedChunkEncoder:Lcom/android/server/backup/encryption/chunking/LengthlessEncryptedChunkEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/backup/encryption/chunking/LengthlessEncryptedChunkEncoder;

    invoke-direct {v0}, Lcom/android/server/backup/encryption/chunking/LengthlessEncryptedChunkEncoder;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/encryption/chunking/InlineLengthsEncryptedChunkEncoder;->mLengthlessEncryptedChunkEncoder:Lcom/android/server/backup/encryption/chunking/LengthlessEncryptedChunkEncoder;

    return-void
.end method

.method static toByteArray(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    int-to-byte v1, p0

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public getChunkOrderingType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getEncodedLengthOfChunk(Lcom/android/server/backup/encryption/chunking/EncryptedChunk;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/InlineLengthsEncryptedChunkEncoder;->mLengthlessEncryptedChunkEncoder:Lcom/android/server/backup/encryption/chunking/LengthlessEncryptedChunkEncoder;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/encryption/chunking/LengthlessEncryptedChunkEncoder;->getEncodedLengthOfChunk(Lcom/android/server/backup/encryption/chunking/EncryptedChunk;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public writeChunkToWriter(Lcom/android/server/backup/encryption/chunking/BackupWriter;Lcom/android/server/backup/encryption/chunking/EncryptedChunk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/InlineLengthsEncryptedChunkEncoder;->mLengthlessEncryptedChunkEncoder:Lcom/android/server/backup/encryption/chunking/LengthlessEncryptedChunkEncoder;

    invoke-virtual {v0, p2}, Lcom/android/server/backup/encryption/chunking/LengthlessEncryptedChunkEncoder;->getEncodedLengthOfChunk(Lcom/android/server/backup/encryption/chunking/EncryptedChunk;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/backup/encryption/chunking/InlineLengthsEncryptedChunkEncoder;->toByteArray(I)[B

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/server/backup/encryption/chunking/BackupWriter;->writeBytes([B)V

    iget-object v1, p0, Lcom/android/server/backup/encryption/chunking/InlineLengthsEncryptedChunkEncoder;->mLengthlessEncryptedChunkEncoder:Lcom/android/server/backup/encryption/chunking/LengthlessEncryptedChunkEncoder;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/backup/encryption/chunking/LengthlessEncryptedChunkEncoder;->writeChunkToWriter(Lcom/android/server/backup/encryption/chunking/BackupWriter;Lcom/android/server/backup/encryption/chunking/EncryptedChunk;)V

    return-void
.end method
