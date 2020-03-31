.class public Lcom/oneplus/aod/OpAodWindowManager;
.super Ljava/lang/Object;
.source "OpAodWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;
    }
.end annotation


# instance fields
.field private mAodContainer:Landroid/view/View;

.field private mAodWindowView:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDozing:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsWakeAndUnlock:Z

.field private mIsWindowRemoved:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLSState:Lcom/oneplus/plugin/OpLsState;

.field private mPm:Landroid/os/IPowerManager;

.field private final mRemoveWindow:Ljava/lang/Runnable;

.field private mSettingsOberver:Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;

.field private mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private mUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWakingUpReason:Ljava/lang/String;

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;-><init>(Lcom/oneplus/aod/OpAodWindowManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mSettingsOberver:Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    new-instance v0, Lcom/oneplus/aod/OpAodWindowManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodWindowManager$1;-><init>(Lcom/oneplus/aod/OpAodWindowManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/oneplus/aod/OpAodWindowManager$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodWindowManager$2;-><init>(Lcom/oneplus/aod/OpAodWindowManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mRemoveWindow:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWm:Landroid/view/WindowManager;

    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mPm:Landroid/os/IPowerManager;

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mLSState:Lcom/oneplus/plugin/OpLsState;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mSettingsOberver:Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;->observe()V

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oneplus/aod/OpAodUtils;->init(Landroid/content/Context;I)V

    sget p1, Lcom/android/systemui/R$id;->op_aod_container:I

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodContainer:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAodWindowManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OpAodWindowManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mIsWakeAndUnlock:Z

    return p0
.end method

.method static synthetic access$202(Lcom/oneplus/aod/OpAodWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mIsWakeAndUnlock:Z

    return p1
.end method

.method static synthetic access$302(Lcom/oneplus/aod/OpAodWindowManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/OpAodWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodWindowManager;->removeAodWindow()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mSettingsOberver:Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;

    return-object p0
.end method

.method private getAodViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v0, 0x8ff

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x10

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    const/16 v1, 0x500

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-string v0, "OPAod"

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-object p0
.end method

.method private removeAodWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mIsWindowRemoved:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AodWindowManager"

    const-string v1, "aod remove window"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mIsWindowRemoved:Z

    return-void
.end method


# virtual methods
.method public getAodDisappearAnimation()Landroid/animation/AnimatorSet;
    .locals 9

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodContainer:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0x12c

    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    fill-array-data v8, :array_1

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v4, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/oneplus/aod/OpAodWindowManager$3;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpAodWindowManager$3;-><init>(Lcom/oneplus/aod/OpAodWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        -0x3d380000    # -100.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public isWakingAndUnlockByFP()Z
    .locals 1

    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "FINGERPRINT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onWakingAndUnlocking()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getWakingUpReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    const-string p0, "AodWindowManager"

    const-string v0, "onWakingAndUnlocking"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDozing()V
    .locals 5

    const-string v0, "AodWindowManager"

    const-string v1, "startDozing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mDozing:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mLSState:Lcom/oneplus/plugin/OpLsState;

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mDozing:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mIsWakeAndUnlock:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oneplus/aod/OpAodWindowManager;->mRemoveWindow:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v2, "mAodView has already been added to window, do not add it again."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodWindowManager;->getAodViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mIsWindowRemoved:Z

    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x700

    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public stopDozing()V
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mDozing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mDozing:Z

    iget-object v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->isShowingLiveWallpaper(Z)Z

    move-result v1

    xor-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStopDozing: mIsWakeAndUnlock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/aod/OpAodWindowManager;->mIsWakeAndUnlock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hasLockWallpaper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AodWindowManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStopDozing mWakingUpReason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string v4, "FINGERPRINT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "com.android.systemui:FailedAttempts"

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x5a

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string v4, "FINGERPRINT_WALLPAPER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v0, 0x64

    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aod remove window delay:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mRemoveWindow:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodWindowManager;->removeAodWindow()V

    :goto_2
    return-void
.end method

.method public unregisterCallback()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mSettingsOberver:Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
