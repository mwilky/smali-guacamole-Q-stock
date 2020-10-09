.class public Lcom/android/server/wm/dma;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOnePlusSceneManager;


# instance fields
.field public IR:Lcom/android/server/wm/gck$zta;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableSceneButtonLockFeature(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/wm/gck;->disableSceneButtonLockFeature(Landroid/content/Context;Z)V

    return-void
.end method

.method public endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/gck;->endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method public handleEvaluateGameMode(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/dma;->IR:Lcom/android/server/wm/gck$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/gck$zta;->handleEvaluateGameMode(ZZ)V

    return-void
.end method

.method public handleEvaluateReadMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/dma;->IR:Lcom/android/server/wm/gck$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/gck$zta;->handleEvaluateReadMode(I)V

    return-void
.end method

.method public handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/gck;->handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V

    return-void
.end method

.method public initNetworkPolicy(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-static {}, Lcom/android/server/zta/you;->getInstance()Lcom/android/server/zta/you;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/zta/you;->initNetworkPolicy(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method

.method public initOemSceneModeActivityStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/gck;->fe()Lcom/android/server/wm/gck$zta;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/dma;->IR:Lcom/android/server/wm/gck$zta;

    iget-object p0, p0, Lcom/android/server/wm/dma;->IR:Lcom/android/server/wm/gck$zta;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/gck$zta;->init(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V

    return-void
.end method

.method public packageChanged(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/dma;->IR:Lcom/android/server/wm/gck$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/gck$zta;->packageChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public putSceneMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/dma;->IR:Lcom/android/server/wm/gck$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/gck$zta;->putSceneMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public sendReadModeNotification(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/dma;->IR:Lcom/android/server/wm/gck$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/gck$zta;->sendReadModeNotification(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public shouldIgnoreSceneEvaluation(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/wm/gck;->shouldIgnoreSceneEvaluation(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public startEvaluateGameMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/dma;->IR:Lcom/android/server/wm/gck$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/gck$zta;->startEvaluateGameMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public startEvaluateReadingMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/dma;->IR:Lcom/android/server/wm/gck$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/gck$zta;->startEvaluateReadingMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public startEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/dma;->IR:Lcom/android/server/wm/gck$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/gck$zta;->startEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public startUserSwitching()V
    .locals 0

    invoke-static {}, Lcom/android/server/wm/gck;->startUserSwitching()V

    return-void
.end method

.method public stopEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/dma;->IR:Lcom/android/server/wm/gck$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/gck$zta;->stopEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public updateDisableSceneScreenEffectFlag(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/dma;->IR:Lcom/android/server/wm/gck$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/gck$zta;->updateDisableSceneScreenEffectFlag(I)V

    return-void
.end method

.method public updateSceneScreenEffectFlag(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/dma;->IR:Lcom/android/server/wm/gck$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/gck$zta;->updateSceneScreenEffectFlag(I)V

    return-void
.end method

.method public updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/dma;->IR:Lcom/android/server/wm/gck$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/gck$zta;->updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
