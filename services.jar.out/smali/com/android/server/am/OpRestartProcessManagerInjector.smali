.class public Lcom/android/server/am/OpRestartProcessManagerInjector;
.super Ljava/lang/Object;
.source "OpRestartProcessManagerInjector.java"


# static fields
.field private static final DEBUG:Z

.field public static final PROPERTY_RESTART_PROCESS:Ljava/lang/String; = "persist.sys.rp.debug"

.field private static final TAG:Ljava/lang/String;

.field private static sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/server/am/OpRestartProcessManagerInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAddNewPackages(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doAddNewPackages()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->doAddNewPackages(Ljava/lang/String;)V

    return-void
.end method

.method public static doCleanAllData(J)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doCleanAllData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpRestartProcessManager;->doCleanAllData(J)V

    return-void
.end method

.method public static doDump(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doDump()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpRestartProcessManager;->doDump(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static doGetGeneralUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.getGeneralUsedPackageList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->doGetGeneralUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static doGetHighUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.getHighUsedPackageList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->doGetHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static doGetLowUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.getLowUsedPackageList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->doGetLowUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static doHandleCommand([Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doHandleCommand()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->doHandleCommand([Ljava/lang/String;)V

    return-void
.end method

.method public static doIsHighUsedPackages(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doIsHighUsedPackages()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->doIsHighUsedPackages(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static doRemovePackage(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doRemovePackage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->doRemovePackage(Ljava/lang/String;)V

    return-void
.end method

.method public static doUpdateDuration(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doUpdateDuration()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpRestartProcessManager;->doUpdateDuration(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static doUpdateLaunchTime(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doUpdateLaunchTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpRestartProcessManager;->doUpdateLaunchTime(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static doWriteRecord(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doWriteRecord()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->doWriteRecord(Z)V

    return-void
.end method

.method public static getInitPackagesFromSystemReady()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.getInitPackagesFromSystemReady()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0}, Lcom/android/server/am/IOpRestartProcessManager;->getInitPackagesFromSystemReady()Z

    move-result v0

    return v0
.end method

.method private static initInstance()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_restartprocessmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpRestartProcessManager;

    sput-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    :cond_1
    return-void
.end method

.method public static setInitPackagesFromSystemReady(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.setInitPackagesFromSystemReady()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->setInitPackagesFromSystemReady(Z)V

    return-void
.end method

.method public static setScreenState(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.setScreenState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->setScreenState(Z)V

    return-void
.end method

.method public static setUpdatingPackage(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.setUpdatingPackage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->setUpdatingPackage(Ljava/lang/String;)V

    return-void
.end method
