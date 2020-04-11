.class public Lcom/android/server/backup/encryption/storage/BackupEncryptionDb;
.super Ljava/lang/Object;
.source "BackupEncryptionDb.java"


# instance fields
.field private final mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/encryption/storage/BackupEncryptionDb;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/server/backup/encryption/storage/BackupEncryptionDb;
    .locals 2

    new-instance v0, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-direct {v0, p0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->setWriteAheadLoggingEnabled(Z)V

    new-instance v1, Lcom/android/server/backup/encryption/storage/BackupEncryptionDb;

    invoke-direct {v1, v0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDb;-><init>(Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;)V

    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/encryption/storage/EncryptionDbException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/encryption/storage/BackupEncryptionDb;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-virtual {v0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->resetDatabase()V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/encryption/storage/BackupEncryptionDb;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-virtual {v0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->close()V

    return-void
.end method

.method public getTertiaryKeysTable()Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;
    .locals 2

    new-instance v0, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;

    iget-object v1, p0, Lcom/android/server/backup/encryption/storage/BackupEncryptionDb;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-direct {v0, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;-><init>(Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;)V

    return-object v0
.end method
