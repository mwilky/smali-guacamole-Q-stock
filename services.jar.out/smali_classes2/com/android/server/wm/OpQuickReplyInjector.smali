.class public Lcom/android/server/wm/OpQuickReplyInjector;
.super Ljava/lang/Object;
.source "OpQuickReplyInjector.java"


# static fields
.field public static final IS_QUICK_REPLY_ENABLED:Z

.field private static final TAG:Ljava/lang/String;

.field private static sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/wm/OpQuickReplyInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpQuickReplyInjector;->IS_QUICK_REPLY_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canReuseActivity(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .locals 6

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget v1, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    const/4 v3, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    const-string v4, "force support freeform in reuse"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    :cond_0
    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v1, v3}, Lcom/android/server/wm/IOpQuickReply;->setQuickReplyRunning(Z)V

    iget-object v1, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v4}, Lcom/android/server/wm/IOpQuickReply;->getImBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "starting reuse activity mBounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static checkAndAddWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->checkAndAddWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V

    :cond_0
    return-void
.end method

.method public static checkAndRemoveWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->checkAndRemoveWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V

    :cond_0
    return-void
.end method

.method public static enableFreeFormWindowManagement(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    .locals 2

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    const-string v1, "force support freeform"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    :cond_0
    return-void
.end method

.method public static exitQuicReplyOnCameraStart(Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/IOpQuickReply;->isInCameraActivityList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->exitQuickReply()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    const-string v1, "exitQuickReply for camera activity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static exitQuickReply()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->exitQuickReply()V

    :cond_0
    return-void
.end method

.method public static focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    :cond_0
    return-void
.end method

.method public static getIMDimAmount()F
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->getIMDimAmount()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getImBound()Landroid/graphics/Rect;
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->getImBound()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_quickreply:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getQuickReplyList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->getQuickReplyList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getQuickReplyOrientation(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/AppWindowToken;)I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->getQuickReplyOrientation(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/AppWindowToken;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static initInstance()V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpQuickReplyInjector;->IS_QUICK_REPLY_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_quickreply:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpQuickReply;

    sput-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    :cond_0
    return-void
.end method

.method public static isForceShowStatusBar(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isForceShowStatusBar(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isInCameraActivityList(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isInCameraActivityList(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isInIMEKilledList(I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isInIMEKilledList(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyExiting()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyExiting()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyIM(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyIM(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyIME(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyIMEWin(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIMEWin(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyIMWin(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIMWin(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyRunning()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static killApplicationProcess(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ActivityInfo;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->killApplicationProcess(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ActivityInfo;)V

    :cond_0
    return-void
.end method

.method public static notifyImeShow(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->notifyImeShow(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static notifyImeVisibilityChanged(ZI)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->notifyImeVisibilityChanged(ZI)V

    :cond_0
    return-void
.end method

.method public static onConfigChanged()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->onConfigChanged()V

    :cond_0
    return-void
.end method

.method public static resetBoundsIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)Z
    .locals 8

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    const/16 v2, 0xa

    const-string v3, " caller:"

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->mIsQuickReplyApp:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v4}, Lcom/android/server/wm/IOpQuickReply;->getImBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "force setBounds from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return v1

    :cond_1
    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force setBounds skipped for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_2
    return v1
.end method

.method public static resumeDefaultTopActivity(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResumed activity to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "focusedNotQuickReply"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    :cond_0
    return-void
.end method

.method public static setAMandWM(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->setAMandWM(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V

    :cond_0
    return-void
.end method

.method public static setDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->setDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V

    :cond_0
    return-void
.end method

.method public static setKeyguardDone(Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->setKeyguardDone(Z)V

    :cond_0
    return-void
.end method

.method public static setQuickReplyRunning(Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->setQuickReplyRunning(Z)V

    :cond_0
    return-void
.end method

.method public static setResumedApp(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->setResumedApp(Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    return-void
.end method

.method public static shouldForceResizeTask(ILandroid/content/ComponentName;)Z
    .locals 3

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force init resizible for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static skipTopBoundsAdjust(Landroid/content/ComponentName;I)Z
    .locals 3

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skipTopBoundsAdjust for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static systemReady()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->systemReady()V

    :cond_0
    return-void
.end method

.method public static updateIMEFrameIfNeeded(Ljava/lang/String;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/server/wm/IOpQuickReply;->updateIMEFrameIfNeeded(Ljava/lang/String;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public static updateLaunchParams(Landroid/app/ActivityOptions;Ljava/lang/String;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .locals 3

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/wm/IOpQuickReply;->setQuickReplyRunning(Z)V

    iget-object v0, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v1}, Lcom/android/server/wm/IOpQuickReply;->getImBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting new activity mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
