.class public Lcom/android/systemui/statusbar/phone/RotationButtonController;
.super Ljava/lang/Object;
.source "RotationButtonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;,
        Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;
    }
.end annotation


# instance fields
.field private mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private final mCancelPendingRotationProposal:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mHoveringRotationSuggestion:Z

.field private mIsNavigationBarShowing:Z

.field private mLastRotationSuggestion:I

.field private mListenersRegistered:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPendingRotationSuggestion:Z

.field private final mRemoveRotationProposal:Ljava/lang/Runnable;

.field private mRotWatcherListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRotateHideAnimator:Landroid/animation/Animator;

.field private final mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

.field private mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

.field private mStyleRes:I

.field private mTaskStackListener:Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

.field private final mViewRippler:Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/android/systemui/statusbar/phone/RotationButton;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;Lcom/android/systemui/statusbar/phone/RotationButtonController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mViewRippler:Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mListenersRegistered:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$9GntNFTDdKoyCtcSVI_eBCW3dMQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$9GntNFTDdKoyCtcSVI_eBCW3dMQ;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$rLt402gKIdgNcqykKz16VIeLAMM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$rLt402gKIdgNcqykKz16VIeLAMM;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/RotationButtonController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController$1;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/RotationButton;->setRotationButtonController(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    iput p2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mStyleRes:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mIsNavigationBarShowing:Z

    const-class p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    const-class p1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    new-instance p1, Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;Lcom/android/systemui/statusbar/phone/RotationButtonController$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$nGgIS1iCjy5uWWIfPZ9LUPKtUUc;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$nGgIS1iCjy5uWWIfPZ9LUPKtUUc;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/phone/RotationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$ITAepcsPx2pDX6xNt-4OEwYvoRc;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$ITAepcsPx2pDX6xNt-4OEwYvoRc;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/phone/RotationButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/RotationButtonController;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->shouldOverrideUserLockPrefs(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Ljava/util/function/Consumer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotWatcherListener:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Lcom/android/systemui/statusbar/phone/RotationButton;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    return-object p0
.end method

.method private computeRotationProposalTimeout()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mHoveringRotationSuggestion:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x3e80

    goto :goto_0

    :cond_0
    const/16 p0, 0x1388

    :goto_0
    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0
.end method

.method static hasDisable2RotateSuggestionFlag(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private incrementNumAcceptedRotationSuggestionsIfNeeded()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "num_rotation_suggestions_accepted"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private isRotateSuggestionIntroduced()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "num_rotation_suggestions_accepted"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x3

    if-lt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isRotationAnimationCCW(II)Z
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-nez p1, :cond_1

    if-ne p2, v1, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x3

    if-nez p1, :cond_2

    if-ne p2, v2, :cond_2

    return v0

    :cond_2
    if-ne p1, v0, :cond_3

    if-nez p2, :cond_3

    return v0

    :cond_3
    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    return p0

    :cond_4
    if-ne p1, v0, :cond_5

    if-ne p2, v2, :cond_5

    return v0

    :cond_5
    if-ne p1, v1, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    if-ne p1, v1, :cond_7

    if-ne p2, v0, :cond_7

    return v0

    :cond_7
    if-ne p1, v1, :cond_8

    if-ne p2, v2, :cond_8

    return p0

    :cond_8
    if-ne p1, v2, :cond_9

    if-nez p2, :cond_9

    return p0

    :cond_9
    if-ne p1, v2, :cond_a

    if-ne p2, v0, :cond_a

    return v0

    :cond_a
    if-ne p1, v2, :cond_b

    if-ne p2, v1, :cond_b

    return v0

    :cond_b
    return p0
.end method

.method public static synthetic lambda$ITAepcsPx2pDX6xNt-4OEwYvoRc(Lcom/android/systemui/statusbar/phone/RotationButtonController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onRotateSuggestionHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$nGgIS1iCjy5uWWIfPZ9LUPKtUUc(Lcom/android/systemui/statusbar/phone/RotationButtonController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onRotateSuggestionClick(Landroid/view/View;)V

    return-void
.end method

.method private onRotateSuggestionClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x507

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->incrementNumAcceptedRotationSuggestionsIfNeeded()V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mLastRotationSuggestion:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotationLockedAtAngle(I)V

    return-void
.end method

.method private onRotateSuggestionHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mHoveringRotationSuggestion:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->rescheduleRotationTimeout(Z)V

    return p2
.end method

.method private onRotationSuggestionsDisabled()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private rescheduleRotationTimeout(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/RotationButton;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->computeRotationProposalTimeout()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private shouldOverrideUserLockPrefs(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showAndLogRotationSuggestion()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->rescheduleRotationTimeout(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x508

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    return-void
.end method


# virtual methods
.method addRotationCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotWatcherListener:Ljava/util/function/Consumer;

    return-void
.end method

.method getRotationButton()Lcom/android/systemui/statusbar/phone/RotationButton;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    return-object p0
.end method

.method getStyleRes()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mStyleRes:I

    return p0
.end method

.method public isRotationLocked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$RotationButtonController()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void
.end method

.method public synthetic lambda$new$1$RotationButtonController()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mPendingRotationSuggestion:Z

    return-void
.end method

.method onDisable2FlagChanged(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->hasDisable2RotateSuggestionFlag(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onRotationSuggestionsDisabled()V

    :cond_0
    return-void
.end method

.method onNavigationBarWindowVisibilityChange(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mIsNavigationBarShowing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mIsNavigationBarShowing:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mPendingRotationSuggestion:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->showAndLogRotationSuggestion()V

    :cond_0
    return-void
.end method

.method onRotationProposal(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/RotationButton;->acceptRotationProposal()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void

    :cond_1
    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void

    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mLastRotationSuggestion:I

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->isRotationAnimationCCW(II)Z

    move-result p1

    if-eqz p2, :cond_5

    const/4 p3, 0x2

    if-ne p2, p3, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    sget p1, Lcom/android/systemui/R$style;->RotateButtonCCWStart0:I

    goto :goto_1

    :cond_4
    sget p1, Lcom/android/systemui/R$style;->RotateButtonCWStart0:I

    goto :goto_1

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    sget p1, Lcom/android/systemui/R$style;->RotateButtonCCWStart90:I

    goto :goto_1

    :cond_6
    sget p1, Lcom/android/systemui/R$style;->RotateButtonCWStart90:I

    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mStyleRes:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/RotationButton;->updateIcon()V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mIsNavigationBarShowing:Z

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->showAndLogRotationSuggestion()V

    goto :goto_2

    :cond_7
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mPendingRotationSuggestion:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    const-wide/16 p2, 0x4e20

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method

.method registerListeners()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mListenersRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mListenersRegistered:Z

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method setDarkIntensity(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButton;->setDarkIntensity(F)V

    return-void
.end method

.method setRotateSuggestionButtonState(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    return-void
.end method

.method setRotateSuggestionButtonState(ZZ)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/RotationButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/RotationButton;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/RotationButton;->getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mPendingRotationSuggestion:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->resetAnimation()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->startAnimation()V

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->isRotateSuggestionIntroduced()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mViewRippler:Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;->start(Landroid/view/View;)V

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/RotationButton;->show()Z

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mViewRippler:Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;->stop()V

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/RotationButton;->hide()Z

    return-void

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput p2, p1, v2

    const-string p2, "alpha"

    invoke-static {v0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/systemui/statusbar/phone/RotationButtonController$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController$2;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void
.end method

.method setRotationLockedAtAngle(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(ZI)V

    return-void
.end method

.method unregisterListeners()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mListenersRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mListenersRegistered:Z

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
