.class public Lcom/android/server/am/vdw$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/vdw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# static fields
.field public static final IN_USING:Z = true

.field private static mInstance:Lcom/android/server/am/vdw$zta;

.field private static nq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static oq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static pq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static qq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static rq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static tq:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/vdw$zta;->nq:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/vdw$zta;->oq:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "HEARTBEAT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/am/vdw$zta;->pq:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "AlarmTaskSchedule"

    const-string v2, "com.igexin.sdk.action"

    const-string v3, "AlarmTaskScheduleBak"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/am/vdw$zta;->qq:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    const-string v2, "android.intent.action.TIME_TICK"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/am/vdw$zta;->rq:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/vdw$zta;->sq:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/vdw$zta;->tq:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "cn.kuwo.player"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/vdw$zta;->tq:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private Eb(Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Lcom/android/server/am/vdw$zta;->qq:Ljava/util/ArrayList;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/vdw$zta;->qq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private Fb(Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Lcom/android/server/am/vdw$zta;->pq:Ljava/util/ArrayList;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/vdw$zta;->pq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static Ob()V
    .locals 3

    const-string v0, "/data/data_bpm/brd.xml"

    invoke-static {v0}, Lcom/android/server/am/vdw;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/vdw$zta;->oq:Ljava/util/List;

    const-string v0, "/data/data_bpm/black_brd.xml"

    invoke-static {v0}, Lcom/android/server/am/vdw;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/vdw$zta;->nq:Ljava/util/List;

    const-string v0, "/data/data_bpm/black_alarm.xml"

    invoke-static {v0}, Lcom/android/server/am/vdw;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/vdw$zta;->sq:Ljava/util/List;

    sget-boolean v0, Lcom/android/server/am/vdw;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadConfigFiles: mActionListToSkipStartProcess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/vdw$zta;->oq:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BFP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadConfigFiles: mActionListToSkipThawed= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/vdw$zta;->nq:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadConfigFiles: mBlackAlarmActionList= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/vdw$zta;->sq:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/vdw$zta;->getInstance()Lcom/android/server/am/vdw$zta;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/vdw$zta;->sq:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/server/am/vdw$zta;->setBlackAlarm(Ljava/util/List;)V

    return-void
.end method

.method static final checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_2

    return v0

    :cond_2
    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-nez v2, :cond_3

    return v0

    :cond_3
    invoke-static {}, Lcom/android/server/am/vdw$zta;->getInstance()Lcom/android/server/am/vdw$zta;

    move-result-object v2

    invoke-direct {v2, v1, p2}, Lcom/android/server/am/vdw$zta;->zta(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/server/am/vdw;->access$200()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not want to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for broadcast "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " callUid:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " callPid:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BFP"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v6, p2, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_0
    return v0
.end method

.method private static getInstance()Lcom/android/server/am/vdw$zta;
    .locals 1

    sget-object v0, Lcom/android/server/am/vdw$zta;->mInstance:Lcom/android/server/am/vdw$zta;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/vdw$zta;

    invoke-direct {v0}, Lcom/android/server/am/vdw$zta;-><init>()V

    sput-object v0, Lcom/android/server/am/vdw$zta;->mInstance:Lcom/android/server/am/vdw$zta;

    :cond_0
    sget-object v0, Lcom/android/server/am/vdw$zta;->mInstance:Lcom/android/server/am/vdw$zta;

    return-object v0
.end method

.method public static rtg(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/vdw$zta;->nq:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/vdw$zta;->nq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/android/server/am/vdw$zta;->nq:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setBlackAlarm(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean p0, Lcom/android/server/am/vdw;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBlackAlarm list.size="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BFP"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/android/server/OpAlarmAlignmentInjector;->setBlackAlarm(Ljava/util/List;)V

    return-void
.end method

.method static final skipBroadcastLocked(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 4

    const-wide/16 v0, 0x8

    const-string v2, "skipBroadcastLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/vdw$zta;->getInstance()Lcom/android/server/am/vdw$zta;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v2, v3, p1, p2}, Lcom/android/server/am/vdw$zta;->zta(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/am/vdw;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFP Denial: receiving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v3, v3, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget p0, p0, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") due to sender "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (uid "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is ordered "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " ;  ordered "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BFP"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0
.end method

.method static final skipBroadcastLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    const-string v2, "skipBroadcastLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/vdw$zta;->getInstance()Lcom/android/server/am/vdw$zta;

    move-result-object v2

    iget-boolean v3, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-direct {v2, p1, p2, v3}, Lcom/android/server/am/vdw$zta;->zta(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/am/vdw;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFP skip broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sender "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is ordered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "BFP"

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0
.end method

.method public static ssp(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/vdw$zta;->sq:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/vdw$zta;->sq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/android/server/am/vdw$zta;->sq:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/vdw$zta;->getInstance()Lcom/android/server/am/vdw$zta;

    move-result-object p0

    sget-object v0, Lcom/android/server/am/vdw$zta;->sq:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/am/vdw$zta;->setBlackAlarm(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static tsu(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/vdw$zta;->oq:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/vdw$zta;->oq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/android/server/am/vdw$zta;->oq:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private ugm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object p0, Lcom/android/server/am/vdw$zta;->tq:Landroid/util/ArrayMap;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/vdw$zta;->tq:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private zta(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 4

    iget-object p0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/android/server/am/vdw$zta;->oq:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    iget p0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Lcom/android/server/am/irq;->c(I)Z

    move-result p0

    const-string v1, "BFP"

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/server/am/vdw;->access$200()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkProcessInWhiteListLocked -># true, in doze list "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Lcom/android/server/am/irq;->d(I)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/android/server/am/vdw;->access$200()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkProcessInWhiteListLocked -># true, in freeze list "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    :cond_4
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/OnePlusUtil$zta;->A()I

    move-result p0

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p0, v3, :cond_6

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->getInstance()Lcom/android/server/OnePlusUtil$you;

    move-result-object p0

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v3}, Lcom/android/server/OnePlusUtil$you;->gck(I)Z

    move-result p0

    if-nez p0, :cond_6

    sget-boolean p0, Lcom/android/server/am/vdw;->DEBUG:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "true Broadcast: r="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; app="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in front."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2

    :cond_6
    return v0
.end method

.method private zta(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 6

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    :cond_0
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    return p3

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_2

    return p3

    :cond_2
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_3

    return p3

    :cond_3
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/vdw$zta;->ugm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    sget-object v3, Lcom/android/server/am/vdw$zta;->nq:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/server/am/vdw$zta;->nq:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p1}, Lcom/android/server/am/vdw;->you(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_6

    monitor-exit v3

    return p3

    :cond_6
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p0}, Lcom/android/server/am/AppRecordManager;->getProcState(I)I

    move-result p0

    const/4 v1, 0x5

    if-le p0, v1, :cond_8

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/OnePlusUtil$zta;->A()I

    move-result p0

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq p0, v4, :cond_8

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->getInstance()Lcom/android/server/OnePlusUtil$you;

    move-result-object p0

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/OnePlusUtil$you;->gck(I)Z

    move-result p0

    if-nez p0, :cond_8

    sget-boolean p0, Lcom/android/server/am/vdw;->DEBUG:Z

    if-eqz p0, :cond_7

    const-string p0, "BFP"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "skip Broadcast: r="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; app="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    monitor-exit v3

    return v2

    :cond_8
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p0}, Lcom/android/server/am/AppRecordManager;->getProcState(I)I

    move-result p0

    if-ne p0, v1, :cond_a

    sget-object p0, Lcom/android/server/am/vdw$zta;->rq:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/OnePlusUtil$zta;->A()I

    move-result p0

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq p0, v1, :cond_a

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->getInstance()Lcom/android/server/OnePlusUtil$you;

    move-result-object p0

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v1}, Lcom/android/server/OnePlusUtil$you;->gck(I)Z

    move-result p0

    if-nez p0, :cond_a

    sget-boolean p0, Lcom/android/server/am/vdw;->DEBUG:Z

    if-eqz p0, :cond_9

    const-string p0, "BFP"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip Broadcast: r="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; app="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ;broadcastAction="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    monitor-exit v3

    return v2

    :cond_a
    monitor-exit v3

    return p3

    :cond_b
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_c
    :goto_0
    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-lt v3, v1, :cond_10

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-lt v3, v1, :cond_10

    if-eqz v0, :cond_10

    invoke-direct {p0, v0}, Lcom/android/server/am/vdw$zta;->Eb(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    sget-boolean p0, Lcom/android/server/am/vdw;->DEBUG:Z

    if-eqz p0, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "skip Broadcast: a="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " r="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; app="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BFP"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v2

    :cond_e
    sget-object p0, Lcom/android/server/am/vdw$zta;->sq:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    sget-boolean p0, Lcom/android/server/am/vdw;->DEBUG:Z

    if-eqz p0, :cond_f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "skip Broadcast mBlackAlarmActionList: a="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " r="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; app="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BFP"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v2

    :cond_10
    return p3
.end method
