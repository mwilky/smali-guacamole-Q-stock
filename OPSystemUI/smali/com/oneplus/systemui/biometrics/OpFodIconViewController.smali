.class public Lcom/oneplus/systemui/biometrics/OpFodIconViewController;
.super Ljava/lang/Object;
.source "OpFodIconViewController.java"

# interfaces
.implements Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

.field private mContext:Landroid/content/Context;

.field private mContextResolver:Landroid/content/ContentResolver;

.field private mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

.field private mGoingToSleep:Z

.field private mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

.field private mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

.field private mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

.field private mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

.field private mIsScreenTurningOn:Z

.field private mIsWakingUp:Z

.field mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSettingsObserver:Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;

.field private mShowingKeyguard:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mTimeoutAnimator:Landroid/animation/ValueAnimator;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$1;-><init>(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;-><init>(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$3;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$3;-><init>(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$id;->op_fingerprint_icon_white:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_icon:I

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_icon_disable:I

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_icon_dim:I

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    iput-object p4, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContextResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;-><init>(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mSettingsObserver:Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mSettingsObserver:Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;->register()V

    :cond_0
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->addFingerprintStateChangeListener(Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$002(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIsWakingUp:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mGoingToSleep:Z

    return p1
.end method

.method static synthetic access$302(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIsScreenTurningOn:Z

    return p1
.end method

.method static synthetic access$402(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mShowingKeyguard:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContextResolver:Landroid/content/ContentResolver;

    return-object p0
.end method


# virtual methods
.method public handleUpdateIconVisibility(Z)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    :cond_0
    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const-string v4, "OpFodIconViewController"

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    iget-object v6, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v6

    iget-object v7, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v7

    iget-object v8, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isImeShow()Z

    move-result v8

    iget-object v9, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v9

    iget-object v10, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v10

    iget-object v11, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v11

    iget-object v12, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v12}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isQSExpanded()Z

    move-result v12

    iget-object v13, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v13}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeActivte()Z

    move-result v13

    iget-object v14, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v14

    iget-object v15, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v15}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isLaunchingCamera()Z

    move-result v15

    iget-object v3, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isLaunchingLeftAffordance()Z

    move-result v3

    iget-object v5, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v5

    move/from16 v16, v11

    iget-object v11, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v11

    move-object/from16 v17, v4

    iget-object v4, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v4

    move/from16 v18, v4

    iget-object v4, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v4}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isFaceUnlocked()Z

    move-result v4

    move/from16 v19, v14

    iget-object v14, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isShuttingDown()Z

    move-result v14

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v20

    move/from16 v21, v14

    invoke-virtual/range {v20 .. v20}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFromBiometricPrompt()Z

    move-result v14

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v20

    move/from16 v22, v14

    invoke-virtual/range {v20 .. v20}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isBiometricPromptReadyToShow()Z

    move-result v14

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v20

    move/from16 v23, v14

    invoke-virtual/range {v20 .. v20}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintSuspended()Z

    move-result v14

    move/from16 v20, v14

    if-eqz v5, :cond_2

    iget-object v14, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v14

    if-eqz v14, :cond_2

    move/from16 v24, v5

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    move/from16 v24, v5

    const/4 v14, 0x0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v13

    const-string/jumbo v13, "updateIconVisibility: fp client = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getCurrentOwner()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", isOwnerKeyguard = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", forceHide = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isBouncer = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isImeShow = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", goingToSleep = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mGoingToSleep:Z

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", screenOn = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isUnlockAllowed = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", interactive = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", keyguard visible = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mShowingKeyguard:Z

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isDreaming = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isKeyguardShowingAndOccluded = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isFaceUnlocked = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isSimPinSecure = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isQSExpanded = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isLaunchingCamera = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", LeftAffordance:"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isPreventActivte = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, v25

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v25, v10

    const-string v10, ", isShowing = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v24

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v24, v6

    const-string v6, ", isLockOut = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isFacelockRecognizing = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsScreenTurningOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIsScreenTurningOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsWakingUp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIsWakingUp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isShuttingDown = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v21

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v21, v4

    const-string v4, ", isFromBiometricPrompt = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v22

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v22, v8

    const-string v8, ", isBiometricPromptReadyToShow = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v23

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v23, v12

    const-string v12, ", isFpSuspended = "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v20

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", visibility = "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getVisibility()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v12, v17

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x4

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    const-string v0, "1"

    goto/16 :goto_3

    :cond_3
    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isAuthenticateSuccess()Z

    move-result v1

    if-nez v1, :cond_16

    if-eqz v6, :cond_4

    goto/16 :goto_2

    :cond_4
    if-eqz v4, :cond_5

    if-nez v8, :cond_5

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    const-string v0, "9"

    goto/16 :goto_3

    :cond_5
    const/16 v1, 0x8

    if-nez v2, :cond_6

    iget-boolean v4, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mGoingToSleep:Z

    if-eqz v4, :cond_7

    :cond_6
    if-eqz v14, :cond_7

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v7, :cond_15

    :cond_7
    if-nez v9, :cond_15

    if-nez v15, :cond_15

    if-nez v3, :cond_15

    if-eqz v2, :cond_8

    if-nez v10, :cond_8

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v11, :cond_15

    iget-boolean v3, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIsWakingUp:Z

    if-nez v3, :cond_15

    :cond_8
    if-eqz v2, :cond_9

    if-eqz v11, :cond_9

    if-nez v10, :cond_9

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isForceShowClient()Z

    move-result v3

    if-nez v3, :cond_15

    :cond_9
    if-eqz v2, :cond_b

    if-nez v13, :cond_b

    if-eqz v23, :cond_a

    if-nez v7, :cond_a

    if-nez v16, :cond_15

    :cond_a
    if-nez v22, :cond_15

    :cond_b
    if-eqz v20, :cond_c

    goto/16 :goto_1

    :cond_c
    if-eqz v21, :cond_d

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    const-string v0, "4"

    goto/16 :goto_3

    :cond_d
    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    const-string v0, "5"

    goto/16 :goto_3

    :cond_e
    if-nez v24, :cond_f

    if-nez v18, :cond_f

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v2, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v2, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v0, "6"

    goto/16 :goto_3

    :cond_f
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    const-string v0, "7"

    goto/16 :goto_3

    :cond_10
    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_14

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mShowingKeyguard:Z

    if-eqz v1, :cond_11

    if-eqz v19, :cond_11

    if-nez v11, :cond_11

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    const-string v0, "8-0"

    goto :goto_3

    :cond_11
    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mShowingKeyguard:Z

    if-nez v1, :cond_12

    if-nez v25, :cond_12

    if-nez v1, :cond_14

    if-eqz v7, :cond_14

    :cond_12
    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v0, "8-1"

    goto :goto_3

    :cond_13
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v0, "8-2"

    goto :goto_3

    :cond_14
    const-string v0, "0"

    goto :goto_3

    :cond_15
    :goto_1
    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v2, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v2, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v2, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v0, "3"

    goto :goto_3

    :cond_16
    :goto_2
    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    const-string v0, "2"

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caseLog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    :goto_4
    move-object v12, v4

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not update when icon null, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    if-nez v3, :cond_18

    const/4 v3, 0x1

    goto :goto_5

    :cond_18
    move v3, v2

    :goto_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    if-nez v0, :cond_19

    const/4 v2, 0x1

    :cond_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleUpdateLayoutDimension()V
    .locals 4

    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_0

    sget v2, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_2k:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_1080p:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v2, v0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->updateLayoutDimension(Z)V

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v2, v0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->updateLayoutDimension(Z)V

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->updateLayoutDimension(Z)V

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_2k:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_1080p:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public onBrightnessChange()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->onBrightnessChange()V

    :cond_0
    return-void
.end method

.method public onFingerprintStateChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    return-void
.end method
