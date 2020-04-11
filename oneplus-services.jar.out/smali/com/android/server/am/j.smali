.class public Lcom/android/server/am/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$you$you;
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/j$you;,
        Lcom/android/server/am/j$sis;,
        Lcom/android/server/am/j$zta;,
        Lcom/android/server/am/j$tsu;
    }
.end annotation


# static fields
.field private static final Av:I = 0xa

.field private static final Bv:I = 0xb

.field private static final CONFIG_NAME:Ljava/lang/String; = "RamBoost"

.field private static final Cv:I = 0xc

.field private static final Dv:I = 0xd

.field private static final Ev:I = 0xe

.field private static final Fv:I = 0x10

.field private static final Gv:Ljava/lang/String; = "ramboost"

.field private static final Hv:Ljava/lang/String; = "ramboost"

.field public static final IN_USING:Z

.field private static final Iv:Ljava/lang/String; = "hotcount"

.field private static final Jv:Ljava/lang/String; = "ioppreload"

.field private static final Kv:Ljava/lang/String; = "iop"

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.ramboost.debug"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.ramboost.enable"

.field public static final TAG:Ljava/lang/String; = "OnePlusSmartBoostManager"

.field private static final Wj:J = 0x5265c00L

.field private static final XML_ATTR_NAME:Ljava/lang/String; = "name"

.field private static final XML_ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_PKG:Ljava/lang/String; = "pkg"

.field private static Xu:Z = false

.field private static Yu:Z = false

.field private static Zu:Z = false

.field private static _u:Z = false

.field private static final av:Ljava/lang/String; = "persist.sys.ramboost.ioppreload"

.field private static final bv:Ljava/lang/String; = "/sys/module/smartboost_core/parameters/page_cache_reside_switch"

.field private static final cv:Ljava/lang/String; = "persist.sys.ramboost.olhotcount"

.field private static final dv:Ljava/lang/String; = "persist.sys.ramboost.oliop"

.field private static final ev:Ljava/lang/String; = "/sys/module/fsc/parameters/enable"

.field private static final fv:Ljava/lang/String; = "persist.sys.ramboost.olmemplus"

.field private static final gv:Ljava/lang/String; = "persist.vendor.memplus.enable"

.field private static final hv:I = 0x0

.field private static final jv:I = 0x1

.field private static final kv:I = 0x2

.field private static final lv:I = 0x3

.field private static mInstance:Lcom/android/server/am/j; = null

.field private static final mv:Ljava/lang/String; = "/system/etc/ramboost.xml"

.field private static final nv:J = 0x2710L

.field private static final ov:I = 0x384

.field private static final pv:Ljava/lang/String; = "0"

.field private static qv:Ljava/io/File; = null

.field private static rv:Ljava/lang/String; = null

.field private static sDebug:Z = false

.field private static sEnable:Z = false

.field private static final sv:I = 0x2

.field private static final tv:I = 0x3

.field private static final uv:I = 0x4

.field private static final vv:I = 0x5

.field private static final wv:I = 0x6

.field private static final xv:I = 0x7

.field private static final yv:I = 0x8

.field private static final zv:I = 0x9


# instance fields
.field private Ju:Landroid/os/HandlerThread;

.field private Ku:Lcom/android/server/am/j$sis;

.field private Lu:Lcom/android/server/am/j$tsu;

.field private Mu:Landroid/net/Uri;

.field private Nu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ou:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Pu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Qu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ru:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/j$zta;",
            ">;"
        }
    .end annotation
.end field

.field private Su:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Tu:Lcom/android/server/am/r;

.field private Uu:I

.field private Vu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Wu:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x80

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/j;->IN_USING:Z

    sget-boolean v1, Lcom/android/server/am/j;->IN_USING:Z

    sput-boolean v1, Lcom/android/server/am/j;->sEnable:Z

    sput-boolean v1, Lcom/android/server/am/j;->Xu:Z

    sput-boolean v1, Lcom/android/server/am/j;->Yu:Z

    sput-boolean v0, Lcom/android/server/am/j;->Zu:Z

    sput-boolean v2, Lcom/android/server/am/j;->sDebug:Z

    sput-boolean v1, Lcom/android/server/am/j;->_u:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/j;->mInstance:Lcom/android/server/am/j;

    const-string v0, "sys/module/memplus_core/parameters/memory_plus_wake_gcd"

    sput-object v0, Lcom/android/server/am/j;->rv:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/j;->Ju:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    iput-object v0, p0, Lcom/android/server/am/j;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iput-object v0, p0, Lcom/android/server/am/j;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/j;->Nu:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/j;->Ou:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/j;->Pu:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/j;->Qu:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/j;->Ru:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/j;->Su:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/am/j;->Tu:Lcom/android/server/am/r;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/j;->Uu:I

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ".oppo.nearme.gamecenter"

    const-string v2, ".oppo"

    const-string v3, ".nearme.gamecenter"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/j;->Vu:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/j;->Wu:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/am/j;->IN_USING:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ramboost"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/j;->Ju:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/am/j;->Ju:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/am/j$sis;

    iget-object v1, p0, Lcom/android/server/am/j;->Ju:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/j$sis;-><init>(Lcom/android/server/am/j;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    sget-boolean p0, Lcom/android/server/am/j;->sEnable:Z

    const-string v0, "persist.sys.ramboost.enable"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/am/j;->sEnable:Z

    sget-boolean p0, Lcom/android/server/am/j;->Xu:Z

    const-string v0, "persist.sys.ramboost.ioppreload"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/am/j;->Xu:Z

    sget-boolean p0, Lcom/android/server/am/j;->sDebug:Z

    const-string v0, "persist.sys.ramboost.debug"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/am/j;->sDebug:Z

    :cond_0
    return-void
.end method

.method private Lb(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/j;->Pu:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/j;->Pu:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean p0, Lcom/android/server/am/j;->sDebug:Z

    if-eqz p0, :cond_0

    const-string p0, "OnePlusSmartBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHotCountFromHighList # blacklist has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p0, "0"

    monitor-exit v0

    return-object p0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/am/j;->Ou:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/j;->Ou:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    sget-boolean v0, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHotCountFromHighList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|index="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ltz p0, :cond_4

    const/16 p1, 0x384

    if-lt p0, p1, :cond_3

    goto :goto_0

    :cond_3
    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "0"

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private Mb(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/j;->Ou:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/j;->Ou:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Nb(Ljava/lang/String;)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iop_record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/am/j;->hn()Landroid/net/LocalSocket;

    move-result-object p0

    const/4 v1, -0x1

    if-nez p0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v3, :cond_1

    const-string v3, "OnePlusSmartBoostManager"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    array-length p1, v0

    int-to-short p1, p1

    invoke-static {p1}, Lcom/android/server/am/j;->sis(S)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1
.end method

.method private Yl()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPageCachePkgMap size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/j;->Nu:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusSmartBoostManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHighUsagePkgList size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/j;->Ou:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/j;->sDebug:Z

    return v0
.end method

.method private cno(III)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/memplus_type"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/16 p2, 0x2710

    if-ge p1, p2, :cond_0

    const/4 p3, 0x2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/server/am/j;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    sget-boolean p0, Lcom/android/server/am/j;->sDebug:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeMemplus "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " uid:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ty:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusSmartBoostManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private echo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string p0, "IO close failed : path="

    const-string v0, ",ex->"

    const-string v1, "OnePlusSmartBoostManager"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : file not exits :"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    sget-boolean v3, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo path = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x1

    goto :goto_2

    :catch_0
    move-exception p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo failed : path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    :goto_2
    return v2

    :goto_3
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    throw p2
.end method

.method private filterSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/j;->Vu:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static final getInstance()Lcom/android/server/am/j;
    .locals 2

    sget-object v0, Lcom/android/server/am/j;->mInstance:Lcom/android/server/am/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/j;

    invoke-direct {v0}, Lcom/android/server/am/j;-><init>()V

    sput-object v0, Lcom/android/server/am/j;->mInstance:Lcom/android/server/am/j;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/am/j;->rv:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/j;->qv:Ljava/io/File;

    const-string v0, "OnePlusSmartBoostManager"

    const-string v1, "MemPlusGC file created"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/am/j;->mInstance:Lcom/android/server/am/j;

    return-object v0
.end method

.method private hn()Landroid/net/LocalSocket;
    .locals 2

    :try_start_0
    new-instance p0, Landroid/net/LocalSocketAddress;

    const-string v0, "ramboost"

    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {p0, v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    invoke-virtual {v0, p0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    const/16 p0, 0x2710

    invoke-virtual {v0, p0}, Landroid/net/LocalSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusSmartBoostManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private in()V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusSmartBoostManager"

    const-string v1, "disableSmartBoost!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/j;->Ru:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/j;->Ru:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/am/j;->Ru:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/j$zta;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/am/j;->lb(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/j;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/j;->Ru:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isIopPreloadEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/j;->Xu:Z

    return v0
.end method

.method private jn()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/j;->Su:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/j;->Su:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 p0, 0x0

    monitor-exit v1

    return-object p0

    :cond_0
    const-string v2, "iop_preload "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/j;->Su:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private kn()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/j;->mResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    const-string v1, "op_smartboost_enable"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private lb(I)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "/proc/"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/page_hot_count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private les(J)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusSmartBoostManager"

    const-string v1, "updateHighUsagePkg"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/j;->Ou:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/j;->Tu:Lcom/android/server/am/r;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/r;->qeg(Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/j;->Ou:Ljava/util/ArrayList;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private ln()I
    .locals 10

    sget-boolean v0, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusSmartBoostManager"

    const-string v1, "readXML"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/ramboost.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2

    sget-boolean p0, Lcom/android/server/am/j;->sDebug:Z

    if-eqz p0, :cond_1

    const-string p0, "OnePlusSmartBoostManager"

    const-string v0, "# readXml # file not exists"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "ramboost"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v4, "version"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    const-string v1, "pkg"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "OnePlusSmartBoostManager"

    const-string v4, "# readXml # error # pkg nl = null"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v6, "name"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "hotcount"

    invoke-interface {v5, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/am/j;->Nu:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v8, p0, Lcom/android/server/am/j;->Nu:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-boolean v7, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v7, :cond_4

    const-string v7, "OnePlusSmartBoostManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PageCachePkgMap add # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_5
    :goto_1
    const-string v1, "iop"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-nez v0, :cond_6

    const-string p0, "OnePlusSmartBoostManager"

    const-string v0, "# readXml # error # iop nl = null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_8

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v5, "name"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v5, :cond_7

    const-string v5, "OnePlusSmartBoostManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IopPkgList add: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v5, p0, Lcom/android/server/am/j;->Su:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v6, p0, Lcom/android/server/am/j;->Su:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_8
    :goto_3
    return v3

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# readXml # parse error ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusSmartBoostManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method private mb(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/j;->Ru:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/j;->Ru:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/android/server/am/j;->sDebug:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeHotCount: pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusSmartBoostManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private mn()I
    .locals 7

    sget-boolean v0, Lcom/android/server/am/j;->Xu:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/j;->jn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/am/j;->hn()Landroid/net/LocalSocket;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v4, :cond_3

    const-string v4, "OnePlusSmartBoostManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iop_preload=>\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    array-length v0, v2

    int-to-short v0, v0

    invoke-static {v0}, Lcom/android/server/am/j;->sis(S)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 11

    sget-boolean v0, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolvePerfConfigFromJSON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusSmartBoostManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_16

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PkgMap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/j;->Nu:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/j;->Nu:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    sget-boolean v4, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v4, :cond_2

    const-string v4, "OnePlusSmartBoostManager"

    const-string v5, "[OnlineConfig] clear PageCacheList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "hotcount"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_4

    iget-object v7, p0, Lcom/android/server/am/j;->Nu:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v8, p0, Lcom/android/server/am/j;->Nu:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v8, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v8, :cond_3

    const-string v8, "OnePlusSmartBoostManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig] add pkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v7

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :cond_5
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/am/j;->Su:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v4, p0, Lcom/android/server/am/j;->Su:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    sget-boolean v4, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v4, :cond_6

    const-string v4, "OnePlusSmartBoostManager"

    const-string v5, "[OnlineConfig] clear IopPkgList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v0

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_9

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v6, p0, Lcom/android/server/am/j;->Su:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v7, p0, Lcom/android/server/am/j;->Su:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v7, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v7, :cond_7

    const-string v7, "OnePlusSmartBoostManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] add iop pkg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    monitor-exit v6

    goto :goto_4

    :catchall_2
    move-exception p0

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p0
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catchall_3
    move-exception p0

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw p0

    :cond_9
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "blackhigh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/am/j;->Pu:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    iget-object v4, p0, Lcom/android/server/am/j;->Pu:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    sget-boolean v4, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v4, :cond_a

    const-string v4, "OnePlusSmartBoostManager"

    const-string v5, "[OnlineConfig] clear mBlackHighUsageList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v0

    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_d

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v6, p0, Lcom/android/server/am/j;->Pu:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :try_start_f
    iget-object v7, p0, Lcom/android/server/am/j;->Pu:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v7, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v7, :cond_b

    const-string v7, "OnePlusSmartBoostManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] add black high-usage pkg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    monitor-exit v6

    goto :goto_6

    :catchall_4
    move-exception p0

    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw p0
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :cond_c
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :catchall_5
    move-exception p0

    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    throw p0

    :cond_d
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "blackiop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/am/j;->Qu:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    :try_start_13
    iget-object v4, p0, Lcom/android/server/am/j;->Qu:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    sget-boolean v4, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v4, :cond_e

    const-string v4, "OnePlusSmartBoostManager"

    const-string v5, "[OnlineConfig] clear mBlackIopList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v0

    :goto_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_11

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v6, p0, Lcom/android/server/am/j;->Qu:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    :try_start_15
    iget-object v7, p0, Lcom/android/server/am/j;->Qu:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v7, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v7, :cond_f

    const-string v7, "OnePlusSmartBoostManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] add black iop pkg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    monitor-exit v6

    goto :goto_8

    :catchall_6
    move-exception p0

    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    throw p0
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    :cond_10
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :catchall_7
    move-exception p0

    :try_start_17
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :try_start_18
    throw p0

    :cond_11
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "switch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "persist.sys.ramboost.olhotcount"

    invoke-direct {p0, v4, v3}, Lcom/android/server/am/j;->vdb(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "OnePlusSmartBoostManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] smartboost switch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ioppreload"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "persist.sys.ramboost.oliop"

    invoke-direct {p0, v4, v3}, Lcom/android/server/am/j;->vdb(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "OnePlusSmartBoostManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] smartboost ioppreload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "memplus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "persist.sys.ramboost.olmemplus"

    invoke-direct {p0, v4, v3}, Lcom/android/server/am/j;->vdb(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "OnePlusSmartBoostManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] smartboost memplus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "memplus_gc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/j;->Zu:Z

    const-string v2, "OnePlusSmartBoostManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] smartboost memplus_gc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/am/j;->Zu:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_16
    invoke-direct {p0, v0}, Lcom/android/server/am/j;->xa(Z)V

    const-string p0, "OnePlusSmartBoostManager"

    const-string p1, "[OnlineConfig] smartboost updated complete"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    goto :goto_a

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] smartboost Exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] smartboost JSONException:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_9
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusSmartBoostManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    return-void
.end method

.method static synthetic rtg(Lcom/android/server/am/j;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/j;->ln()I

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/android/server/am/j;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/j;->mn()I

    move-result p0

    return p0
.end method

.method private static sis(S)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method static synthetic tsu(Lcom/android/server/am/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/j;->in()V

    return-void
.end method

.method private tsu(IILjava/lang/String;)Z
    .locals 2

    if-lez p2, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/am/j;->you(Ljava/lang/String;IZ)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/j;->cno(III)Z

    sget-boolean p0, Lcom/android/server/am/j;->sDebug:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeMemplusAndResumeLast: resume:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " uid:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rty="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusSmartBoostManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private updateOnlineConfig()V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusSmartBoostManager"

    const-string v1, "updateOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/j;->mContext:Landroid/content/Context;

    const-string v2, "RamBoost"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/j;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

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

    const-string v1, "OnePlusSmartBoostManager"

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

.method private xa(Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/j;->IN_USING:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/j;->kn()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/j;->_u:Z

    sget-boolean v0, Lcom/android/server/am/j;->_u:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/j;->in()V

    :cond_1
    const/4 v0, 0x1

    const-string v1, "persist.sys.ramboost.olhotcount"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/am/j;->_u:Z

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/am/j;->sEnable:Z

    const-string v1, "persist.sys.ramboost.oliop"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/server/am/j;->_u:Z

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/android/server/am/j;->Xu:Z

    const-string v1, "persist.sys.ramboost.olmemplus"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v2, Lcom/android/server/am/j;->_u:Z

    :cond_4
    sput-boolean v2, Lcom/android/server/am/j;->Yu:Z

    sget-boolean v0, Lcom/android/server/am/j;->sEnable:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.ramboost.enable"

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/j;->vdb(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/j;->Xu:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.ramboost.ioppreload"

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/j;->vdb(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/j;->Yu:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.vendor.memplus.enable"

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/j;->vdb(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    const-string v1, "0"

    const-string v2, "OnePlusSmartBoostManager"

    if-eqz p1, :cond_6

    sget-boolean p1, Lcom/android/server/am/j;->sEnable:Z

    if-eqz p1, :cond_5

    move-object p1, v0

    goto :goto_2

    :cond_5
    move-object p1, v1

    :goto_2
    const-string v3, "/sys/module/smartboost_core/parameters/page_cache_reside_switch"

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/j;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reside switch "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/j;->sEnable:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const-string p1, "echo PROP_RESIDE_SWITCH failed!"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    sget-boolean p1, Lcom/android/server/am/j;->_u:Z

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    move-object v0, v1

    :goto_4
    const-string p1, "/sys/module/fsc/parameters/enable"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/j;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FSC switch "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/j;->_u:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    const-string p1, "echo PROP_FSC_TOGGLE failed!"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    sget-boolean p1, Lcom/android/server/am/j;->Yu:Z

    if-eqz p1, :cond_9

    const-string p1, "sMemplus true and registerTouchWindowListener!"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->getInstance()Lcom/android/server/OnePlusUtil$you;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$you;->zta(Lcom/android/server/OnePlusUtil$you$you;)V

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    goto :goto_6

    :cond_9
    const-string p1, "sMemplus false and unregisterTouchWindowListener!"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->getInstance()Lcom/android/server/OnePlusUtil$you;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$you;->you(Lcom/android/server/OnePlusUtil$you$you;)V

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$zta;->you(Lcom/android/server/OnePlusUtil$zta$you;)V

    :goto_6
    return-void
.end method

.method private you(Ljava/lang/String;IZ)I
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p2, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    if-nez p3, :cond_1

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->getInstance()Lcom/android/server/OnePlusUtil$you;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/server/OnePlusUtil$you;->gck(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/j;->Ou:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/android/server/am/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/j;->updateOnlineConfig()V

    return-void
.end method

.method private you(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    if-eqz p2, :cond_1

    invoke-direct {p0, p3}, Lcom/android/server/am/j;->lb(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/j;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeHotCount FAILED!!! # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",path= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusSmartBoostManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeHotCount # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",path= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OnePlusSmartBoostManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeHotCount # no "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in PkgMap."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusSmartBoostManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    const-string v0, "0"

    if-eq v0, p2, :cond_4

    iget-object v0, p0, Lcom/android/server/am/j;->Ru:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/j;->Ru:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/j$zta;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/server/am/j$zta;-><init>(Lcom/android/server/am/j;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return v1
.end method

.method private zta(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/j;->Su:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/j;->Su:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iop_start "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-direct {p0}, Lcom/android/server/am/j;->hn()Landroid/net/LocalSocket;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    array-length v3, p3

    int-to-short v3, v3

    invoke-static {v3}, Lcom/android/server/am/j;->sis(S)[B

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    array-length v3, p3

    invoke-virtual {v2, p3, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-lez p1, :cond_1

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/am/j;->Wu:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    const/16 p3, 0x9

    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "pkgName"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    const-wide/16 p2, 0x2710

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return v5

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic zta(Lcom/android/server/am/j;ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/j;->zta(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/am/j;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/j;->Nb(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/am/j;Ljava/lang/String;IZ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/j;->you(Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/am/j;)Lcom/android/server/am/j$sis;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/am/j;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/j;->les(J)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/j;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/j;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/j;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/j;->xa(Z)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/j;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/j;->mb(I)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/am/j;III)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/j;->cno(III)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/am/j;IILjava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/j;->tsu(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/am/j;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/j;->you(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frontPackageChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uid:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusSmartBoostManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "uid"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p2, 0x3

    const-string p3, "type"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "lastPid"

    invoke-virtual {p2, p3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "lastUid"

    invoke-virtual {p2, p3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "lastPkgName"

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public ic()V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/j;->Zu:Z

    const/4 v1, 0x1

    const-string v2, "MemPlusGC online config: "

    const-string v3, "OnePlusSmartBoostManager"

    if-nez v0, :cond_0

    iput v1, p0, Lcom/android/server/am/j;->Uu:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/j;->Zu:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/j;->Zu:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify MemPlusGC node: Notify for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/j;->Uu:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/am/j;->Uu:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/j;->Uu:I

    :try_start_0
    sget-object p0, Lcom/android/server/am/j;->qv:Ljava/io/File;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/am/j;->qv:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/io/FileWriter;

    sget-object v0, Lcom/android/server/am/j;->qv:Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(I)V

    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V

    goto :goto_0

    :cond_1
    const-string p0, "Notify MemPlusGC node: File Not exist!"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify MemPlusGC node: IOException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initEnv(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/j;->IN_USING:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/server/am/j;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/j;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/server/am/j$tsu;

    iget-object v1, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/am/j$tsu;-><init>(Lcom/android/server/am/j;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/j;->Lu:Lcom/android/server/am/j$tsu;

    const-string p1, "op_smartboost_enable"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/j;->Mu:Landroid/net/Uri;

    invoke-static {}, Lcom/android/server/am/r;->getInstance()Lcom/android/server/am/r;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/j;->Tu:Lcom/android/server/am/r;

    iget-object p1, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/android/server/am/j;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/am/j;->Mu:Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/am/j;->Lu:Lcom/android/server/am/j$tsu;

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method

.method public initOnlineConfig(Landroid/content/Context;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/j;->IN_USING:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/j;->sDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusSmartBoostManager"

    const-string v1, "initOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/j;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/android/server/am/j;->mContext:Landroid/content/Context;

    :cond_2
    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/am/j;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    new-instance v2, Lcom/android/server/am/j$you;

    invoke-direct {v2, p0}, Lcom/android/server/am/j$you;-><init>(Lcom/android/server/am/j;)V

    const-string v3, "RamBoost"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/j;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, Lcom/android/server/am/j;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/j;->Xu:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/am/j;->IN_USING:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-gez p1, :cond_1

    iput-object p2, p0, Lcom/android/server/am/j;->Wu:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/j;->Wu:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/j;->Qu:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/j;->Qu:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean p0, Lcom/android/server/am/j;->sDebug:Z

    if-eqz p0, :cond_3

    const-string p0, "OnePlusSmartBoostManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifyIOPrefetchStart # iop black pkg: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pkgName"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "codePath"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method public notifyMemPlus(Ljava/lang/String;II)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/j;->Yu:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pid"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "uid"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public notifyRamBoost(Ljava/lang/String;IZ)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/j;->sEnable:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/am/j;->IN_USING:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/server/am/j;->Nu:Ljava/util/HashMap;

    monitor-enter p3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/j;->Nu:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/am/j;->filterSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/j;->Lb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    const/4 p3, 0x3

    invoke-virtual {p0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "pkgName"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hotCount"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pid"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    move v0, v1

    :cond_2
    sget-boolean p0, Lcom/android/server/am/j;->sDebug:Z

    if-nez p0, :cond_3

    if-eqz v0, :cond_7

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "writeHotCount "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pid="

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    iget-object p1, p0, Lcom/android/server/am/j;->Ru:Ljava/util/HashMap;

    monitor-enter p1

    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/j;->Ru:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-boolean p0, Lcom/android/server/am/j;->sDebug:Z

    if-nez p0, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "resumeHotCount: pid="

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusSmartBoostManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_8
    :goto_1
    return-void
.end method

.method public you(IILjava/lang/String;II)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    const/16 p3, 0x10

    invoke-virtual {p0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "uid"

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "type"

    const/4 p4, 0x3

    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pid"

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public zta(IILjava/lang/String;II)V
    .locals 0

    sget-boolean p4, Lcom/android/server/am/j;->sDebug:Z

    if-eqz p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "removeTouchWindow: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " uid:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " pid:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "OnePlusSmartBoostManager"

    invoke-static {p5, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/j;->Ku:Lcom/android/server/am/j$sis;

    const/16 p4, 0xe

    invoke-virtual {p0, p4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string p5, "pkgName"

    invoke-virtual {p4, p5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "pid"

    invoke-virtual {p4, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "uid"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
