.class public Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "OpNotificationPanelView.java"


# static fields
.field protected static final DEBUG:Z

.field protected static TAG:Ljava/lang/String;

.field public static mLastCameraGestureLaunchSource:I


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field protected mNeedShowOTAWizard:Z

.field private mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

.field protected final mUpdateCameraStateTimeout:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->DEBUG:Z

    const-string v0, "OpNotificationPanelView"

    sput-object v0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLastCameraGestureLaunchSource:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mNeedShowOTAWizard:Z

    new-instance p1, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$1;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)V

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mUpdateCameraStateTimeout:Ljava/lang/Runnable;

    sget-object p1, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string p2, "OpNotificationPanelView init "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class p1, Lcom/oneplus/notification/OpNotificationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/notification/OpNotificationController;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)Landroid/util/BoostFramework;
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->getPerf()Landroid/util/BoostFramework;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method private getKeyguardClockPositionAlgorithm()Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-string v1, "mClockPositionAlgorithm"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    return-object p0
.end method

.method private getKeyguardShowing()Z
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-string v1, "mKeyguardShowing"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private getKeyguardStatusView()Lcom/android/keyguard/KeyguardStatusView;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-string v1, "mKeyguardStatusView"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    return-object p0
.end method

.method private getNotificationStackScroller()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-string v1, "mNotificationStackScroller"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method private getPerf()Landroid/util/BoostFramework;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    const-string v1, "mPerf"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/BoostFramework;

    return-object p0
.end method

.method private isFingerprintAuthenticating()Z
    .locals 0

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isFingerprintAuthenticating()Z

    move-result p0

    return p0
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 5

    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "isForegroundApp"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get null when calling isForegroundApp pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public static synthetic lambda$_rP6BrmKtdeCPMu_OG1pDyyLySo(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->run()V

    return-void
.end method

.method private run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getOpStatusBarView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getOpStatusBarView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->highlight_hint_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_0
    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HighlightHintInfo target[0]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget v0, v1, v3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHighlightHintVisualX:I

    :cond_1
    return-void
.end method

.method private setAnimator(Landroid/animation/ValueAnimator;)V
    .locals 5

    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/animation/ValueAnimator;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setAnimator"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected createHeightAnimatorForBiometricUnlock()Landroid/animation/ValueAnimator;
    .locals 8

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->getKeyguardClockPositionAlgorithm()Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardClockPositionAlgorithm;->opGetMaxClockY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->getKeyguardClockPositionAlgorithm()Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardClockPositionAlgorithm;->opGetClockY()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    sub-float v0, v1, v0

    sub-float v0, v3, v0

    sub-float/2addr v1, v2

    sub-float/2addr v3, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f19999a    # 0.6f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5, v4, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeActive()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x96

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_0
    sget-object v5, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createHeightAnimatorForBiometricUnlock startHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " endHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " isPreventViewShow:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$2;

    invoke-direct {v4, p0, v3, v0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$2;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;FF)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$3;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$3;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v1
.end method

.method protected fullyExpandedClearAllVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getClearAllHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getMaxPanelHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNotificationAppearAnimation()Landroid/animation/AnimatorSet;
    .locals 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v3, [F

    fill-array-data v7, :array_1

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v3, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v6, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$4;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$4;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x42480000    # 50.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected getOpeningHeight()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getOverExpansionAmount()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getOverExpansionPixels()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected hasConflictingGestures()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected initOpBottomArea()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mNeedShowOTAWizard:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->setShowOTAWizard(Z)V

    return-void
.end method

.method public isCameraForeground()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->resolveCameraIntent()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->isForegroundApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.oneplus.gallery"

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->isForegroundApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected isClearAllVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isClosingWithAlphaFadeOut()Z
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-string v1, "mClosingWithAlphaFadeOut"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method protected isInContentBounds(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isPanelVisibleBecauseOfHeadsUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isTrackingBlocked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->getNotificationStackScroller()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->getNotificationStackScroller()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->isFingerprintAuthenticating()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeActive()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string v0, "onDoubleTap to sleep"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected onHeightUpdated(F)V
    .locals 0

    return-void
.end method

.method protected onMiddleClicked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected opFlingToHeightAnimatorForBiometricUnlock()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->createHeightAnimatorForBiometricUnlock()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public resetViews(Z)V
    .locals 0

    return-void
.end method

.method protected setOverExpansion(FZ)V
    .locals 0

    return-void
.end method

.method public setShowOTAWizard(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mNeedShowOTAWizard:Z

    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowOTAWizard, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mNeedShowOTAWizard:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setShowOTAWizard(Z)V

    return-void
.end method

.method public setUnlockAlpha(F)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->shouldApplySpeedUpPolicy()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->getKeyguardShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->getKeyguardStatusView()Lcom/android/keyguard/KeyguardStatusView;

    move-result-object v4

    if-eqz v0, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/GridLayout;->setVisibility(I)V

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->getNotificationStackScroller()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->resetSpeedUpPolicy()V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_7
    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setUpHighlightHintInfo()V
    .locals 4

    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->showOvalLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpNotificationPanelView$_rP6BrmKtdeCPMu_OG1pDyyLySo;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpNotificationPanelView$_rP6BrmKtdeCPMu_OG1pDyyLySo;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected shouldGestureIgnoreXTouchSlop(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected shouldUseDismissingAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected skipOnTouchEvent()Z
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    invoke-virtual {p0}, Lcom/oneplus/notification/OpNotificationController;->isPanelDisabledInBrickMode()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string v0, "Skip onTouchEvent by BrickMode"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected updateLaunchingCameraState(ZI)V
    .locals 3

    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchCamera, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/OpFacelockController;->isFacelockRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput p2, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLastCameraGestureLaunchSource:I

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mUpdateCameraStateTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateLaunchingCameraState(Z)V

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mUpdateCameraStateTimeout:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->forceHideBouncer()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->notifyCameraLaunching(Ljava/lang/String;)Z

    return-void
.end method

.method protected updateOpLockIcon()V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->getKeyguardStatusView()Lcom/android/keyguard/KeyguardStatusView;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string v0, " updateOpLockIcon statusBarWindow is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->getLockIconContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-nez v2, :cond_2

    sget v2, Lcom/android/systemui/R$id;->lock_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/LockIcon;

    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    :cond_2
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string v0, " updateOpLockIcon complete"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_0
    if-nez v0, :cond_6

    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string v0, " updateOpLockIcon statusbarViewContainer is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-nez p0, :cond_7

    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string v0, " updateOpLockIcon lockIcon is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void

    :cond_8
    :goto_2
    if-nez v0, :cond_9

    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string v0, " updateOpLockIcon keyguardStatusView is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez p0, :cond_a

    sget-object p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->TAG:Ljava/lang/String;

    const-string v0, " updateOpLockIcon mStatusBar is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    return-void
.end method
