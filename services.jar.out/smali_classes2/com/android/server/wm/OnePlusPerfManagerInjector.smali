.class public Lcom/android/server/wm/OnePlusPerfManagerInjector;
.super Ljava/lang/Object;
.source "OnePlusPerfManagerInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OnePlusPerfManagerInjector"

.field private static onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "OnePlusPerfManagerInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquirePerfForStartSpeed(Ljava/lang/String;Landroid/util/BoostFramework;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "call OnePlusPerfManagerInjector.acquirePerfForStartSpeedV2()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusPerfManager;->acquirePerfForStartSpeed(Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v0

    return v0
.end method

.method public static initInstance()V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_perf_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOnePlusPerfManager;

    sput-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    :cond_1
    return-void
.end method

.method public static mayLockPidToCpu(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "call OnePlusPerfManagerInjector.mayLockPidToCpu()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusPerfManager;->mayLockPidToCpu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static runAppMayWithPerf(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "call OnePlusPerfManagerInjector.runAppMayWithPerf()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
