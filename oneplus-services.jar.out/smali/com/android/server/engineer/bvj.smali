.class public Lcom/android/server/engineer/bvj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/engineer/bvj$zta;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "RomUpdateHelper"

.field private static final rB:Ljava/lang/String; = "oem.permission.OEM_COMPONENT_SAFE"

.field public static final vC:Ljava/lang/String; = "oem.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

.field public static final wC:Ljava/lang/String; = "ROM_UPDATE_CONFIG_LIST"

.field private static final xC:Landroid/net/Uri;

.field private static final yC:Ljava/lang/String; = "version"

.field private static final zC:Ljava/lang/String; = "xml"


# instance fields
.field public mContext:Landroid/content/Context;

.field private pC:Lcom/android/server/engineer/bvj$zta;

.field private qC:Lcom/android/server/engineer/bvj$zta;

.field private rC:Z

.field private sC:Ljava/lang/String;

.field private tC:Ljava/lang/String;

.field private uC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/engineer/bvj;->DEBUG:Z

    const-string v0, "content://com.nearme.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/engineer/bvj;->xC:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/engineer/bvj;->rC:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/engineer/bvj;->sC:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/engineer/bvj;->tC:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/engineer/bvj;->uC:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/engineer/bvj;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/engineer/bvj;->sC:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/engineer/bvj;->tC:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/engineer/bvj;->uC:Ljava/lang/String;

    return-void
.end method

.method private I(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/bvj;->d(Z)Lcom/android/server/engineer/bvj$zta;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/bvj;->d(Z)Lcom/android/server/engineer/bvj$zta;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/engineer/bvj$zta;->I(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private J(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/bvj;->d(Z)Lcom/android/server/engineer/bvj$zta;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/engineer/bvj$zta;->J(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateToLowerVersion true, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RomUpdateHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private Ln()Ljava/lang/String;
    .locals 11

    const-string v0, "RomUpdateHelper"

    const-string v1, "xml"

    const-string v2, "version"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/engineer/bvj;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    return-object v9

    :cond_0
    iget-object v3, p0, Lcom/android/server/engineer/bvj;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/engineer/bvj;->xC:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filtername=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/engineer/bvj;->sC:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "White List updated, version = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v9, p0

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v10, v9

    move-object v9, p0

    move-object p0, v10

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object p0, v9

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object p0, v9

    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We can not get white list data from provider, because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    return-object p0

    :goto_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private Mn()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/engineer/bvj;->rC:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/engineer/bvj;->rC:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/engineer/bvj;->DEBUG:Z

    return v0
.end method

.method private obl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, p2

    goto :goto_3

    :catch_1
    move-exception p0

    move-object p1, p0

    move-object p0, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0

    :goto_3
    if-eqz p0, :cond_1

    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    throw p1
.end method

.method private readFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object p0

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v0, p0

    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    return-object p0

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    throw p0
.end method

.method static synthetic zta(Lcom/android/server/engineer/bvj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/bvj;->sC:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public Jc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/bvj;->sC:Ljava/lang/String;

    return-object p0
.end method

.method Kc()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/engineer/bvj;->Ln()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/engineer/bvj;->J(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/engineer/bvj;->uC:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/engineer/bvj;->obl(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/engineer/bvj;->d(Z)Lcom/android/server/engineer/bvj$zta;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/engineer/bvj;->d(Z)Lcom/android/server/engineer/bvj$zta;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/engineer/bvj$zta;->I(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/engineer/bvj;->Mn()V

    invoke-virtual {p0, v1}, Lcom/android/server/engineer/bvj;->d(Z)Lcom/android/server/engineer/bvj$zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/engineer/bvj$zta;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public Lc()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oem.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/engineer/bvj;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/engineer/oif;

    invoke-direct {v2, p0}, Lcom/android/server/engineer/oif;-><init>(Lcom/android/server/engineer/bvj;)V

    const-string p0, "oem.permission.OEM_COMPONENT_SAFE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method protected d(Z)Lcom/android/server/engineer/bvj$zta;
    .locals 0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/engineer/bvj;->rC:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/engineer/bvj;->pC:Lcom/android/server/engineer/bvj$zta;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/engineer/bvj;->qC:Lcom/android/server/engineer/bvj$zta;

    :goto_0
    return-object p0

    :cond_1
    iget-boolean p1, p0, Lcom/android/server/engineer/bvj;->rC:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/engineer/bvj;->qC:Lcom/android/server/engineer/bvj$zta;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/engineer/bvj;->pC:Lcom/android/server/engineer/bvj$zta;

    :goto_1
    return-object p0
.end method

.method public dump()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "which2use = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/engineer/bvj;->rC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/bvj;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/engineer/bvj;->pC:Lcom/android/server/engineer/bvj$zta;

    invoke-virtual {v0}, Lcom/android/server/engineer/bvj$zta;->dump()V

    iget-object p0, p0, Lcom/android/server/engineer/bvj;->qC:Lcom/android/server/engineer/bvj$zta;

    invoke-virtual {p0}, Lcom/android/server/engineer/bvj$zta;->dump()V

    return-void
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/bvj;->uC:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/engineer/bvj;->tC:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/engineer/bvj;->tC:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/engineer/bvj;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/engineer/bvj;->I(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    sget-boolean p0, Lcom/android/server/engineer/bvj;->DEBUG:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "RomUpdateHelper"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    sget-boolean p0, Lcom/android/server/engineer/bvj;->DEBUG:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "RomUpdateHelper"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected rtg(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/bvj;->d(Z)Lcom/android/server/engineer/bvj$zta;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/engineer/bvj;->d(Z)Lcom/android/server/engineer/bvj$zta;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/engineer/bvj$zta;->zta(Lcom/android/server/engineer/bvj$zta;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/bvj;->d(Z)Lcom/android/server/engineer/bvj$zta;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/engineer/bvj$zta;->insert(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/engineer/bvj;->Mn()V

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/bvj;->d(Z)Lcom/android/server/engineer/bvj$zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/engineer/bvj$zta;->clear()V

    return v2

    :cond_0
    const-string p1, "Failed to insert!"

    invoke-virtual {p0, p1}, Lcom/android/server/engineer/bvj;->log(Ljava/lang/String;)V

    return v0
.end method

.method protected zta(Lcom/android/server/engineer/bvj$zta;Lcom/android/server/engineer/bvj$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/bvj;->pC:Lcom/android/server/engineer/bvj$zta;

    iput-object p2, p0, Lcom/android/server/engineer/bvj;->qC:Lcom/android/server/engineer/bvj$zta;

    return-void
.end method
