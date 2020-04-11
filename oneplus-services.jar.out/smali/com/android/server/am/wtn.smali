.class public Lcom/android/server/am/wtn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IBatteryOutlier;


# static fields
.field private static DEBUG_ONEPLUS:Z = false

.field private static final TAG:Ljava/lang/String; = "BatteryOutlier"


# instance fields
.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/wtn;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/wtn;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object p0, p0, Lcom/android/server/am/wtn;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/am/BatteryStatsService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "BatteryOutlier"

    const-string p1, "mBatteryStatsService is still null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getPidMap(Ljava/lang/StringBuilder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/wtn;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/wtn;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/wtn;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_0

    const-string v2, "  PID mappings:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "    PID #"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/wtn;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/wtn;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    const-string p0, "BatteryOutlier"

    const-string p1, "mAms is still null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/wtn;->mAms:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/wtn;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    return-void
.end method
