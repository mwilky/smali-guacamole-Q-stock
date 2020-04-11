.class public Lcom/oneplus/android/server/am/SmartBoostInjector;
.super Ljava/lang/Object;
.source "SmartBoostInjector.java"


# static fields
.field private static final ENABLED:Z

.field private static sSmartBoost:Lcom/oneplus/android/server/am/ISmartBoost;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x80

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/am/SmartBoostInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initEnv(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/SmartBoostInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/am/SmartBoostInjector;->initInstance()V

    sget-object v0, Lcom/oneplus/android/server/am/SmartBoostInjector;->sSmartBoost:Lcom/oneplus/android/server/am/ISmartBoost;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/am/ISmartBoost;->initEnv(Landroid/content/Context;)V

    return-void
.end method

.method private static initInstance()V
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/am/SmartBoostInjector;->sSmartBoost:Lcom/oneplus/android/server/am/ISmartBoost;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smartboost:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/ISmartBoost;

    sput-object v0, Lcom/oneplus/android/server/am/SmartBoostInjector;->sSmartBoost:Lcom/oneplus/android/server/am/ISmartBoost;

    :cond_0
    return-void
.end method

.method public static isIopPreloadEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/SmartBoostInjector;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/am/SmartBoostInjector;->initInstance()V

    sget-object v0, Lcom/oneplus/android/server/am/SmartBoostInjector;->sSmartBoost:Lcom/oneplus/android/server/am/ISmartBoost;

    invoke-interface {v0}, Lcom/oneplus/android/server/am/ISmartBoost;->isIopPreloadEnabled()Z

    move-result v0

    return v0
.end method

.method public static notifyIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/SmartBoostInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/am/SmartBoostInjector;->initInstance()V

    sget-object v0, Lcom/oneplus/android/server/am/SmartBoostInjector;->sSmartBoost:Lcom/oneplus/android/server/am/ISmartBoost;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/am/ISmartBoost;->notifyIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static notifyMemPlus(Ljava/lang/String;II)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/SmartBoostInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/am/SmartBoostInjector;->initInstance()V

    sget-object v0, Lcom/oneplus/android/server/am/SmartBoostInjector;->sSmartBoost:Lcom/oneplus/android/server/am/ISmartBoost;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/am/ISmartBoost;->notifyMemPlus(Ljava/lang/String;II)V

    return-void
.end method

.method public static notifyRamBoost(Ljava/lang/String;IZ)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/SmartBoostInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/am/SmartBoostInjector;->initInstance()V

    sget-object v0, Lcom/oneplus/android/server/am/SmartBoostInjector;->sSmartBoost:Lcom/oneplus/android/server/am/ISmartBoost;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/am/ISmartBoost;->notifyRamBoost(Ljava/lang/String;IZ)V

    return-void
.end method
