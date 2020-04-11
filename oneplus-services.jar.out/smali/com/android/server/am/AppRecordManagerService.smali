.class public Lcom/android/server/am/AppRecordManagerService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IOpAppRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppRecordManagerService$UidObserver;
    }
.end annotation


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "com.apprecord.action.test"

.field public static final DETAIL:I = 0x1

.field public static final IN_USING:Z

.field public static final MEDIUM:I = 0x2

.field public static final ONEPLUS:I = 0x3

.field private static final OP_FEATURE_APPDIED_STATISTICE:Z

.field public static final TAG:Ljava/lang/String; = "AppRecordManager"

.field public static final UIDOBSERVER:I

.field private static sIntance:Lcom/android/server/am/AppRecordManagerService;

.field private static sLogLevel:I


# instance fields
.field private final mAppRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/tsu;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mIsInit:Z

.field private final mIsolatedUids:Landroid/util/SparseIntArray;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private final mSensorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidObserver:Lcom/android/server/am/AppRecordManagerService$UidObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x1c

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/AppRecordManagerService;->IN_USING:Z

    new-array v0, v0, [I

    const/16 v1, 0xf8

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/AppRecordManagerService;->OP_FEATURE_APPDIED_STATISTICE:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/android/server/am/AppRecordManagerService;->sLogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mSensorMap:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/android/server/am/AppRecordManagerService$UidObserver;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRecordManagerService$UidObserver;-><init>(Lcom/android/server/am/AppRecordManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mUidObserver:Lcom/android/server/am/AppRecordManagerService$UidObserver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsInit:Z

    new-instance v0, Lcom/android/server/am/cno;

    invoke-direct {v0, p0}, Lcom/android/server/am/cno;-><init>(Lcom/android/server/am/AppRecordManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/kth;

    invoke-direct {v0, p0}, Lcom/android/server/am/kth;-><init>(Lcom/android/server/am/AppRecordManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/AppRecordManagerService;I)Lcom/android/server/am/tsu;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppRecordManagerService;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/am/AppRecordManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->dumpApp(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/AppRecordManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->replacePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/AppRecordManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/AppRecordManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/AppRecordManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->dump(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/AppRecordManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/AppRecordManagerService;->dumpSensor()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/AppRecordManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/AppRecordManagerService;->dumpIsolated()V

    return-void
.end method

.method static synthetic access$802(I)I
    .locals 0

    sput p0, Lcom/android/server/am/AppRecordManagerService;->sLogLevel:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/am/AppRecordManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->dumpApp(Ljava/lang/String;)V

    return-void
.end method

.method private addPackage(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->createAppRecordFromPMS(Ljava/lang/String;)Lcom/android/server/am/tsu;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addPackage error, couldn\'t create apprecord for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/tsu;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    iget p1, v0, Lcom/android/server/am/tsu;->mUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dump(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "AppRecordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dump # mAppRecordMap size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/tsu;

    if-nez p1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/tsu;->qa()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "AppRecordManager"

    invoke-virtual {v1}, Lcom/android/server/am/tsu;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    :goto_1
    const-string p0, "AppRecordManager"

    const-string p1, " dump # mAppRecordMap size <= 0 , return"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dumpApp(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/tsu;

    iget v2, v1, Lcom/android/server/am/tsu;->mUid:I

    if-ne p1, v2, :cond_1

    const-string v2, "AppRecordManager"

    invoke-virtual {v1}, Lcom/android/server/am/tsu;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    :goto_1
    const-string p0, "AppRecordManager"

    const-string p1, " dump # mAppRecordMap size <= 0 , return"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dumpApp(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/tsu;

    iget-object v2, v1, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AppRecordManager"

    invoke-virtual {v1}, Lcom/android/server/am/tsu;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    :goto_1
    const-string p0, "AppRecordManager"

    const-string p1, " dump # mAppRecordMap size <= 0 , return"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dumpIsolated()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_0
    const-string v1, "AppRecordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isolatedUid size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "AppRecordManager"

    const-string v2, "isolatedUid : appUid"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const-string v3, "AppRecordManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dumpSensor()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mSensorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sensor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService;->mSensorMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppRecordManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAppRecord(I)Lcom/android/server/am/tsu;
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/tsu;

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getOwnerUid(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/tsu;

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/server/am/tsu;

    invoke-direct {v1, p1, v2}, Lcom/android/server/am/tsu;-><init>(ILcom/android/server/am/tsu;)V

    goto :goto_1

    :cond_0
    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppRecordManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not record when find AppRecord("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/am/tsu;

    invoke-direct {v2, p1, v1}, Lcom/android/server/am/tsu;-><init>(ILjava/lang/String;)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    const-string v2, "AppRecordManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not record owner when find AppRecord("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/am/tsu;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebView("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lcom/android/server/am/tsu;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance()Lcom/android/server/am/AppRecordManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/am/AppRecordManagerService;->sIntance:Lcom/android/server/am/AppRecordManagerService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/AppRecordManagerService;

    invoke-direct {v0}, Lcom/android/server/am/AppRecordManagerService;-><init>()V

    sput-object v0, Lcom/android/server/am/AppRecordManagerService;->sIntance:Lcom/android/server/am/AppRecordManagerService;

    :cond_0
    sget-object v0, Lcom/android/server/am/AppRecordManagerService;->sIntance:Lcom/android/server/am/AppRecordManagerService;

    return-object v0
.end method

.method private injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v0, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "injectRegisterUidObserver e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppRecordManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static myLog(ILjava/lang/String;)V
    .locals 1

    sget v0, Lcom/android/server/am/AppRecordManagerService;->sLogLevel:I

    if-ge p0, v0, :cond_0

    return-void

    :cond_0
    const-string p0, "AppRecordManager"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerGeneralReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "AppRecordManager"

    const-string v0, "Fatal Exception # registerGeneralReceiver # mContext=null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "com.apprecord.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPackageReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removePackage(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removePackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getUidFromPackageName(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private replacePackage(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "replacePackage: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addIsolatedUid(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIsolatedUid [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "(appUid)]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p2}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/tsu;->addIsolatedUid(I)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public createAppRecordFromPMS(Ljava/lang/String;)Lcom/android/server/am/tsu;
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x81

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lcom/android/server/am/tsu;

    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/am/tsu;-><init>(ILjava/lang/String;Z)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHoldingFlag(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->getFlag()I

    move-result p0

    return p0
.end method

.method public getOwnerUid(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

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

.method public getPackageNameFromUid(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackagesUsingFlag(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/tsu;

    invoke-virtual {v2}, Lcom/android/server/am/tsu;->getFlag()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/android/server/am/tsu;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-object v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProcState(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->pa()I

    move-result p0

    return p0
.end method

.method public getSensorName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mSensorMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUidFromPackageName(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getUidState(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->qa()I

    move-result p0

    return p0
.end method

.method public initAppRecord(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, " initAppRecord"

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/AppRecordManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageParser$Package;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Lcom/android/server/am/tsu;

    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v4, v3, v1}, Lcom/android/server/am/tsu;-><init>(ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public initEnv(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "AppRecordManager"

    const-string p1, "Fatal Exception # registerPackageReceiver # mContext=null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mUidObserver:Lcom/android/server/am/AppRecordManagerService$UidObserver;

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/AppRecordManagerService;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    invoke-direct {p0}, Lcom/android/server/am/AppRecordManagerService;->registerPackageReceiver()V

    invoke-direct {p0}, Lcom/android/server/am/AppRecordManagerService;->registerGeneralReceiver()V

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mSensorMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mSensorMap:Ljava/util/HashMap;

    const/16 v0, -0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "GPS"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p0, Lcom/android/server/am/AppRecordManagerService;->OP_FEATURE_APPDIED_STATISTICE:Z

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/android/server/am/ire;->getInstance(Landroid/content/Context;)Lcom/android/server/am/ire;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/ire;->initOnlineConfig()V

    :cond_2
    sget-boolean p0, Lcom/android/server/am/AppRecordManagerService;->OP_FEATURE_APPDIED_STATISTICE:Z

    if-eqz p0, :cond_3

    sget-boolean p0, Lcom/android/server/am/ire;->Kl:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/server/am/sis;->getInstance()Lcom/android/server/am/sis;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/sis;->init(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method public isApp(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->ra()Z

    move-result p0

    return p0
.end method

.method public noteFlashlightOff(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->sa()V

    return-void
.end method

.method public noteFlashlightOn(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->ta()V

    return-void
.end method

.method public notePauseGps(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/tsu;->zta(Ljava/lang/String;Z)V

    return-void
.end method

.method public notePauseGps(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getUidFromPackageName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppRecordManagerService;->notePauseGps(ILjava/lang/String;Z)V

    return-void
.end method

.method public noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/tsu;->noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public noteResetAudio()V
    .locals 1

    const/4 p0, 0x1

    const-string v0, " noteResetAudio ------------ * "

    invoke-static {p0, v0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method public noteResetCamera()V
    .locals 1

    const/4 p0, 0x1

    const-string v0, " noteResetCamera ------------ * "

    invoke-static {p0, v0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method public noteResetFlashlight()V
    .locals 1

    const/4 p0, 0x1

    const-string v0, " noteResetFlashlight ------------ * "

    invoke-static {p0, v0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method public noteResetVideo()V
    .locals 1

    const/4 p0, 0x1

    const-string v0, " noteResetVideo ------------ * "

    invoke-static {p0, v0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method public noteStartAudio(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->ua()V

    return-void
.end method

.method public noteStartCamera(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->va()V

    return-void
.end method

.method public noteStartGps(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getUidFromPackageName(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/am/tsu;->zta(Ljava/lang/String;J)V

    return-void
.end method

.method public noteStartSensor(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/tsu;->zgw(I)V

    return-void
.end method

.method public noteStartTraffic(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->wa()V

    :cond_0
    return-void
.end method

.method public noteStartVideo(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->xa()V

    return-void
.end method

.method public noteStopAudio(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->ya()V

    return-void
.end method

.method public noteStopCamera(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->za()V

    return-void
.end method

.method public noteStopGps(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getUidFromPackageName(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/tsu;->les(Ljava/lang/String;)V

    return-void
.end method

.method public noteStopSensor(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/tsu;->obl(I)V

    return-void
.end method

.method public noteStopTraffic(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->Aa()V

    return-void
.end method

.method public noteStopVideo(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->Ba()V

    return-void
.end method

.method public noteVibratorOff(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->Ca()V

    return-void
.end method

.method public noteVibratorOn(IJ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/tsu;->kth(J)V

    return-void
.end method

.method public processDie(Lcom/android/server/am/ProcessRecord;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processDie ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppRecordManagerService;->getOwnerUid(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/android/server/am/tsu;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :goto_1
    if-nez p0, :cond_2

    const-string p0, "AppRecordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error when processDie [ can\'t find uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pid="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget p1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/tsu;->oxb(I)V

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public processStart(Lcom/android/server/am/ProcessRecord;I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processStart ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/AppRecordManagerService;->OP_FEATURE_APPDIED_STATISTICE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/sis;->getInstance()Lcom/android/server/am/sis;

    iput-boolean v1, p0, Lcom/android/server/am/AppRecordManagerService;->mIsInit:Z

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppRecordManagerService;->getOwnerUid(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    check-cast v2, Lcom/android/server/am/tsu;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :goto_1
    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    new-instance v2, Lcom/android/server/am/tsu;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/am/tsu;-><init>(ILjava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processStart error ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, p2, p0, v0, p1}, Lcom/android/server/am/tsu;->zta(ILjava/lang/String;ZI)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeIsolatedUid(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeIsolatedUid [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "(appUid)]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    invoke-direct {p0, v1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/tsu;->removeIsolatedUid(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public schedulePerformPoll()V
    .locals 0

    invoke-static {}, Lcom/android/server/zgw;->getInstance()Lcom/android/server/zgw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/zgw;->schedulePerformPoll()V

    return-void
.end method
