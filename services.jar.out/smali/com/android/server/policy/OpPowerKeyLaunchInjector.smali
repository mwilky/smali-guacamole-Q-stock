.class public Lcom/android/server/policy/OpPowerKeyLaunchInjector;
.super Ljava/lang/Object;
.source "OpPowerKeyLaunchInjector.java"


# static fields
.field private static sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelPendingPowerKeyAction()V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->cancelPendingPowerKeyAction()V

    return-void
.end method

.method public static getInstance()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_powerkey_launch:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static handleEmergency(Landroid/util/MutableBoolean;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0, p0}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->handleEmergency(Landroid/util/MutableBoolean;)Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method

.method public static initGestureLauncherService(Lcom/android/server/GestureLauncherService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0, p0}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->initGestureLauncherService(Lcom/android/server/GestureLauncherService;)V

    return-void
.end method

.method private static initInstance()V
    .locals 1

    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_powerkey_launch:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    sput-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    :cond_0
    return-void
.end method

.method public static interceptPowerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0, p0}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static isDoubleTapPowerWalletHasNoActiveCard()Z
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->isDoubleTapPowerWalletHasNoActiveCard()Z

    move-result v0

    return v0
.end method

.method public static processEmergencyTap(Landroid/view/KeyEvent;ZZ)Z
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->processEmergencyTap(Landroid/view/KeyEvent;ZZ)Z

    move-result v0

    return v0
.end method

.method public static registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static updateSettings(Landroid/content/ContentResolver;)V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->sOpPowerKeyLauncher:Lcom/android/server/policy/IOpPowerKeyLaunchManager;

    invoke-interface {v0, p0}, Lcom/android/server/policy/IOpPowerKeyLaunchManager;->updateSettings(Landroid/content/ContentResolver;)V

    return-void
.end method
