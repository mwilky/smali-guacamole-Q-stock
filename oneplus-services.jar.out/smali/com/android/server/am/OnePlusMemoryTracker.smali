.class public Lcom/android/server/am/OnePlusMemoryTracker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;
.implements Lcom/android/server/am/IOpMemoryTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusMemoryTracker$sis;,
        Lcom/android/server/am/OnePlusMemoryTracker$tsu;,
        Lcom/android/server/am/OnePlusMemoryTracker$zta;,
        Lcom/android/server/am/OnePlusMemoryTracker$rtg;,
        Lcom/android/server/am/OnePlusMemoryTracker$you;
    }
.end annotation


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "com.opmt.action.test"

.field private static DEBUG:Z = false

.field private static DROPBOX:Z = false

.field public static final DROPBOX_FILE:Ljava/lang/String; = "/data/system/memory_tracker.txt"

.field private static DROPBOX_MAX_SIZE:I = 0x0

.field private static final DROPBOX_TAG:Ljava/lang/String; = "memory_tracker"

.field private static final FLAG_LOG_EVENTS:I = 0x4

.field private static final FLAG_LOG_KERNEL:I = 0x8

.field private static final FLAG_LOG_MAIN:I = 0x2

.field private static final FLAG_LOG_SYSTEM:I = 0x1

.field public static IN_USING:Z = false

.field private static LOGCAT_LINE_NUM:I = 0x0

.field private static MDM:Z = false

.field private static final MDM_APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final MDM_EVENT:Ljava/lang/String; = "memory"

.field private static final MDM_PROCESSNAME:Ljava/lang/String; = "pn"

.field private static final MDM_TOTAL_MEMORY:Ljava/lang/String; = "tm"

.field static final ONLINECONFIG_PROJECT_NAME:Ljava/lang/String; = "MemoryTracker"

.field private static final PROP_DROPBOX:Ljava/lang/String; = "persist.sys.opmt.dropbox"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.opmt.enable"

.field private static final PROP_MDM:Ljava/lang/String; = "persist.sys.opmt.mdm"

.field static final RESERVED_BYTES_PER_LOGCAT_LINE:I = 0x64

.field public static final TAG:Ljava/lang/String; = "OPMT"

.field private static mInstance:Lcom/android/server/am/OnePlusMemoryTracker;


# instance fields
.field private REPORT_INTERVAL:J

.field private SWITCH_BACKGROUND_TIMEOUT:J

.field private extraData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mCommandFlag:I

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConfigUpdater:Lcom/android/server/am/OnePlusMemoryTracker$sis;

.field private mContext:Landroid/content/Context;

.field private mDeviceTotalMemory:Ljava/lang/String;

.field private mHandler:Lcom/android/server/am/OnePlusMemoryTracker$tsu;

.field private mLastReportTime:J

.field private mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private mRecentFrontUids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/OnePlusMemoryTracker$rtg;",
            ">;"
        }
    .end annotation
.end field

.field private mTestReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->IN_USING:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->MDM:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->DROPBOX:Z

    const/high16 v0, 0x40000

    sput v0, Lcom/android/server/am/OnePlusMemoryTracker;->DROPBOX_MAX_SIZE:I

    const/16 v0, 0x800

    sput v0, Lcom/android/server/am/OnePlusMemoryTracker;->LOGCAT_LINE_NUM:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->extraData:Ljava/util/HashMap;

    const/16 p1, 0xc

    iput p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCommandFlag:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mDeviceTotalMemory:Ljava/lang/String;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->SWITCH_BACKGROUND_TIMEOUT:J

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->REPORT_INTERVAL:J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mRecentFrontUids:Ljava/util/HashMap;

    new-instance p1, Lcom/android/server/am/i;

    invoke-direct {p1, p0}, Lcom/android/server/am/i;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mTestReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->IN_USING:Z

    const-string v0, "persist.sys.opmt.enable"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->IN_USING:Z

    sget-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->MDM:Z

    const-string v0, "persist.sys.opmt.mdm"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->MDM:Z

    sget-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->DROPBOX:Z

    const-string v0, "persist.sys.opmt.dropbox"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->DROPBOX:Z

    new-instance p1, Lcom/android/server/am/OnePlusMemoryTracker$tsu;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/OnePlusMemoryTracker$tsu;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mHandler:Lcom/android/server/am/OnePlusMemoryTracker$tsu;

    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->extraData:Ljava/util/HashMap;

    const-string v0, "appid"

    const-string v1, "NYNCG4I0TI"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->IN_USING:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusMemoryTracker;)Lcom/android/internal/os/ProcessCpuTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusMemoryTracker;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->SWITCH_BACKGROUND_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/server/am/OnePlusMemoryTracker;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->SWITCH_BACKGROUND_TIMEOUT:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/server/am/OnePlusMemoryTracker;Lcom/android/internal/os/ProcessCpuTracker;)Lcom/android/internal/os/ProcessCpuTracker;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusMemoryTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->registerOnlineConfig()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusMemoryTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->grabOnlineConfig()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/OnePlusMemoryTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->initMemoryInfo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/OnePlusMemoryTracker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->updateEnable(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/OnePlusMemoryTracker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->updateMDMEnable(Z)V

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->MDM:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/OnePlusMemoryTracker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->updateDropboxEnable(Z)V

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->DROPBOX:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/OnePlusMemoryTracker;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusMemoryTracker;->updateTimeout(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusMemoryTracker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/am/OnePlusMemoryTracker;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusMemoryTracker;->updateInterval(J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/am/OnePlusMemoryTracker;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->REPORT_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/server/am/OnePlusMemoryTracker;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->REPORT_INTERVAL:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/android/server/am/OnePlusMemoryTracker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->updateLogcatLineNumber(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/am/OnePlusMemoryTracker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->updateDropboxSize(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/am/OnePlusMemoryTracker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->updateCommandFlag(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/am/OnePlusMemoryTracker;)I
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCommandFlag:I

    return p0
.end method

.method static synthetic access$2502(Lcom/android/server/am/OnePlusMemoryTracker;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCommandFlag:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusMemoryTracker;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->getDeviceTotalMemory()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusMemoryTracker;Z)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->getMemoryInfo(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusMemoryTracker;->LOGCAT_LINE_NUM:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusMemoryTracker;->DROPBOX_MAX_SIZE:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusMemoryTracker;I)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->getCommand(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG:Z

    return p0
.end method

.method static synthetic access$900(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCommand(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/system/bin/timeout"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-k"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "15s"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "10s"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin/logcat"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-v"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "threadtime"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCommandFlag:I

    and-int/lit8 v1, v1, 0x4

    const-string v2, "-b"

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCommandFlag:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "kernel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCommandFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCommandFlag:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "main"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string p0, "-t"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getDeviceTotalMemory()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mDeviceTotalMemory:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mDeviceTotalMemory:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mDeviceTotalMemory:Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/OnePlusMemoryTracker;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusMemoryTracker;->mInstance:Lcom/android/server/am/OnePlusMemoryTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusMemoryTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/OnePlusMemoryTracker;->mInstance:Lcom/android/server/am/OnePlusMemoryTracker;

    :cond_0
    sget-object p0, Lcom/android/server/am/OnePlusMemoryTracker;->mInstance:Lcom/android/server/am/OnePlusMemoryTracker;

    return-object p0
.end method

.method private getLruApps()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusMemoryTracker$zta;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_1

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    new-instance v4, Lcom/android/server/am/OnePlusMemoryTracker$zta;

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getSetAdjWithServices()I

    move-result v3

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/android/server/am/OnePlusMemoryTracker$zta;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const-string p0, "OPMT"

    const-string v1, "error...initialization not ok."

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method private getMemoryInfo(Z)Ljava/lang/String;
    .locals 32

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusMemoryTracker;->getLruApps()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    :goto_0
    if-ltz v5, :cond_2

    if-nez v8, :cond_0

    new-instance v8, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v8}, Landroid/os/Debug$MemoryInfo;-><init>()V

    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/OnePlusMemoryTracker$zta;

    iget v6, v15, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mPid:I

    invoke-static {v6, v8}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    invoke-virtual {v8}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v26, v1

    invoke-virtual {v8}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v1

    move-object/from16 v27, v2

    int-to-long v1, v1

    move-object/from16 v28, v8

    new-instance v8, Lcom/android/server/am/OnePlusMemoryTracker$you;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v5

    iget-object v5, v15, Lcom/android/server/am/OnePlusMemoryTracker$zta;->Yi:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (pid "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mPid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    iget-object v0, v15, Lcom/android/server/am/OnePlusMemoryTracker$zta;->Yi:Ljava/lang/String;

    iget v5, v15, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mPid:I

    move-object/from16 v18, v8

    move-object/from16 v20, v0

    move-wide/from16 v21, v6

    move-wide/from16 v23, v1

    move/from16 v25, v5

    invoke-direct/range {v18 .. v25}, Lcom/android/server/am/OnePlusMemoryTracker$you;-><init>(Ljava/lang/String;Ljava/lang/String;JJI)V

    add-long/2addr v9, v6

    add-long/2addr v11, v6

    iget v0, v15, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mCurAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_1

    add-long/2addr v13, v6

    :cond_1
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v15, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mPid:I

    invoke-virtual {v4, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v29, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v8, v28

    goto :goto_0

    :cond_2
    move-object/from16 v27, v2

    iget-object v1, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v1, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v1, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    :cond_3
    iget-object v1, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    :try_start_0
    iget-object v5, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_6

    iget-object v7, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7, v6}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v7

    move-object v15, v3

    iget-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v16, 0x0

    cmp-long v2, v2, v16

    if-lez v2, :cond_5

    iget v2, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_5

    if-nez v8, :cond_4

    new-instance v8, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v8}, Landroid/os/Debug$MemoryInfo;-><init>()V

    :cond_4
    iget v2, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v2, v8}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    invoke-virtual {v8}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v8}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    new-instance v0, Lcom/android/server/am/OnePlusMemoryTracker$you;

    move-object/from16 v28, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v5

    iget-object v5, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    iget-object v4, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v5

    move-wide/from16 v30, v13

    int-to-long v13, v5

    iget v5, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v19, v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v2

    move-wide/from16 v24, v13

    move/from16 v26, v5

    invoke-direct/range {v19 .. v26}, Lcom/android/server/am/OnePlusMemoryTracker$you;-><init>(Ljava/lang/String;Ljava/lang/String;JJI)V

    add-long/2addr v9, v2

    add-long/2addr v11, v2

    move-object v2, v15

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v28, v4

    move/from16 v29, v5

    move-wide/from16 v30, v13

    move-object v2, v15

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object v3, v2

    move-object/from16 v4, v28

    move/from16 v5, v29

    move-wide/from16 v13, v30

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_6
    move-object v2, v3

    move-wide/from16 v30, v13

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Total PSS by process:\n"

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_7

    const-string v0, "OPMT"

    const-string v3, "Total PSS by process:\n"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {v2}, Lcom/android/server/am/OnePlusMemoryTracker;->sortMemItems(Ljava/util/List;)V

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusMemoryTracker$you;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusMemoryTracker$you;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_8

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusMemoryTracker$you;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OPMT"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Total RAM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Free RAM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v3

    add-long v13, v30, v3

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v3

    add-long/2addr v13, v3

    invoke-static {v13, v14}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cached pss + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cached kernel + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " free)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Used RAM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v9, v30

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " used pss + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " kernel)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v3

    sub-long/2addr v9, v11

    sub-long/2addr v3, v9

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-string v5, "Lost RAM: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ZRAM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " physical used for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in swap ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " total swap)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_a

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OPMT"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private grabOnlineConfig()V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPMT"

    const-string v1, "[OnlineConfig] grabOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mContext:Landroid/content/Context;

    const-string v2, "MemoryTracker"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mConfigUpdater:Lcom/android/server/am/OnePlusMemoryTracker$sis;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusMemoryTracker$sis;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private initMemoryInfo()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->getDeviceTotalMemory()Ljava/lang/String;

    return-void
.end method

.method private registerOnlineConfig()V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPMT"

    const-string v1, "[OnlineConfig] registerOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mHandler:Lcom/android/server/am/OnePlusMemoryTracker$tsu;

    iget-object v3, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mConfigUpdater:Lcom/android/server/am/OnePlusMemoryTracker$sis;

    const-string v4, "MemoryTracker"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method private reportAppEvent(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V
    .locals 8

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG:Z

    const-string v1, "OPMT"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportAppEvent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->MDM:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->reportToMDM(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V

    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->DROPBOX:Z

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLastReportTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/server/am/OnePlusMemoryTracker;->REPORT_INTERVAL:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    sget-boolean p0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignore this dropbox event cause too freq! ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/OnePlusMemoryTracker$zta;->Yi:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mUid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mPid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iput-wide v2, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLastReportTime:J

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->writeLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V

    :cond_4
    return-void
.end method

.method private reportToMDM(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportToMDM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPMT"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p1, Lcom/android/server/am/OnePlusMemoryTracker$zta;->Yi:Ljava/lang/String;

    const-string v1, "pn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->getDeviceTotalMemory()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tm"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->extraData:Ljava/util/HashMap;

    const-string v2, "memory"

    invoke-virtual {p1, v1, v2, v0, p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private static sortMemItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusMemoryTracker$you;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/am/h;

    invoke-direct {v0}, Lcom/android/server/am/h;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static stringifyKBSize(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x400

    mul-long/2addr p0, v0

    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifySize(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static stringifySize(JI)Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    const/16 v3, 0x400

    const-wide/16 v4, 0x400

    if-eq p2, v3, :cond_2

    const/high16 v3, 0x100000

    if-eq p2, v3, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p2, v3, :cond_0

    new-array p2, v2, [Ljava/lang/Object;

    div-long/2addr p0, v4

    div-long/2addr p0, v4

    div-long/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "%,1dG"

    :goto_0
    invoke-static {v0, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid size order"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-array p2, v2, [Ljava/lang/Object;

    div-long/2addr p0, v4

    div-long/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "%,5dM"

    goto :goto_0

    :cond_2
    new-array p2, v2, [Ljava/lang/Object;

    div-long/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "%,9dK"

    goto :goto_0

    :cond_3
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "%,13d"

    goto :goto_0
.end method

.method private updateCommandFlag(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCommandFlag:I

    return-void
.end method

.method private updateDropboxEnable(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->DROPBOX:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.sys.opmt.dropbox"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateDropboxSize(I)V
    .locals 0

    sput p1, Lcom/android/server/am/OnePlusMemoryTracker;->DROPBOX_MAX_SIZE:I

    return-void
.end method

.method private updateEnable(Z)V
    .locals 1

    sput-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->IN_USING:Z

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->IN_USING:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->you(Lcom/android/server/OnePlusUtil$zta$you;)V

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.sys.opmt.enable"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->REPORT_INTERVAL:J

    return-void
.end method

.method private updateLogcatLineNumber(I)V
    .locals 0

    sput p1, Lcom/android/server/am/OnePlusMemoryTracker;->LOGCAT_LINE_NUM:I

    return-void
.end method

.method private updateMDMEnable(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->MDM:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.sys.opmt.mdm"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateTimeout(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->SWITCH_BACKGROUND_TIMEOUT:J

    return-void
.end method

.method private writeLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V
    .locals 2

    new-instance v0, Lcom/android/server/am/g;

    const-string v1, "MemoryTracker dump: memory_tracker"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/am/g;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;Ljava/lang/String;Lcom/android/server/am/OnePlusMemoryTracker$zta;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public checkIfNeedReport(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", processName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasShownUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", setAdj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", setProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPMT"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    if-ltz v0, :cond_2

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mRecentFrontUids:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mRecentFrontUids:Ljava/util/HashMap;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusMemoryTracker$rtg;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    sget-boolean p0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not in recent front uids: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPMT"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->fc()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/server/am/OnePlusMemoryTracker$zta;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/server/am/OnePlusMemoryTracker$zta;-><init>(Ljava/lang/String;III)V

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusMemoryTracker;->reportAppEvent(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_0
    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mRecentFrontUids:Ljava/util/HashMap;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mRecentFrontUids:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/OnePlusMemoryTracker$rtg;

    if-nez p3, :cond_1

    new-instance p3, Lcom/android/server/am/OnePlusMemoryTracker$rtg;

    invoke-direct {p3, p0, p2}, Lcom/android/server/am/OnePlusMemoryTracker$rtg;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->hc()V

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mRecentFrontUids:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public initAms(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/am/OnePlusMemoryTracker$sis;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/OnePlusMemoryTracker$sis;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;Lcom/android/server/am/g;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mConfigUpdater:Lcom/android/server/am/OnePlusMemoryTracker$sis;

    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mHandler:Lcom/android/server/am/OnePlusMemoryTracker$tsu;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mHandler:Lcom/android/server/am/OnePlusMemoryTracker$tsu;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.opmt.action.test"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
