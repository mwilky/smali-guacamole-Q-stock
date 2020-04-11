.class public Lcom/android/server/backup/encryption/chunking/DiffScriptBackupWriter;
.super Ljava/lang/Object;
.source "DiffScriptBackupWriter.java"

# interfaces
.implements Lcom/android/server/backup/encryption/chunking/BackupWriter;


# static fields
.field private static final ENCRYPTION_DIFF_SCRIPT_MAX_CHUNK_SIZE_BYTES:I = 0x100000


# instance fields
.field private mBytesWritten:J

.field private final mWriter:Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;


# direct methods
.method constructor <init>(Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/encryption/chunking/DiffScriptBackupWriter;->mWriter:Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;

    return-void
.end method

.method public static newInstance(Ljava/io/OutputStream;)Lcom/android/server/backup/encryption/chunking/DiffScriptBackupWriter;
    .locals 2

    new-instance v0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;

    const/high16 v1, 0x100000

    invoke-direct {v0, p0, v1}, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;-><init>(Ljava/io/OutputStream;I)V

    new-instance v1, Lcom/android/server/backup/encryption/chunking/DiffScriptBackupWriter;

    invoke-direct {v1, v0}, Lcom/android/server/backup/encryption/chunking/DiffScriptBackupWriter;-><init>(Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;)V

    return-object v1
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/DiffScriptBackupWriter;->mWriter:Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;

    invoke-virtual {v0}, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->flush()V

    return-void
.end method

.method public getBytesWritten()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/DiffScriptBackupWriter;->mBytesWritten:J

    return-wide v0
.end method

.method public writeBytes([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    iget-object v3, p0, Lcom/android/server/backup/encryption/chunking/DiffScriptBackupWriter;->mWriter:Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->writeByte(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/DiffScriptBackupWriter;->mBytesWritten:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/backup/encryption/chunking/DiffScriptBackupWriter;->mBytesWritten:J

    return-void
.end method

.method public writeChunk(JI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/DiffScriptBackupWriter;->mWriter:Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->writeChunk(JI)V

    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/DiffScriptBackupWriter;->mBytesWritten:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/backup/encryption/chunking/DiffScriptBackupWriter;->mBytesWritten:J

    return-void
.end method
