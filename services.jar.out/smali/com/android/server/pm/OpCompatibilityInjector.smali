.class public Lcom/android/server/pm/OpCompatibilityInjector;
.super Ljava/lang/Object;
.source "OpCompatibilityInjector.java"


# static fields
.field private static final DEBUG:Z

.field public static final GPU_OUT_OF_MEMORY:I = 0xa8

.field private static final TAG:Ljava/lang/String;

.field private static mInited:Z

.field private static sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    const-class v0, Lcom/android/server/pm/OpCompatibilityInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abiOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.abiOverride()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpCompatibilityHelper;->abiOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static customizePackageIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.customizePackageIfNeeded()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpCompatibilityHelper;->customizePackageIfNeeded(Landroid/content/pm/PackageParser$Package;)V

    return-void
.end method

.method public static dumpToString()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.dumpToString()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0}, Lcom/android/server/pm/IOpCompatibilityHelper;->dumpToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCompatConfigString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.dumpToString type"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpCompatibilityHelper;->getCompatConfigString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initCompatOnlineConfig()V
    .locals 2

    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.initCompatOnlineConfig()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0}, Lcom/android/server/pm/IOpCompatibilityHelper;->initCompatOnlineConfig()V

    return-void
.end method

.method public static initInstance(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpCompatibilityHelper;->initInstance(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    return-void
.end method

.method public static isInConfigList(ILjava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.isInConfigList()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static makeSureInstanceInitialized()V
    .locals 1

    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_compatibility_helper:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IOpCompatibilityHelper;

    sput-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    :cond_0
    return-void
.end method
