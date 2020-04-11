.class public Lcom/android/server/OpAlarmManagerInjector;
.super Ljava/lang/Object;
.source "OpAlarmManagerInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final DESKCLOCK:Ljava/lang/String; = "com.oneplus.deskclock"

.field public static final FLAG_ALLOW_WHILE_IDLE:I = 0x4

.field public static final FLAG_ALLOW_WHILE_IDLE_UNRESTRICTED:I = 0x8

.field public static final FLAG_WAKE_FROM_IDLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OpAlarmManagerInjector"

.field private static opAlarmManager:Lcom/android/server/IOpAlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OpAlarmManagerInjector;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alleviateFirePendingLocked(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/IOpAlarmManager;->alleviateFirePendingLocked(Ljava/util/ArrayList;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static checkRepeatAlarmInWhiteList(Lcom/android/server/AlarmManagerService$Alarm;ILcom/android/server/AppStateTracker;)I
    .locals 1

    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOpAlarmManager;->checkRepeatAlarmInWhiteList(Lcom/android/server/AlarmManagerService$Alarm;ILcom/android/server/AppStateTracker;)I

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    return v0
.end method

.method public static dumpNextWakeFromIdleInfo()V
    .locals 1

    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/IOpAlarmManager;->dumpNextWakeFromIdleInfo()V

    :cond_1
    return-void
.end method

.method public static ifDropPkgAlarm(Lcom/android/server/AlarmManagerService$Alarm;Z)Z
    .locals 1

    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpAlarmManager;->ifDropPkgAlarm(Lcom/android/server/AlarmManagerService$Alarm;Z)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ifEnableLogDump()Z
    .locals 1

    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/IOpAlarmManager;->ifEnableLogDump()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ifHandleCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpAlarmManager;->ifHandleCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ifNeedPending(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1

    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/IOpAlarmManager;->ifNeedPending(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0xe

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static initInstance(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpAlarmManager;->initInstance(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static modifyMinTrigger(JJJILandroid/app/PendingIntent;ILjava/lang/String;J)[J
    .locals 14

    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    :cond_0
    sget-object v1, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v1, :cond_1

    move-wide v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-interface/range {v1 .. v13}, Lcom/android/server/IOpAlarmManager;->modifyMinTrigger(JJJILandroid/app/PendingIntent;ILjava/lang/String;J)[J

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p10, v0, v1

    const/4 v1, 0x1

    aput-wide p4, v0, v1

    return-object v0
.end method

.method public static needDeferred(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "com.oneplus.deskclock"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static onStart(Lcom/android/server/AlarmManagerService$AmsInner;)V
    .locals 1

    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/IOpAlarmManager;->onStart(Lcom/android/server/AlarmManagerService$AmsInner;)V

    :cond_1
    return-void
.end method

.method public static setDeepSleepMode(Z)V
    .locals 1

    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/IOpAlarmManager;->setDeepSleepMode(Z)V

    :cond_1
    return-void
.end method

.method public static setDeepSleepWhitelist([I)V
    .locals 1

    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/IOpAlarmManager;->setDeepSleepWhitelist([I)V

    :cond_1
    return-void
.end method

.method public static setPkgNetworkAlarmRestriction(Z)V
    .locals 1

    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/IOpAlarmManager;->setPkgNetworkAlarmRestriction(Z)V

    :cond_1
    return-void
.end method

.method public static updateFlag(Ljava/lang/String;ILandroid/app/AlarmManager$AlarmClockInfo;)I
    .locals 1

    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOpAlarmManager;->updateFlag(Ljava/lang/String;ILandroid/app/AlarmManager$AlarmClockInfo;)I

    move-result v0

    return v0

    :cond_1
    return p1
.end method
