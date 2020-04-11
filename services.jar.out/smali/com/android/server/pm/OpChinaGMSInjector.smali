.class public Lcom/android/server/pm/OpChinaGMSInjector;
.super Ljava/lang/Object;
.source "OpChinaGMSInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sOpChinaGMSManager:Lcom/android/server/pm/IOpChinaGMSManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/OpChinaGMSInjector;->DEBUG:Z

    const-class v0, Lcom/android/server/pm/OpChinaGMSInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/OpChinaGMSInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGMSState()Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v0, v0, [I

    const/16 v1, 0x7b

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpChinaGMSInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/OpChinaGMSInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpReserveAppInjector.getGMSState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpChinaGMSInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/android/server/pm/OpChinaGMSInjector;->sOpChinaGMSManager:Lcom/android/server/pm/IOpChinaGMSManager;

    invoke-interface {v0}, Lcom/android/server/pm/IOpChinaGMSManager;->getGMSState()Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method public static initInstance(Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v0, v0, [I

    const/16 v1, 0x7b

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpChinaGMSInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/OpChinaGMSInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpChinaGMSInjector.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpChinaGMSInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/android/server/pm/OpChinaGMSInjector;->sOpChinaGMSManager:Lcom/android/server/pm/IOpChinaGMSManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpChinaGMSManager;->initInstance(Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private static makeSureInstanceInitialized()V
    .locals 1

    sget-object v0, Lcom/android/server/pm/OpChinaGMSInjector;->sOpChinaGMSManager:Lcom/android/server/pm/IOpChinaGMSManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_china_gms:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IOpChinaGMSManager;

    sput-object v0, Lcom/android/server/pm/OpChinaGMSInjector;->sOpChinaGMSManager:Lcom/android/server/pm/IOpChinaGMSManager;

    :cond_0
    return-void
.end method

.method public static setGMSEnabledSetting(Landroid/os/UserHandle;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v0, v0, [I

    const/16 v1, 0x7b

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpChinaGMSInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/OpChinaGMSInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpReserveAppInjector.setGMSEnabledSetting()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpChinaGMSInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/android/server/pm/OpChinaGMSInjector;->sOpChinaGMSManager:Lcom/android/server/pm/IOpChinaGMSManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpChinaGMSManager;->setGMSEnabledSetting(Landroid/os/UserHandle;I)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static setGMSState(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v0, v0, [I

    const/16 v1, 0x7b

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpChinaGMSInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/OpChinaGMSInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpReserveAppInjector.getGMSState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpChinaGMSInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/android/server/pm/OpChinaGMSInjector;->sOpChinaGMSManager:Lcom/android/server/pm/IOpChinaGMSManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpChinaGMSManager;->setGMSState(Z)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
