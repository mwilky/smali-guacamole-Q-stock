.class public Lcom/android/server/DeviceIdleControllerInjector;
.super Ljava/lang/Object;
.source "DeviceIdleControllerInjector.java"


# static fields
.field private static final AGGRESSIVE_DOZE_ENABLED:Z

.field private static final DEBUG:Z

.field private static final DEBUG_INJECTOR:Z

.field private static final POWER_CONTROL_ENABLED:Z

.field private static final SMART_POWER_CONTROL_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "DeviceIdleControllerInjector"

.field private static mInner:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

.field private static opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

.field private static opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

.field private static opPowerManager:Lcom/android/server/power/IOpPowerManager;

.field private static opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG:Z

    const-string v0, "DeviceIdleControllerInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x5c

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/DeviceIdleControllerInjector;->AGGRESSIVE_DOZE_ENABLED:Z

    new-array v1, v0, [I

    const/16 v3, 0x9b

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/DeviceIdleControllerInjector;->POWER_CONTROL_ENABLED:Z

    new-array v0, v0, [I

    const/16 v1, 0x5d

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->SMART_POWER_CONTROL_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addForcedOptApp(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleControllerInjector"

    const-string v1, "addForcedOptApp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/IOpSmartPowerControl;->addForcedOptApp(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public static anyMotionResultOverride(I)I
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleControllerInjector"

    const-string v1, "anyMotionResultOverride"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/IOpAggressiveDoze;->anyMotionResultOverride(I)I

    move-result v0

    return v0

    :cond_1
    return p0
.end method

.method public static clearGpsUids()V
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleControllerInjector"

    const-string v1, "clearGpsUids"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/IOpAggressiveDoze;->clearGpsUids()V

    :cond_1
    return-void
.end method

.method public static clearWhitelistUid()V
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleControllerInjector"

    const-string v1, "clearWhitelistUid"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/IOpAggressiveDoze;->clearWhitelistUid()V

    :cond_1
    return-void
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleControllerInjector"

    const-string v1, "dumpHelp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "  aggressive [true|false]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Activate aggressive doze (true) or deactivate it (false)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static getForcedOptApps()Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleControllerInjector"

    const-string v1, "getForcedOptApps"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/IOpSmartPowerControl;->getForcedOptApps()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isDozingGps(I)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDozingGps uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleControllerInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/IOpAggressiveDoze;->isDozingGps(I)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isMoving(Landroid/location/Location;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleControllerInjector"

    const-string v1, "isMoving"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/IOpAggressiveDoze;->isMoving(Landroid/location/Location;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static mayUseAggressiveTimeoutLocked(FJJJJJFJJ)Z
    .locals 19

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "mayUseAggressiveanyMotionResultOverride"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v2, :cond_1

    move/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    invoke-interface/range {v2 .. v18}, Lcom/android/server/IOpAggressiveDoze;->mayUseAggressiveTimeoutLocked(FJJJJJFJJ)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static onChange(ZLandroid/net/Uri;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpAggressiveDoze;->onChange(ZLandroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public static prepare(Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-object p0, Lcom/android/server/DeviceIdleControllerInjector;->mInner:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->AGGRESSIVE_DOZE_ENABLED:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_aggressive_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAggressiveDoze;

    sput-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    :cond_1
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/IOpAggressiveDoze;->prepareDeviceIdleController(Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;)V

    :cond_2
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->POWER_CONTROL_ENABLED:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    if-nez v0, :cond_3

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/power/IOpPowerController$Stub;

    sput-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    :cond_3
    return-void
.end method

.method public static requestLocationUpdatesOverride()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "requestLocationUpdatesOverride"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/IOpAggressiveDoze;->requestLocationUpdatesOverride()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static scheduleAlarm(JZ)V
    .locals 1

    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->mInner:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->scheduleAlarm(JZ)V

    :cond_0
    return-void
.end method

.method public static scheduleAlarmOverride()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "scheduleAlarmOverride"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/IOpAggressiveDoze;->scheduleAlarmOverride()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static setDeviceIdleState(I)V
    .locals 1

    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/IOpPowerManager;

    sput-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->setDeviceIdleState(I)V

    :cond_1
    return-void
.end method

.method public static setDozeState(I)V
    .locals 4

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->POWER_CONTROL_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    const-string v1, "DeviceIdleControllerInjector"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDozeState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    if-eqz v0, :cond_3

    :try_start_0
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_2

    const-string v0, "before calling setDozeState"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    invoke-virtual {v0, p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->setDozeState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_3
    const-string v0, "Cannot get OpPowerControllerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static setPowerSaveWhitelistAppIds([I[I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "setPowerSaveWhitelistAppIds"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpSmartPowerControl;->setPowerSaveWhitelistAppIds([I[I)V

    :cond_1
    return-void
.end method

.method public static shellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "shellCommand"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0, p1, p2}, Lcom/android/server/IOpAggressiveDoze;->shellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static startMonitoringMotionOverride()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "startMonitoringMotionOverride"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/IOpAggressiveDoze;->startMonitoringMotionOverride()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static tryClearAllPendingBroadcasts()V
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "tryClearAllPendingBroadcasts"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/IOpAggressiveDoze;->tryClearAllPendingBroadcasts()V

    :cond_1
    return-void
.end method

.method public static writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/DeviceIdleControllerInjector;->getForcedOptApps()Landroid/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "force-opt"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "n"

    invoke-interface {p0, v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
