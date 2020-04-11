.class public Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;
.super Ljava/lang/Object;
.source "TertiaryKeysTable.java"


# instance fields
.field private final mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    return-void
.end method


# virtual methods
.method public addKey(Lcom/android/server/backup/encryption/storage/TertiaryKey;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/encryption/storage/EncryptionDbException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-virtual {v0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->getWritableDatabaseSafe()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    nop

    invoke-virtual {p1}, Lcom/android/server/backup/encryption/storage/TertiaryKey;->getSecondaryKeyAlias()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "secondary_key_alias"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/backup/encryption/storage/TertiaryKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "package_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    nop

    invoke-virtual {p1}, Lcom/android/server/backup/encryption/storage/TertiaryKey;->getWrappedKeyBytes()[B

    move-result-object v2

    const-string/jumbo v3, "wrapped_key_bytes"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v2, "tertiary_keys"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getAllKeys(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/encryption/storage/TertiaryKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/encryption/storage/EncryptionDbException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-virtual {v0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->getReadableDatabaseSafe()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v9, "wrapped_key_bytes"

    const-string/jumbo v10, "package_name"

    const-string v1, "_id"

    const-string/jumbo v2, "secondary_key_alias"

    filled-new-array {v1, v2, v10, v9}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v11, "secondary_key_alias = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v12, v1

    nop

    const-string/jumbo v2, "tertiary_keys"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v11

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    nop

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    nop

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    new-instance v6, Lcom/android/server/backup/encryption/storage/TertiaryKey;

    invoke-direct {v6, p1, v2, v4}, Lcom/android/server/backup/encryption/storage/TertiaryKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v12, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v4

    if-eqz v1, :cond_1

    invoke-static {v2, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v4
.end method

.method public getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/server/backup/encryption/storage/TertiaryKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/encryption/storage/EncryptionDbException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->mHelper:Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;

    invoke-virtual {v0}, Lcom/android/server/backup/encryption/storage/BackupEncryptionDbHelper;->getReadableDatabaseSafe()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v9, "wrapped_key_bytes"

    const-string v1, "_id"

    const-string/jumbo v2, "secondary_key_alias"

    const-string/jumbo v3, "package_name"

    filled-new-array {v1, v2, v3, v9}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "secondary_key_alias = ? AND package_name = ?"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v1, 0x1

    aput-object p2, v5, v1

    nop

    const-string/jumbo v2, "tertiary_keys"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v10

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    nop

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-object v6

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    nop

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    new-instance v7, Lcom/android/server/backup/encryption/storage/TertiaryKey;

    invoke-direct {v7, p1, p2, v6}, Lcom/android/server/backup/encryption/storage/TertiaryKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-static {v7}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-object v7

    :catchall_0
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v4

    if-eqz v1, :cond_1

    invoke-static {v2, v1}, Lcom/android/server/backup/encryption/storage/TertiaryKeysTable;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v4
.end method
