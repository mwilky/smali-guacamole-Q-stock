.class public Lcom/android/server/am/OpBGFrozenInjector;
.super Ljava/lang/Object;
.source "OpBGFrozenInjector.java"


# static fields
.field public static final ATTACH_APPLICATION_LOCKED_TIMEOUT:I = 0x2580

.field public static final BIND_SERVICE_LOCKED_TIMEOUT:I = 0x251c

.field private static final DEBUG_ONEPLUS:Z

.field public static final DISPATCH_APP_VISIBILITY_TIMEOUT:I = 0x2454

.field public static final DISPATCH_RESIZED_TIMEOUT:I = 0x24b8

.field public static final DISPLAY_EVENT_LOCAL_TIMEOUT:I = 0x2422

.field public static final DISPLAY_EVENT_TIMEOUT:I = 0x23f0

.field public static final GET_CONFIGFORSUBID_TIMEOUT:I = 0x2648

.field public static final GET_GETVTDATAUSAGE_TIMEOUT:I = 0x26ac

.field public static final INPUT_DEVICES_CHANGE_TIMEOUT:I = 0x238c

.field public static final NOTIFY_CHANGE_TIMEOUT:I = 0x25e4

.field public static final PUBLISH_SERVICE_TIMEOUT:I = 0x2328

.field private static final TAG:Ljava/lang/String; = "OpBGFrozenInjector"

.field private static opBGFrozen:Lcom/android/server/am/IOpBGFrozen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OpBGFrozenInjector;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDisplayCallback(IILandroid/hardware/display/IDisplayManagerCallback;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->addDisplayCallback(IILandroid/hardware/display/IDisplayManagerCallback;)V

    :cond_1
    return-void
.end method

.method public static addProc(IILcom/android/server/am/ProcessRecord;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->addProc(IILcom/android/server/am/ProcessRecord;)V

    :cond_1
    return-void
.end method

.method public static broadcastTimeoutEvent(IILandroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->broadcastTimeoutEvent(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static bumpServiceEvent(IIZLjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpBGFrozen;->bumpServiceEvent(IIZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static checkAppInLaunchingProviders(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->checkAppInLaunchingProviders(Lcom/android/server/am/ProcessRecord;)V

    :cond_1
    return-void
.end method

.method public static checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static checkTimeoutBegin(III)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->checkTimeoutBegin(III)V

    :cond_1
    return-void
.end method

.method public static checkTimeoutEnd(I)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->checkTimeoutEnd(I)V

    :cond_1
    return-void
.end method

.method public static clearImportantUids()V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/am/IOpBGFrozen;->clearImportantUids()V

    :cond_1
    return-void
.end method

.method public static clientConnectionRemoveEvent(II)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->clientConnectionRemoveEvent(II)V

    :cond_1
    return-void
.end method

.method public static contentNotifyResumeEvent(IZ)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->contentNotifyResumeEvent(IZ)V

    :cond_1
    return-void
.end method

.method public static embryoProcDied(II)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->embryoProcDied(II)V

    :cond_1
    return-void
.end method

.method public static getEnable()Z
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/am/IOpBGFrozen;->getEnable()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static importantProviderChangeEvent(IZLcom/android/server/am/ProcessRecord;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->importantProviderChangeEvent(IZLcom/android/server/am/ProcessRecord;)V

    :cond_1
    return-void
.end method

.method public static initFromLMS(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->initFromLMS(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V

    :cond_1
    return-void
.end method

.method public static initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/IPackageManager;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/IPackageManager;)V

    :cond_1
    return-void
.end method

.method public static isBlockedGpsUid(I)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->isBlockedGpsUid(I)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isDeliverDisplayChange(I)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->isDeliverDisplayChange(I)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static mediaProjectionEvent(IZ)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->mediaProjectionEvent(IZ)V

    :cond_1
    return-void
.end method

.method public static permRequestDecEvent(I)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->permRequestDecEvent(I)V

    :cond_1
    return-void
.end method

.method public static receiveBroadcastEvent(IIZZLandroid/content/Intent;)V
    .locals 7

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v1, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v1, :cond_1

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/am/IOpBGFrozen;->receiveBroadcastEvent(IIZZLandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static removeDisplayCallback(II)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->removeDisplayCallback(II)V

    :cond_1
    return-void
.end method

.method public static removeProc(II)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->removeProc(II)V

    :cond_1
    return-void
.end method

.method public static screenStateChangedEvent(Z)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpBGFrozen;->screenStateChangedEvent(Z)V

    :cond_1
    return-void
.end method

.method public static serviceTimeoutEvent(IILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->serviceTimeoutEvent(IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static shellCommand(Ljava/lang/String;I[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpBGFrozen;->shellCommand(Ljava/lang/String;I[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static skipBroadcastLocked(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->skipBroadcastLocked(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static skipBroadcastLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->skipBroadcastLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static startProcessEvent(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->startProcessEvent(Lcom/android/server/am/ProcessRecord;I)V

    :cond_1
    return-void
.end method

.method public static triggerResume(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->triggerResume(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static updateDisplayEvent(II)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->updateDisplayEvent(II)V

    :cond_1
    return-void
.end method

.method public static updateImportantUids(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->updateImportantUids(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;)V

    :cond_1
    return-void
.end method

.method public static updateImportantUids(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpBGFrozen;->updateImportantUids(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V

    :cond_1
    return-void
.end method

.method public static updateLastImportantUidsIfNeeded()V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/am/IOpBGFrozen;->updateLastImportantUidsIfNeeded()V

    :cond_1
    return-void
.end method

.method public static updateLocationReceiverUidsChange(IZZZ)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpBGFrozen;->updateLocationReceiverUidsChange(IZZZ)V

    :cond_1
    return-void
.end method

.method public static virtualDeviceChangeEvent(IZLjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpBGFrozen;

    sput-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    :cond_0
    sget-object v0, Lcom/android/server/am/OpBGFrozenInjector;->opBGFrozen:Lcom/android/server/am/IOpBGFrozen;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpBGFrozen;->virtualDeviceChangeEvent(IZLjava/lang/String;)V

    :cond_1
    return-void
.end method
