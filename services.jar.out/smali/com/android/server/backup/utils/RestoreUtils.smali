.class public Lcom/android/server/backup/utils/RestoreUtils;
.super Ljava/lang/Object;
.source "RestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    }
.end annotation


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

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/restore/RestoreDeleteObserver;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;",
            "Lcom/android/server/backup/FileMetadata;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/utils/BytesReadListener;",
            "I)Z"
        }
    .end annotation

    move-object/from16 v1, p5

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing from backup: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BackupManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>(Lcom/android/server/backup/utils/RestoreUtils$1;)V

    move-object v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v7, v0

    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_14

    move-object v8, v0

    move-object/from16 v9, p6

    :try_start_1
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13

    move v10, v0

    :try_start_2
    invoke-virtual {v7, v10}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13

    move-object v15, v0

    :try_start_3
    iget-object v12, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    const-wide/16 v13, 0x0

    move-object/from16 v17, v5

    :try_start_4
    iget-wide v4, v1, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    move-object v11, v15

    move-object/from16 v18, v15

    move-wide v15, v4

    :try_start_5
    invoke-virtual/range {v11 .. v16}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    const v5, 0x8000

    :try_start_6
    new-array v11, v5, [B

    iget-wide v12, v1, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :goto_0
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    const/4 v15, 0x0

    if-lez v14, :cond_2

    :try_start_7
    array-length v14, v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v16, v6

    int-to-long v5, v14

    cmp-long v5, v5, v12

    if-gez v5, :cond_0

    :try_start_8
    array-length v5, v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    int-to-long v5, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    move-object/from16 v15, p7

    move/from16 v14, p8

    move-object v11, v0

    move-object v5, v1

    move/from16 v20, v2

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    goto/16 :goto_c

    :cond_0
    move-wide v5, v12

    :goto_1
    long-to-int v14, v5

    move/from16 v20, v2

    move-object/from16 v2, p0

    :try_start_9
    invoke-virtual {v2, v11, v15, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-ltz v14, :cond_1

    int-to-long v0, v14

    move-object/from16 v15, p7

    :try_start_a
    invoke-interface {v15, v0, v1}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_2

    :cond_1
    move-object/from16 v15, p7

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v4, v11, v1, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    int-to-long v0, v14

    sub-long/2addr v12, v0

    move-object/from16 v1, p5

    move-object/from16 v6, v16

    move/from16 v2, v20

    const v5, 0x8000

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move/from16 v14, p8

    move-object v11, v0

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    move-object/from16 v15, p7

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move/from16 v14, p8

    move-object v11, v0

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    goto/16 :goto_c

    :catchall_3
    move-exception v0

    move-object/from16 v15, p7

    move/from16 v20, v2

    move-object/from16 v2, p0

    move-object/from16 v13, p3

    move-object/from16 v5, p5

    move/from16 v14, p8

    move-object v11, v0

    move-object v2, v6

    move-object/from16 v1, v18

    move-object/from16 v6, p4

    goto/16 :goto_c

    :cond_2
    move-object/from16 v15, p7

    move/from16 v20, v2

    move-object/from16 v16, v6

    move-object/from16 v2, p0

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    :try_start_b
    invoke-static {v0, v4}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move/from16 v14, p8

    move-object v4, v0

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    goto/16 :goto_d

    :cond_3
    :goto_3
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PackageInstaller$Session;->abandon()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-object/from16 v1, v18

    const/4 v0, 0x0

    :try_start_d
    invoke-static {v0, v1}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    nop

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v4, :cond_5

    move-object/from16 v5, p5

    :try_start_e
    iget-object v0, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    move-object/from16 v6, p4

    :try_start_f
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    if-eq v0, v3, :cond_4

    const/4 v0, 0x0

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move/from16 v14, p8

    goto/16 :goto_9

    :cond_4
    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move/from16 v14, p8

    move/from16 v0, v20

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v6, p4

    goto/16 :goto_a

    :cond_5
    move-object/from16 v6, p4

    move-object/from16 v5, p5

    const/4 v11, 0x0

    :try_start_10
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    iget-object v0, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    if-nez v0, :cond_6

    :try_start_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Restore stream claimed to include apk for "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " but apk was really "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    const/4 v0, 0x0

    const/4 v11, 0x1

    move-object/from16 v13, p3

    move/from16 v14, p8

    move/from16 v18, v4

    move-object/from16 v2, v16

    move-object/from16 v16, v1

    move v1, v0

    goto/16 :goto_7

    :cond_6
    :try_start_12
    iget-object v0, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    const/high16 v13, 0x8000000

    move/from16 v14, p8

    move-object/from16 v2, v16

    :try_start_13
    invoke-virtual {v2, v0, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v13, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    const v16, 0x8000

    and-int v13, v13, v16

    if-nez v13, :cond_7

    :try_start_14
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    move-object/from16 v16, v1

    :try_start_15
    const-string v1, "Restore stream contains apk of package "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but it disallows backup/restore"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    const/4 v1, 0x0

    move-object/from16 v13, p3

    move/from16 v18, v4

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v13, p3

    move/from16 v18, v4

    goto/16 :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v13, p3

    move/from16 v18, v4

    goto/16 :goto_6

    :cond_7
    move-object/from16 v16, v1

    :try_start_16
    iget-object v1, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    move-object/from16 v13, p3

    :try_start_17
    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    const-class v18, Landroid/content/pm/PackageManagerInternal;

    invoke-static/range {v18 .. v18}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/PackageManagerInternal;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_12

    move-object/from16 v19, v18

    move/from16 v18, v4

    move-object/from16 v4, v19

    :try_start_18
    invoke-static {v1, v0, v4}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v19
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_18} :catch_4
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_12

    move-object/from16 v21, v1

    const-string v1, "Installed app "

    if-eqz v19, :cond_9

    move-object/from16 v19, v4

    :try_start_19
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has restricted uid and no agent"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    move/from16 v1, v20

    goto :goto_4

    :cond_9
    move-object/from16 v19, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " signatures do not match restore manifest"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_19} :catch_4
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_12

    const/4 v1, 0x0

    const/4 v4, 0x1

    move v11, v4

    :goto_4
    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object/from16 v13, p3

    :goto_5
    move/from16 v18, v4

    goto :goto_6

    :catch_7
    move-exception v0

    move-object/from16 v13, p3

    goto/16 :goto_10

    :catch_8
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v16, v1

    move/from16 v18, v4

    goto :goto_6

    :catch_9
    move-exception v0

    move-object/from16 v13, p3

    move/from16 v14, p8

    move/from16 v18, v4

    move-object/from16 v2, v16

    move-object/from16 v16, v1

    :goto_6
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Install of package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " succeeded but now not found"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_c

    const/4 v1, 0x0

    :goto_7
    if-eqz v11, :cond_a

    :try_start_1b
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->reset()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_b

    move-object/from16 v4, p2

    move/from16 v19, v1

    const/4 v1, 0x0

    :try_start_1c
    invoke-virtual {v2, v12, v4, v1}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->waitForCompletion()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_a

    goto :goto_8

    :catch_a
    move-exception v0

    move/from16 v20, v19

    goto/16 :goto_10

    :catch_b
    move-exception v0

    move-object/from16 v4, p2

    move/from16 v19, v1

    move/from16 v20, v19

    goto/16 :goto_10

    :cond_a
    move-object/from16 v4, p2

    move/from16 v19, v1

    :goto_8
    move/from16 v0, v19

    :goto_9
    goto/16 :goto_11

    :catch_c
    move-exception v0

    move-object/from16 v4, p2

    goto/16 :goto_10

    :catch_d
    move-exception v0

    move-object/from16 v4, p2

    :goto_a
    move-object/from16 v13, p3

    goto :goto_b

    :catch_e
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    :goto_b
    move/from16 v14, p8

    goto/16 :goto_10

    :catch_f
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move/from16 v14, p8

    move-object/from16 v2, v16

    goto/16 :goto_e

    :catchall_5
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move/from16 v14, p8

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    move-object v4, v0

    goto/16 :goto_d

    :catchall_6
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v15, p7

    move/from16 v14, p8

    move-object v5, v1

    move/from16 v20, v2

    move-object v2, v6

    move-object/from16 v1, v18

    move-object/from16 v6, p4

    move-object v11, v0

    :goto_c
    :try_start_1d
    throw v11
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    :catchall_7
    move-exception v0

    move-object v12, v0

    if-eqz v4, :cond_b

    :try_start_1e
    invoke-static {v11, v4}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_b
    throw v12
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :catchall_8
    move-exception v0

    move-object v4, v0

    goto :goto_d

    :catchall_9
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v15, p7

    move/from16 v14, p8

    move-object v5, v1

    move/from16 v20, v2

    move-object v2, v6

    move-object/from16 v1, v18

    move-object/from16 v6, p4

    move-object v4, v0

    goto :goto_d

    :catchall_a
    move-exception v0

    move-object/from16 v13, p3

    move/from16 v14, p8

    move-object v5, v1

    move/from16 v20, v2

    move-object v2, v6

    move-object v1, v15

    move-object/from16 v6, p4

    move-object/from16 v15, p7

    move-object v4, v0

    goto :goto_d

    :catchall_b
    move-exception v0

    move-object/from16 v13, p3

    move/from16 v14, p8

    move/from16 v20, v2

    move-object/from16 v17, v5

    move-object v2, v6

    move-object/from16 v6, p4

    move-object v5, v1

    move-object v1, v15

    move-object/from16 v15, p7

    move-object v4, v0

    :goto_d
    :try_start_1f
    throw v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    :catchall_c
    move-exception v0

    move-object v11, v0

    if-eqz v1, :cond_c

    :try_start_20
    invoke-static {v4, v1}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_c
    throw v11
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_10
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_12

    :catch_10
    move-exception v0

    goto :goto_e

    :catch_11
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v15, p7

    move/from16 v14, p8

    move/from16 v20, v2

    move-object/from16 v17, v5

    move-object v2, v6

    move-object/from16 v6, p4

    move-object v5, v1

    :goto_e
    :try_start_21
    invoke-virtual {v7, v10}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    nop

    throw v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_12

    :catch_12
    move-exception v0

    goto :goto_10

    :catch_13
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    goto :goto_f

    :catch_14
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p6

    :goto_f
    move-object/from16 v15, p7

    move/from16 v14, p8

    move-object v5, v1

    move/from16 v20, v2

    :goto_10
    const-string v1, "Unable to transcribe restored apk for install"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v0, v1

    :goto_11
    return v0
.end method
