.class public Lcom/android/server/am/OpAppBootManagerInjector;
.super Ljava/lang/Object;
.source "OpAppBootManagerInjector.java"


# static fields
.field public static final ACTION_NOTIFICATION_LISTENER_UPDATE:Ljava/lang/String; = "action.appboot.notification_listener_update"

.field private static final DEBUG:Z

.field private static final ENABLED:Z

.field public static final TAG:Ljava/lang/String; = "OnePlusAppBootManager"

.field private static sAppBootManager:Lcom/android/server/am/IOpAppBootManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->DEBUG:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDependencyPackageFlag(Ljava/lang/String;I)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->addDependencyPackageFlag(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public static canActivityGo(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->canActivityGo(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static canInstrumentationGo(Landroid/content/ComponentName;II)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppBootManager;->canInstrumentationGo(Landroid/content/ComponentName;II)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static canJobSchedulerServiceGo(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->canJobSchedulerServiceGo(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static canKillProcessService(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppBootManager;->canKillProcessService(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static canProviderGo(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->canProviderGo(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static canReceiverGo(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppBootManager;->canReceiverGo(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static canScheduleServiceRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->canScheduleServiceRestart(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static canServiceGo(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ILjava/lang/String;)Z
    .locals 8

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v2, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v2, :cond_2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/am/IOpAppBootManager;->canServiceGo(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static checkAppInfoWithFlags(ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->checkAppInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p1
.end method

.method public static getScreenState()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/am/IOpAppBootManager;->getScreenState()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_2
    return-void
.end method

.method public static initEnv(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->initEnv(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static initPackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V
    .locals 1
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

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->initPackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V

    :cond_2
    return-void
.end method

.method public static isBlackJobClass(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->isBlackJobClass(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static isDebug()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/am/IOpAppBootManager;->isDebug()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static isEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    return v0
.end method

.method public static isNotAppUserSetted(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->isNotAppUserSetted(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->myLog(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static setCurrentIME(Landroid/content/Intent;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->setCurrentIME(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public static setCurrentWallpaperPackage(Landroid/content/ComponentName;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->setCurrentWallpaperPackage(Landroid/content/ComponentName;)V

    :cond_2
    return-void
.end method

.method public static skipBroadcast(Landroid/content/Intent;Ljava/lang/String;IILcom/android/server/am/ProcessRecord;)Z
    .locals 8

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v2, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v2, :cond_2

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/am/IOpAppBootManager;->skipBroadcast(Landroid/content/Intent;Ljava/lang/String;IILcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static trackProcess(ZLcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppBootManager;->trackProcess(ZLcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static updateAccesibilityServiceFlag(Landroid/content/Intent;Landroid/content/ComponentName;I)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppBootManager;->updateAccesibilityServiceFlag(Landroid/content/Intent;Landroid/content/ComponentName;I)V

    :cond_2
    return-void
.end method

.method public static updateAppStopInfo(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->updateAppStopInfo(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static updateAppStopInfo(Ljava/lang/String;I)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->updateAppStopInfo(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public static updatePowerFlag(Ljava/lang/String;I)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->updatePowerFlag(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public static updateWidgetPackage(Ljava/lang/String;Z)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppBootManager;->updateWidgetPackage(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public static updateWidgetPackages(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/OpAppBootManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppBootManager;

    sput-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpAppBootManagerInjector;->sAppBootManager:Lcom/android/server/am/IOpAppBootManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppBootManager;->updateWidgetPackages(Ljava/util/HashSet;)V

    :cond_2
    return-void
.end method
