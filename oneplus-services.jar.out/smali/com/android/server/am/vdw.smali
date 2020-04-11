.class public Lcom/android/server/am/vdw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/vdw$you;,
        Lcom/android/server/am/vdw$sis;,
        Lcom/android/server/am/vdw$zta;,
        Lcom/android/server/am/vdw$tsu;,
        Lcom/android/server/am/vdw$rtg;
    }
.end annotation


# static fields
.field private static final Aq:Ljava/lang/String; = "/system/bpm/black_brd.xml"

.field private static final Bq:Ljava/lang/String; = "/system/bpm/black_alarm.xml"

.field private static final CONFIG_NAME:Ljava/lang/String; = "ProcessFreezer"

.field private static final Cq:Ljava/lang/String; = "brd.xml"

.field public static final DEBUG:Z

.field private static final Dq:Ljava/lang/String; = "/data/data_bpm/brd.xml"

.field private static final Eq:Ljava/lang/String; = "black_gps.xml"

.field private static final Fq:Ljava/lang/String; = "/data/data_bpm/black_gps.xml"

.field private static final Gq:Ljava/lang/String; = "black_brd.xml"

.field private static final Hq:Ljava/lang/String; = "/data/data_bpm/black_brd.xml"

.field public static final IN_USING:Z = true

.field private static final Iq:Ljava/lang/String; = "black_alarm.xml"

.field private static final Jq:Ljava/lang/String; = "/data/data_bpm/black_alarm.xml"

.field private static final Kq:I = 0x1

.field private static final No:Ljava/lang/String; = "/data/data_bpm/"

.field public static final TAG:Ljava/lang/String; = "BFP"

.field private static mActivityManager:Lcom/android/server/am/ActivityManagerService; = null

.field private static mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal; = null

.field private static mInstance:Lcom/android/server/am/vdw; = null

.field private static final wq:Z

.field private static xq:Lcom/android/server/wm/ActivityTaskManagerService; = null

.field private static final yq:Ljava/lang/String; = "/system/bpm/brd.xml"

.field private static final zq:Ljava/lang/String; = "/system/bpm/black_gps.xml"


# instance fields
.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mContext:Landroid/content/Context;

.field private uq:Landroid/os/Handler;

.field private vq:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/vdw;->DEBUG:Z

    const-string v0, "persist.sys.bfp.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/vdw;->wq:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/vdw;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    sput-object v0, Lcom/android/server/am/vdw;->xq:Lcom/android/server/wm/ActivityTaskManagerService;

    sput-object v0, Lcom/android/server/am/vdw;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    sput-object v0, Lcom/android/server/am/vdw;->mInstance:Lcom/android/server/am/vdw;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/vdw;->uq:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/am/vdw;->vq:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BFPolicyThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/vdw;->vq:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/am/vdw;->vq:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/am/vdw$rtg;

    iget-object v1, p0, Lcom/android/server/am/vdw;->vq:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/vdw$rtg;-><init>(Lcom/android/server/am/vdw;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/vdw;->uq:Landroid/os/Handler;

    return-void
.end method

.method private Ob()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/vdw;->Rm()V

    invoke-static {}, Lcom/android/server/am/vdw$zta;->Ob()V

    const-string v0, "/data/data_bpm/black_gps.xml"

    invoke-static {v0}, Lcom/android/server/am/vdw;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/dma;->you(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/server/am/vdw;->initOnlineConfig()V

    return-void
.end method

.method private Rm()V
    .locals 3

    const-string v0, "BFP"

    const-string v1, "[FO]prepareBPMConfigFiles()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data_bpm/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string v1, "/system/bpm/brd.xml"

    const-string v2, "/data/data_bpm/brd.xml"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/vdw;->gwm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/system/bpm/black_gps.xml"

    const-string v2, "/data/data_bpm/black_gps.xml"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/vdw;->gwm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/system/bpm/black_brd.xml"

    const-string v2, "/data/data_bpm/black_brd.xml"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/vdw;->gwm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/system/bpm/black_alarm.xml"

    const-string v2, "/data/data_bpm/black_alarm.xml"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/vdw;->gwm(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FO]initBPMConfigFiles(): failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string v1, "chmod 0770 /data/data_bpm/"

    invoke-virtual {p0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string v1, "chmod 0770 /data/data_bpm/brd.xml"

    invoke-virtual {p0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string v1, "chmod 0770 /data/data_bpm/black_gps.xml"

    invoke-virtual {p0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string v1, "chmod 0770 /data/data_bpm/black_brd.xml"

    invoke-virtual {p0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string v1, "chmod 0770 /data/data_bpm/black_alarm.xml"

    invoke-virtual {p0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FO]prepareBPMConfigFiles(): failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/vdw;->wq:Z

    return v0
.end method

.method static synthetic access$300()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/am/vdw;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/am/vdw;
    .locals 2

    const-class v0, Lcom/android/server/am/vdw;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/vdw;->mInstance:Lcom/android/server/am/vdw;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/am/vdw;

    invoke-direct {v1}, Lcom/android/server/am/vdw;-><init>()V

    sput-object v1, Lcom/android/server/am/vdw;->mInstance:Lcom/android/server/am/vdw;

    :cond_0
    sget-object v1, Lcom/android/server/am/vdw;->mInstance:Lcom/android/server/am/vdw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private gwm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyFile():fromFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BFP"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    return-void
.end method

.method private initOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/vdw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/vdw;->uq:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/vdw$tsu;

    invoke-direct {v3, p0}, Lcom/android/server/am/vdw$tsu;-><init>(Lcom/android/server/am/vdw;)V

    const-string v4, "ProcessFreezer"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/vdw;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object p0, p0, Lcom/android/server/am/vdw;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method public static m(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "[FO]loadStateLocked():path="

    const-string v4, "BFP"

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " file don\'t exist!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-interface {v1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "p"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "att"

    invoke-interface {v1, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-ne v9, v6, :cond_1

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    move v5, v6

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v7, v8

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v7, v8

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v1

    :goto_1
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  --> failed parsing "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_3

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    sget-boolean v1, Lcom/android/server/am/vdw;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " date size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v5, :cond_5

    return-object v2

    :cond_5
    sget-boolean v1, Lcom/android/server/am/vdw;->DEBUG:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FO]loadStateLocked(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " file failed parsing!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v0

    :goto_3
    if-eqz v7, :cond_7

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_4
    throw p0
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 9

    const-string p0, "name"

    const-string v0, "BFP"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "brd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "value"

    if-eqz v4, :cond_2

    :try_start_1
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v1

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v6}, Lcom/android/server/am/vdw$zta;->tsu(Ljava/util/List;)V

    const-string v4, "[OnlineConfig] update brd success"

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "/data/data_bpm/brd.xml"

    invoke-static {v6, v4}, Lcom/android/server/am/vdw;->zta(Ljava/util/List;Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "black_brd"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v1

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v6}, Lcom/android/server/am/vdw$zta;->rtg(Ljava/util/List;)V

    const-string v4, "[OnlineConfig] update blackbrd success"

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "/data/data_bpm/black_brd.xml"

    invoke-static {v6, v4}, Lcom/android/server/am/vdw;->zta(Ljava/util/List;Ljava/lang/String;)Z

    :cond_4
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "black_alarm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v1

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_5

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v6}, Lcom/android/server/am/vdw$zta;->ssp(Ljava/util/List;)V

    const-string v4, "[OnlineConfig] update blackalarm success"

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "/data/data_bpm/black_alarm.xml"

    invoke-static {v6, v4}, Lcom/android/server/am/vdw;->zta(Ljava/util/List;Ljava/lang/String;)Z

    :cond_6
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "black_gps"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    invoke-static {v4}, Lcom/android/server/dma;->you(Ljava/util/List;)V

    const-string v3, "[OnlineConfig] update blackgpslist success"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "/data/data_bpm/black_gps.xml"

    invoke-static {v4, v3}, Lcom/android/server/am/vdw;->zta(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static you(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v2, 0x2710

    const-string v3, "BFP"

    const/4 v4, 0x1

    if-ge v1, v2, :cond_2

    sget-boolean v0, Lcom/android/server/am/vdw;->wq:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " app.uid < Process.FIRST_APPLICATION_UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4

    :cond_2
    invoke-static {p0}, Lcom/android/server/am/vdw;->zgw(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v4

    :cond_3
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Lcom/android/server/am/irq;->c(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v0, Lcom/android/server/am/vdw;->wq:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkProcessInWhiteListLocked ->#return true, in doze white list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v4

    :cond_5
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Lcom/android/server/am/irq;->d(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-boolean v0, Lcom/android/server/am/vdw;->wq:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkProcessInWhiteListLocked ->#return true, in freeze white list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v4

    :cond_7
    return v0
.end method

.method private static zgw(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/vdw;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    sget-object v0, Lcom/android/server/am/vdw;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic zta(Lcom/android/server/am/vdw;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/vdw;->Ob()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/vdw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/vdw;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private static zta(Ljava/util/List;Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "p"

    const-string v1, "BFP"

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-boolean v8, Lcom/android/server/am/vdw;->DEBUG:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saved pkg is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v7, :cond_0

    invoke-interface {v6, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "att"

    invoke-interface {v6, v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_2
    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v4, v5

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v5, v4

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_3
    return v3

    :goto_4
    if-eqz v5, :cond_4

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_5
    throw p0
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/vdw;->vq:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public zta(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/vdw;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/android/server/am/vdw;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    sput-object p3, Lcom/android/server/am/vdw;->xq:Lcom/android/server/wm/ActivityTaskManagerService;

    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    sput-object p1, Lcom/android/server/am/vdw;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {}, Lcom/android/server/dma;->getInstance()Lcom/android/server/dma;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/dma;->zta(Lcom/android/server/am/ActivityManagerService;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/am/vdw;->uq:Landroid/os/Handler;

    const-wide/16 p2, 0x1388

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
