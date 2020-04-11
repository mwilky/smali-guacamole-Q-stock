.class public Lcom/android/server/backup/encryption/chunking/RawBackupWriter;
.super Ljava/lang/Object;
.source "RawBackupWriter.java"

# interfaces
.implements Lcom/android/server/backup/encryption/chunking/BackupWriter;


# instance fields
.field private bytesWritten:J

.field private final outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->outputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getBytesWritten()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->bytesWritten:J

    return-wide v0
.end method

.method public writeBytes([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->bytesWritten:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->bytesWritten:J

    return-void
.end method

.method public writeChunk(JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RawBackupWriter cannot write existing chunks"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
