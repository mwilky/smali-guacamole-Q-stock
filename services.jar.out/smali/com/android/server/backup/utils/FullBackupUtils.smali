.class public Lcom/android/server/backup/utils/FullBackupUtils;
.super Ljava/lang/Object;
.source "FullBackupUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const v2, 0x8000

    new-array v2, v2, [B

    :cond_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v4, v3

    if-lez v3, :cond_3

    :goto_0
    if-lez v4, :cond_0

    array-length v3, v2

    if-le v4, v3, :cond_1

    array-length v3, v2

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_2

    invoke-virtual {p1, v2, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v4, v6

    goto :goto_0

    :cond_2
    const-string v5, "BackupManagerService"

    const-string v7, "Unexpectedly reached end of file while reading data"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    :cond_3
    return-void
.end method
