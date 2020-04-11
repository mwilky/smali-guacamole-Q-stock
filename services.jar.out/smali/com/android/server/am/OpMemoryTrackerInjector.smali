.class public Lcom/android/server/am/OpMemoryTrackerInjector;
.super Ljava/lang/Object;
.source "OpMemoryTrackerInjector.java"


# static fields
.field private static final ENABLED:Z

.field public static final TAG:Ljava/lang/String; = "OpMemoryTrackerInjector"

.field private static sDebug:Z

.field private static sOpMemoryTracker:Lcom/android/server/am/IOpMemoryTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OpMemoryTrackerInjector;->sDebug:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1b

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OpMemoryTrackerInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfNeedReport(I)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpMemoryTrackerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpMemoryTrackerInjector;->initialization()V

    sget-object v0, Lcom/android/server/am/OpMemoryTrackerInjector;->sOpMemoryTracker:Lcom/android/server/am/IOpMemoryTracker;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpMemoryTracker;->checkIfNeedReport(I)V

    :cond_1
    return-void
.end method

.method public static checkIfNeedReport(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpMemoryTrackerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpMemoryTrackerInjector;->initialization()V

    sget-object v0, Lcom/android/server/am/OpMemoryTrackerInjector;->sOpMemoryTracker:Lcom/android/server/am/IOpMemoryTracker;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpMemoryTracker;->checkIfNeedReport(Lcom/android/server/am/ProcessRecord;)V

    :cond_1
    return-void
.end method

.method public static initAms(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OpMemoryTrackerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/OpMemoryTrackerInjector;->initialization()V

    sget-object v0, Lcom/android/server/am/OpMemoryTrackerInjector;->sOpMemoryTracker:Lcom/android/server/am/IOpMemoryTracker;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpMemoryTracker;->initAms(Lcom/android/server/am/ActivityManagerService;)V

    :cond_1
    return-void
.end method

.method private static initialization()V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpMemoryTrackerInjector;->sOpMemoryTracker:Lcom/android/server/am/IOpMemoryTracker;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_memorytracker:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpMemoryTracker;

    sput-object v0, Lcom/android/server/am/OpMemoryTrackerInjector;->sOpMemoryTracker:Lcom/android/server/am/IOpMemoryTracker;

    :cond_0
    return-void
.end method
