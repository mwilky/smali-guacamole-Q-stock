.class public Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;
.super Ljava/lang/Object;
.source "OnePlusSceneUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusSceneUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusActivityStack"
.end annotation


# instance fields
.field private mActivityStack:Lcom/android/server/wm/ActivityStack;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-static {p1, p2}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->init(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V

    return-void
.end method


# virtual methods
.method public final handleEvaluateGameMode(ZZ)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->handleEvaluateGameMode(ZZ)V

    return-void
.end method

.method public final handleEvaluateReadMode(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->handleEvaluateReadMode(I)V

    return-void
.end method

.method public final resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-static {p1, p3}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->startEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p3}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityRecord;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p3}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->stopEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final updateDisableSceneScreenEffectFlag(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->updateDisableSceneScreenEffectFlag(I)V

    return-void
.end method

.method public final updateSceneScreenEffectFlag(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->updateSceneScreenEffectFlag(I)V

    return-void
.end method
