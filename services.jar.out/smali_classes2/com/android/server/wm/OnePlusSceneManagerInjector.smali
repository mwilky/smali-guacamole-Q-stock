.class public Lcom/android/server/wm/OnePlusSceneManagerInjector;
.super Ljava/lang/Object;
.source "OnePlusSceneManagerInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/OnePlusSceneManagerInjector$OemSceneModeActivityStack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OnePlusSceneManagerInjector"

.field private static sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableSceneButtonLockFeature(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->disableSceneButtonLockFeature(Landroid/content/Context;Z)V

    return-void
.end method

.method public static endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusSceneManager;->endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method public static handleEvaluateGameMode(ZZ)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->handleEvaluateGameMode(ZZ)V

    return-void
.end method

.method public static handleEvaluateReadMode(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusSceneManager;->handleEvaluateReadMode(I)V

    return-void
.end method

.method public static handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOnePlusSceneManager;->handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V

    return-void
.end method

.method public static init(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->initOemSceneModeActivityStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V

    return-void
.end method

.method public static initNetworkPolicy(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusSceneManager;->initNetworkPolicy(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method

.method private static initOnePlusSceneManager()V
    .locals 1

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_scenemode:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOnePlusSceneManager;

    sput-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    :cond_0
    return-void
.end method

.method public static packageChanged(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->packageChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public static putSceneMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->putSceneMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static sendReadModeNotification(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusSceneManager;->sendReadModeNotification(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static shouldIgnoreSceneEvaluation(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->shouldIgnoreSceneEvaluation(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0
.end method

.method public static startEvaluateGameMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->startEvaluateGameMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static startEvaluateReadingMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->startEvaluateReadingMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static startEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->startEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static startUserSwitching()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0}, Lcom/android/server/wm/IOnePlusSceneManager;->startUserSwitching()V

    return-void
.end method

.method public static stopEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->stopEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static updateDisableSceneScreenEffectFlag(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusSceneManager;->updateDisableSceneScreenEffectFlag(I)V

    return-void
.end method

.method public static updateSceneScreenEffectFlag(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusSceneManager;->updateSceneScreenEffectFlag(I)V

    return-void
.end method

.method public static updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
