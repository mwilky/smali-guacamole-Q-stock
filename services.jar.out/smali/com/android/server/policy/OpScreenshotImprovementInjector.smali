.class public Lcom/android/server/policy/OpScreenshotImprovementInjector;
.super Ljava/lang/Object;
.source "OpScreenshotImprovementInjector.java"


# static fields
.field public static final IS_SCREENSHOT_IMPROVEMENT_ENABLED:Z

.field private static sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb5

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->IS_SCREENSHOT_IMPROVEMENT_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/policy/IOpScreenshotImprovement;->init()V

    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->IS_SCREENSHOT_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenshotimprovement:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/IOpScreenshotImprovement;

    sput-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    :cond_0
    return-void
.end method

.method public static interceptAccessibilityShortcutChord(Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptAccessibilityShortcutChord(Z)V

    :cond_0
    return-void
.end method

.method public static interceptKeyBeforeDispatching(Landroid/view/KeyEvent;Z)Ljava/lang/Long;
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptKeyBeforeDispatching(Landroid/view/KeyEvent;Z)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V

    :cond_0
    return-void
.end method

.method public static interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    :cond_0
    return-void
.end method

.method public static interceptPowerKeyUp()V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptPowerKeyUp()V

    :cond_0
    return-void
.end method

.method public static interceptScreenshotChord()V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->initInstance()V

    sget-object v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->sOpScreenshotImprovement:Lcom/android/server/policy/IOpScreenshotImprovement;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/policy/IOpScreenshotImprovement;->interceptScreenshotChord()V

    :cond_0
    return-void
.end method
