.class public Lcom/android/server/am/OpAntiBurnControlInjector;
.super Ljava/lang/Object;
.source "OpAntiBurnControlInjector.java"


# static fields
.field private static sController:Lcom/android/server/am/IOpAntiBurnController;

.field private static sFeatureEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OpAntiBurnControlInjector;->sController:Lcom/android/server/am/IOpAntiBurnController;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xde

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OpAntiBurnControlInjector;->sFeatureEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchConfig(Landroid/app/IApplicationThread;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAntiBurnControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAntiBurnControlInjector;->sController:Lcom/android/server/am/IOpAntiBurnController;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAntiBurnController;->dispatchConfig(Landroid/app/IApplicationThread;Landroid/content/pm/ApplicationInfo;)V

    :cond_0
    return-void
.end method

.method public static init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/IPackageManager;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAntiBurnControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAntiBurnControlInjector;->sController:Lcom/android/server/am/IOpAntiBurnController;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAntiBurnController;->init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/IPackageManager;)V

    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpAntiBurnControlInjector;->sFeatureEnable:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpAntiBurnControlInjector;->sController:Lcom/android/server/am/IOpAntiBurnController;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_antiburn_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAntiBurnController;

    sput-object v0, Lcom/android/server/am/OpAntiBurnControlInjector;->sController:Lcom/android/server/am/IOpAntiBurnController;

    :cond_0
    return-void
.end method

.method public static notifyPackageChanged(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAntiBurnControlInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAntiBurnControlInjector;->sController:Lcom/android/server/am/IOpAntiBurnController;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAntiBurnController;->notifyPackageChanged(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
