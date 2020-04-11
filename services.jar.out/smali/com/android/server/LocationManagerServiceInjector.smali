.class public Lcom/android/server/LocationManagerServiceInjector;
.super Ljava/lang/Object;
.source "LocationManagerServiceInjector.java"


# static fields
.field private static final AGGRESSIVE_DOZE_ENABLED:Z

.field private static final DEBUG:Z

.field private static final DEBUG_INJECTOR:Z

.field private static final TAG:Ljava/lang/String; = "LocationManagerServiceInjector"

.field private static opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->DEBUG:Z

    const-string v0, "LocationManagerServiceInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->DEBUG_INJECTOR:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->AGGRESSIVE_DOZE_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prepare(Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    const-string v0, "LocationManagerServiceInjector"

    const-string/jumbo v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->AGGRESSIVE_DOZE_ENABLED:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_aggressive_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAggressiveDoze;

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    :cond_1
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/IOpAggressiveDoze;->prepareLocationManagerService(Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V

    :cond_2
    return-void
.end method
