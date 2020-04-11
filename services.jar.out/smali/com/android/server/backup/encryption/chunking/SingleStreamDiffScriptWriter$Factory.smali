.class public Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter$Factory;
.super Ljava/lang/Object;
.source "SingleStreamDiffScriptWriter.java"

# interfaces
.implements Lcom/android/server/backup/encryption/chunking/DiffScriptWriter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final mMaxNewByteChunkSize:I

.field private final mOutputStreamWrapper:Lcom/android/server/backup/encryption/chunking/OutputStreamWrapper;


# direct methods
.method public constructor <init>(ILcom/android/server/backup/encryption/chunking/OutputStreamWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter$Factory;->mMaxNewByteChunkSize:I

    iput-object p2, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter$Factory;->mOutputStreamWrapper:Lcom/android/server/backup/encryption/chunking/OutputStreamWrapper;

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/io/OutputStream;)Lcom/android/server/backup/encryption/chunking/DiffScriptWriter;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter$Factory;->create(Ljava/io/OutputStream;)Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/io/OutputStream;)Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter$Factory;->mOutputStreamWrapper:Lcom/android/server/backup/encryption/chunking/OutputStreamWrapper;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/encryption/chunking/OutputStreamWrapper;->wrap(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;

    iget v1, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter$Factory;->mMaxNewByteChunkSize:I

    invoke-direct {v0, p1, v1}, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method
