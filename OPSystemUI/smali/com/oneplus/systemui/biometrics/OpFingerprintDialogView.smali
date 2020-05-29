.class public Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;
.super Landroid/widget/LinearLayout;
.source "OpFingerprintDialogView.java"

# interfaces
.implements Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;
    }
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z


# instance fields
.field private mAnimatingAway:Z

.field mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

.field private mContext:Landroid/content/Context;

.field private final mDialog:Landroid/widget/LinearLayout;

.field private mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

.field protected mDisplay:Landroid/view/Display;

.field private mDisplayWidth:F

.field private mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

.field private mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

.field private mHandler:Landroid/os/Handler;

.field private mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

.field private mLayout:Landroid/view/ViewGroup;

.field private mMainThreadhandler:Landroid/os/Handler;

.field mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

.field private mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

.field mPendingHideDialog:Z

.field private mPm:Landroid/os/PowerManager;

.field private mPressTimeoutRunnable:Ljava/lang/Runnable;

.field private mRealDisplaySize:Landroid/graphics/Point;

.field private mShowOnWindow:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMainThreadhandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mRealDisplaySize:Landroid/graphics/Point;

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$5;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$5;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$6;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$6;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->initHandler(Landroid/os/Looper;)V

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplayWidth:F

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mRealDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    sget v2, Lcom/android/systemui/R$layout;->op_fingerprint_view:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$layout;->op_fingerprint_high_light_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    invoke-virtual {v0, p2}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->setDialog(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-direct {v0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->addFingerprintStateChangeListener(Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;)V

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {p1, p2}, Lcom/oneplus/plugin/OpLsState;->setFpAnimationCtrl(Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;)V

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->dialog:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setFodDialogView(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyKeyguardDone(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyBrightnessChange()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnFacelockStateChanged(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnStrongAuthStateChanged(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnUserSwitching(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressModeFingerUp()V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->doFingerPressUpInternal()V

    return-void
.end method

.method static synthetic access$1902(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpFodIconViewController;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;ZF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateLayoutDimension(ZF)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnStartedWakingUp()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnFinishedGoingToSleep(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnKeyguardBouncerChanged(Z)V

    return-void
.end method

.method private doFingerPressUpInternal()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->removePressTimeOutMessage()V

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressModeFingerUp()V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMainThreadhandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleNotifyBrightnessChange()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->onBrightnessChange()V

    :cond_0
    return-void
.end method

.method private handleNotifyKeyguardDone(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNotifyKeyguardDone, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->onFpEventCancel()V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    const-string p1, "keyguard done"

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->hideFodDialogInner(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleOnFacelockStateChanged(I)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnFacelockStateChanged : type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintDialogView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->onFaceUnlocked()V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->onFpEventCancel()V

    return-void
.end method

.method private handleOnFinishedGoingToSleep(I)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnFinishedGoingToSleep: why= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintDialogView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p1, "finish going to sleep"

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldForceShowFod(Ljava/lang/String;)Z

    return-void
.end method

.method private handleOnKeyguardBouncerChanged(Z)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method private handleOnKeyguardVisibilityChanged(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "handleOnKeyguardVisibilityChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "keyguard visibility changed: show"

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldForceShowFod(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :goto_0
    return-void
.end method

.method private handleOnScreenTurnedOff()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "handleOnScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resetState()V

    const-string v0, "screen turned off"

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldForceShowFod(Ljava/lang/String;)Z

    return-void
.end method

.method private handleOnScreenTurnedOn()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "handleOnScreenTurnedOn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "screen turned on"

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldForceShowFod(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "update icon visibility while turned on."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_1
    return-void
.end method

.method private handleOnSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method private handleOnStartedWakingUp()V
    .locals 4

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    sget-boolean v2, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOnStartedWakingUp : ownerString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isKeyguardShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpFingerprintDialogView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    const-string v1, "start waking up"

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->hideFodDialogInner(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateAnimationResource()V

    return-void
.end method

.method private handleOnStrongAuthStateChanged(I)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStrongAuthStateChanged, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :cond_1
    return-void
.end method

.method private handleOnUserSwitching(I)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->resetState()V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->checkAnimationValueValid()V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateAnimationRes(Z)V

    :cond_0
    return-void
.end method

.method private handleUpdateLayoutDimension(ZF)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCutout()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplayWidth:F

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {p2}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateLayoutDimension()V

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {p2, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateLayoutDimension(Z)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->handleConfigurationChange()V

    :cond_1
    return-void
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguard(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private needsToWaitUntilAnimationDone()Z
    .locals 3

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportRefreshRateSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return v0
.end method

.method private playAnimation(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "playAnimation: dialog showing"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isSettings(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "playAnimation in settings"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isSystemUI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "playAnimation: keyguard done"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenTurningOn()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->playAnimation(I)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    const-string p0, "playAnimation: don\'t play animation due to going to sleep or screen off"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetState()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->resetState()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetState: mPendingHideDialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->resetState()V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetState: fp client to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", reuse animation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {v1, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->stopAnimation()V

    return-void
.end method

.method private setDisplayPressModeFingerDown()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->onFingerPressDown()V

    return-void
.end method

.method private setDisplayPressModeFingerUp()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->onFingerPressUp()V

    return-void
.end method

.method private shouldForceShowFod(Ljava/lang/String;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v1

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintLockout()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v5

    iget-object v6, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v6

    iget-object v7, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shouldForceShowFod: reason= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isWindowAttached= "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isFpAvailable= "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isKeyguardShowing= "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isDeviceInteractive= "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isDreaming= "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isLockout= "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintDialogView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    if-nez v5, :cond_2

    if-nez v6, :cond_4

    if-eqz v7, :cond_4

    :cond_2
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "shouldForceShowFod: add to window."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key_fingerprint_package_name"

    const-string v1, "forceShow-keyguard"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->forceShowFodDialog(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_3
    const-string p1, "shouldForceShowFod: already added to window, update ui."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {p0, v4}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :goto_2
    return v3

    :cond_4
    return v4
.end method

.method private stopAnimation()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->stopAnimation(I)V

    :cond_0
    return-void
.end method

.method private updateAnimationResource()V
    .locals 1

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateAnimationRes(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addToWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "addToWindow: already added."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "addToWindow: addFpViewToWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->addFpViewToWindow()V

    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->addToWindow()V

    return-void
.end method

.method public doFingerprintPressDown(I)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->postPressTimeOutRunnable()V

    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isFingerDown()Z

    move-result p1

    const-string v0, "OpFingerprintDialogView"

    if-nez p1, :cond_1

    const-string p0, "doFingerprintPressDown: press state the same"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez p1, :cond_2

    const-string p0, "doFingerprintPressDown: fp window not exist don\'t show pressed button"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doFingerprintPressDown: owner:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", done:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMainThreadhandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$3;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$3;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->expandTransparentLayout()V

    invoke-direct {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->playAnimation(I)V

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressModeFingerDown()V

    return-void
.end method

.method public doFingerprintPressUp()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doFingerprintPressUp owner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", done:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pending hide dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->stopAnimation()V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->doFingerPressUpInternal()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "dump FingerprintDialogUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string p1, "OpFingerprintDialogView  "

    invoke-virtual {p0, v0, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public forceRemove()V
    .locals 2

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "forceRemove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->removeFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return-void
.end method

.method public getOwnerString()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getCurrentOwner()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideFODDim()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->hideFODDim()V

    return-void
.end method

.method public initHandler(Landroid/os/Looper;)V
    .locals 1

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public isAnimatingAway()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return p0
.end method

.method public isDialogShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    return p0
.end method

.method public isPendingHideDialog()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    return p0
.end method

.method public notifyBrightnessChange()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyFingerprintAuthenticated()V
    .locals 5

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->needsToWaitUntilAnimationDone()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyFingerprintAuthenticated isInteractive, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isKeyguardVisible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isFingerDown:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isFingerDown()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isHomeApp:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " needsToWaitUntilAnimationDone: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->doFingerprintPressUp()V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->notifyFingerprintAuthenticated()V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->isPlayingAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-interface {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;->animationFinished()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->waitAnimationFinished(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->collapseTransparentLayout()V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    const-string v0, "fp authenticated"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->hideFodDialogInner(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplayWidth:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowingRequest()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttachedToWindow: isKeyguardDone= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDialogShowingRequest= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpFingerprintDialogView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v1, :cond_0

    const-string v0, "onAttachedToWindow: remove window now."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean p1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "OpFingerprintDialogView"

    const-string v0, "onConfigurationChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->handleConfigurationChange()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowingRequest()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow: isDialogShowingRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFingerprintDialogView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resetState()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-eqz v0, :cond_0

    const-string v0, "Because fingerprint is still on detecting state, add the window again"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->addToWindow()V

    :cond_0
    return-void
.end method

.method public onFingerprintStateChanged()V
    .locals 1

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintDetecting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateAnimationResource()V

    :cond_0
    return-void
.end method

.method public onFpEventCancel()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isFingerDown()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFpEventCancel: pressed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", keyguardDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callers= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFingerprintDialogView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v1, :cond_0

    const-string p0, "onFpEventCancel: fp window has been removed."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->removePressTimeOutMessage()V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->isPlayingAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->waitAnimationFinished(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-interface {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;->animationFinished()V

    :cond_2
    :goto_0
    return-void
.end method

.method public postPressTimeOutRunnable()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "post press timeout message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->removePressTimeOutMessage()V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removePressTimeOutMessage()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "remove press timeout message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setFodWindowManager(Lcom/oneplus/systemui/biometrics/OpFodWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    return-void
.end method

.method public shouldHideDismissButton()Z
    .locals 2

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldHideDismissButton: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isAppLocker(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isSettings(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFileManager(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_5
    return v1
.end method

.method public startDismiss(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowingRequest()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDismiss: starting..., authenticated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mShowOnWindow: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isDialogShowingRequest: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", callers: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintDialogView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x8

    const-string p1, "OpFingerprintDialogView.hide"

    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->removeFromWindow()V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->dismiss()V

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p1, "startDismiss: window is not added yet, remove it after attached"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->onFingerprintDialogDismissDone()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public updateIconVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateIconVisibility: forceHide trace = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateLayoutDimension(ZF)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
