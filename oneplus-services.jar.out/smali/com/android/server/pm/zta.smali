.class public Lcom/android/server/pm/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;
.implements Lcom/android/server/pm/IOnePlusDexOptManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/zta$zta;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static NB:Z = false

.field private static final OB:Ljava/lang/String; = "/data/system/opdom"

.field private static final PB:I = 0x1

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.opdom.enable"

.field private static final QB:I = 0x2

.field public static final TAG:Ljava/lang/String; = "OPDOM"

.field private static mInstance:Lcom/android/server/pm/zta;


# instance fields
.field private IB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private JB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private KB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private LB:Z

.field private volatile MB:Ljava/lang/String;

.field final mHandler:Lcom/android/server/pm/zta$zta;

.field final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/zta;->DEBUG:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/zta;->NB:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/zta;->mInstance:Lcom/android/server/pm/zta;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/zta;->IB:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/zta;->JB:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/zta;->KB:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/zta;->LB:Z

    const-string v0, "unlocked"

    iput-object v0, p0, Lcom/android/server/pm/zta;->MB:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/pm/zta;->NB:Z

    const-string v1, "persist.sys.opdom.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/zta;->NB:Z

    sget-boolean v0, Lcom/android/server/pm/zta;->NB:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    :cond_0
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "OPDOM"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/zta;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/pm/zta;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/pm/zta$zta;

    iget-object v1, p0, Lcom/android/server/pm/zta;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/zta$zta;-><init>(Lcom/android/server/pm/zta;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/zta;->mHandler:Lcom/android/server/pm/zta$zta;

    iget-object v0, p0, Lcom/android/server/pm/zta;->IB:Ljava/util/ArrayList;

    const-string v1, "com.android.packageinstaller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/pm/zta;->IB:Ljava/util/ArrayList;

    const-string v1, "com.android.permissioncontroller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/pm/zta;->IB:Ljava/util/ArrayList;

    const-string v0, "SCREEN OFF"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private Dn()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/zta;->JB:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/opdom"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    array-length v2, v1

    if-ge v3, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/zta;->JB:Ljava/util/ArrayList;

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/zta;->LB:Z

    sget-boolean v1, Lcom/android/server/pm/zta;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "OPDOM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After restoreFromDisk mAllDexOptLists "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/zta;->JB:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private Rb(Ljava/lang/String;)Z
    .locals 9

    sget-boolean v0, Lcom/android/server/pm/zta;->NB:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/zta;->mPms:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/pm/zta;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performDexOpt for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPDOM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/zta;->mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "speed-profile"

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lcom/android/server/pm/zta;
    .locals 1

    sget-object v0, Lcom/android/server/pm/zta;->mInstance:Lcom/android/server/pm/zta;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/pm/zta;

    invoke-direct {v0}, Lcom/android/server/pm/zta;-><init>()V

    sput-object v0, Lcom/android/server/pm/zta;->mInstance:Lcom/android/server/pm/zta;

    :cond_0
    sget-object v0, Lcom/android/server/pm/zta;->mInstance:Lcom/android/server/pm/zta;

    return-object v0
.end method

.method static synthetic sis(Lcom/android/server/pm/zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/zta;->Dn()V

    return-void
.end method

.method private vdb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p0, ""

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setprop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |curValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPDOM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "failed to set system property"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private declared-synchronized yn()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "OPDOM"

    const-string v1, "Flush to storage"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/zta;->JB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/zta;->JB:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/zta;->JB:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "/data/system/opdom"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/pm/zta;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OPDOM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After flush mAllDexOptLists # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/zta;->JB:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "OPDOM"

    const-string v2, "opdom flush failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic you(Lcom/android/server/pm/zta;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/zta;->MB:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/pm/zta;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/zta;->Rb(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/pm/zta;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/zta;->MB:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/pm/zta;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/zta;->JB:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public dumpState(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    sget-boolean v0, Lcom/android/server/pm/zta;->NB:Z

    if-eqz v0, :cond_0

    const-string v0, "OPDOM Enabled"

    goto :goto_0

    :cond_0
    const-string v0, "OPDOM Disabled"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/zta;->JB:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllDexOptLists ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "OPDOM"

    const-string v0, "dumpState failed"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    sget-boolean p2, Lcom/android/server/pm/zta;->NB:Z

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/zta;->IB:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/zta;->KB:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/pm/zta;->KB:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/server/pm/zta;->KB:Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/zta;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Start to dexopt for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mTmpDexOptLists# "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/pm/zta;->KB:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPDOM"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/zta;->mHandler:Lcom/android/server/pm/zta$zta;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method public initInstance(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/pm/zta;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-boolean p1, p0, Lcom/android/server/pm/zta;->LB:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/zta;->mHandler:Lcom/android/server/pm/zta$zta;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnable cur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/pm/zta;->NB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPDOM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/pm/zta;->NB:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sput-boolean p1, Lcom/android/server/pm/zta;->NB:Z

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->you(Lcom/android/server/OnePlusUtil$zta$you;)V

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.opdom.enable"

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/zta;->vdb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/zta;->yn()V

    return-void
.end method
