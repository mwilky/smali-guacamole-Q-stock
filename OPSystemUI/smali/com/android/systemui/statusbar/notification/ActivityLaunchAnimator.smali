.class public Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;,
        Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;,
        Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;
    }
.end annotation


# instance fields
.field private mAnimationPending:Z

.field private mAnimationRunning:Z

.field private mCallback:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;

.field private mIsLaunchForActivity:Z

.field private final mNotificationContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field private final mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private final mWindowCornerRadius:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$l5Gj6YM2XO6z1WFQpGTriWePKVk;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$l5Gj6YM2XO6z1WFQpGTriWePKVk;-><init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mNotificationContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mCallback:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/res/Resources;)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mWindowCornerRadius:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mNotificationContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mAnimationRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mCallback:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setAnimationPending(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mWindowCornerRadius:F

    return p0
.end method

.method private setAnimationPending(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mAnimationPending:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setExpandAnimationPending(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getLaunchAnimation(Landroid/view/View;Z)Landroid/view/RemoteAnimationAdapter;
    .locals 7

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mCallback:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;->areLaunchAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;-><init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    new-instance p0, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v3, 0x190

    const-wide/16 v5, 0xfa

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAnimationPending()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mAnimationPending:Z

    return p0
.end method

.method public isAnimationRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mAnimationRunning:Z

    return p0
.end method

.method public isLaunchForActivity()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mIsLaunchForActivity:Z

    return p0
.end method

.method public synthetic lambda$new$0$ActivityLaunchAnimator()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setAnimationPending(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mCallback:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;->onExpandAnimationTimedOut()V

    return-void
.end method

.method public setLaunchResult(IZ)V
    .locals 0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mIsLaunchForActivity:Z

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mCallback:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;->areLaunchAnimationsEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setAnimationPending(Z)V

    return-void
.end method
