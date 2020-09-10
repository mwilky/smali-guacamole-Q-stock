.class public Lcom/android/server/wm/gck;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOnePlusSceneManager;


# instance fields
.field public uR:Lcom/android/server/wm/wtn$zta;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableSceneButtonLockFeature(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/wm/wtn;->disableSceneButtonLockFeature(Landroid/content/Context;Z)V

    return-void
.end method

.method public endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/wtn;->endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method public handleEvaluateGameMode(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gck;->uR:Lcom/android/server/wm/wtn$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/wtn$zta;->handleEvaluateGameMode(ZZ)V

    return-void
.end method

.method public handleEvaluateReadMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gck;->uR:Lcom/android/server/wm/wtn$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/wtn$zta;->handleEvaluateReadMode(I)V

    return-void
.end method

.method public handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/wtn;->handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V

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

    invoke-static {}, Lcom/android/server/wm/wtn;->ee()Lcom/android/server/wm/wtn$zta;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/gck;->uR:Lcom/android/server/wm/wtn$zta;

    iget-object p0, p0, Lcom/android/server/wm/gck;->uR:Lcom/android/server/wm/wtn$zta;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/wtn$zta;->init(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V

    return-void
.end method

.method public packageChanged(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gck;->uR:Lcom/android/server/wm/wtn$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/wtn$zta;->packageChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public putSceneMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gck;->uR:Lcom/android/server/wm/wtn$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/wtn$zta;->putSceneMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public sendReadModeNotification(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gck;->uR:Lcom/android/server/wm/wtn$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/wtn$zta;->sendReadModeNotification(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public shouldIgnoreSceneEvaluation(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/wm/wtn;->shouldIgnoreSceneEvaluation(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public startEvaluateGameMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gck;->uR:Lcom/android/server/wm/wtn$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/wtn$zta;->startEvaluateGameMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public startEvaluateReadingMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gck;->uR:Lcom/android/server/wm/wtn$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/wtn$zta;->startEvaluateReadingMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public startEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gck;->uR:Lcom/android/server/wm/wtn$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/wtn$zta;->startEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public startUserSwitching()V
    .locals 0

    invoke-static {}, Lcom/android/server/wm/wtn;->startUserSwitching()V

    return-void
.end method

.method public stopEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gck;->uR:Lcom/android/server/wm/wtn$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/wtn$zta;->stopEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public updateDisableSceneScreenEffectFlag(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gck;->uR:Lcom/android/server/wm/wtn$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/wtn$zta;->updateDisableSceneScreenEffectFlag(I)V

    return-void
.end method

.method public updateSceneScreenEffectFlag(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gck;->uR:Lcom/android/server/wm/wtn$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/wtn$zta;->updateSceneScreenEffectFlag(I)V

    return-void
.end method

.method public updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gck;->uR:Lcom/android/server/wm/wtn$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/wtn$zta;->updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
