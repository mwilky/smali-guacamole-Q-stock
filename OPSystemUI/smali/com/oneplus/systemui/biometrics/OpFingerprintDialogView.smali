.class public Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;
.super Landroid/widget/LinearLayout;
.source "OpFingerprintDialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z


# instance fields
.field private final OP_DISPLAY_AOD_MODE:I

.field private final OP_DISPLAY_APPLY_HIDE_AOD:I

.field private final OP_DISPLAY_NOTIFY_PRESS:I

.field private final OP_DISPLAY_SET_DIM:I

.field private WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

.field private WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

.field private WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

.field private mAnimatingAway:Z

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAodIndicationTextView:Landroid/widget/TextView;

.field private mAodMode:I

.field private final mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

.field mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

.field private mContext:Landroid/content/Context;

.field private mContextResolver:Landroid/content/ContentResolver;

.field private mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

.field private mDeviceInteractive:Z

.field private final mDialog:Landroid/widget/LinearLayout;

.field private mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

.field private mDimLayout:Landroid/view/ViewGroup;

.field private mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mDimView:Landroid/widget/ImageView;

.field protected mDisplay:Landroid/view/Display;

.field private mDisplayWidth:F

.field private mFaceUnlocked:Z

.field private mFodDialogShowing:Z

.field private mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

.field private mGoingToSleep:Z

.field private mHandler:Landroid/os/Handler;

.field private mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

.field private mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

.field private mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

.field private mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

.field mIsDialogAttachingToWindow:Z

.field private mIsKeyguardDone:Z

.field private mIsScreenOn:Z

.field private mIsScreenTurningOn:Z

.field private mLastState:I

.field private mLayout:Landroid/view/ViewGroup;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMainThreadhandler:Landroid/os/Handler;

.field mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNeedToShowAodText:Z

.field private final mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

.field private mOwnerString:Ljava/lang/String;

.field mPendingHideDialog:Z

.field private mPm:Landroid/os/PowerManager;

.field private mPressTimeoutRunnable:Ljava/lang/Runnable;

.field private mPressedLayout:Landroid/view/ViewGroup;

.field private mPressedLayoutAttached:Z

.field private mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mRealDisplaySize:Landroid/graphics/Point;

.field private mScreenOffAuthenticating:Z

.field private mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mSettingsObserver:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;

.field private mShowOnWindow:Z

.field private mShowingKeyguard:Z

.field private mShowingPressed:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mTimeoutAnimator:Landroid/animation/ValueAnimator;

.field private final mUpdateIconRunnable:Ljava/lang/Runnable;

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWasForceRemoved:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Lcom/android/systemui/biometrics/DialogViewCallback;Landroid/os/Looper;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->OP_DISPLAY_AOD_MODE:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->OP_DISPLAY_NOTIFY_PRESS:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->OP_DISPLAY_SET_DIM:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->OP_DISPLAY_APPLY_HIDE_AOD:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mNeedToShowAodText:Z

    const-string v1, "OPFingerprintView"

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    const-string v1, "OPFingerprintVDDim"

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    const-string v1, "OPFingerprintVDpressed"

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v1, ""

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mScreenOffAuthenticating:Z

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodMode:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsDialogAttachingToWindow:Z

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMainThreadhandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutAttached:Z

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mRealDisplaySize:Landroid/graphics/Point;

    new-instance v3, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$5;

    invoke-direct {v3, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$5;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v3, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$9;

    invoke-direct {v3, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$9;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    new-instance v3, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;

    invoke-direct {v3, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v3, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$11;

    invoke-direct {v3, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$11;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateIconRunnable:Ljava/lang/Runnable;

    new-instance v3, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$12;

    invoke-direct {v3, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$12;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iput-object p3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-virtual {p0, p4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->initHandler(Landroid/os/Looper;)V

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    new-instance p2, Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-direct {p2}, Lcom/oneplus/core/oimc/OIMCServiceManager;-><init>()V

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object p3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    iput p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplayWidth:F

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplay:Landroid/view/Display;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplay:Landroid/view/Display;

    iget-object p3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mRealDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p2, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    const-string p3, "power"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    sget p1, Lcom/android/systemui/R$layout;->op_fingerprint_view:I

    invoke-virtual {p2, p1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p1, Lcom/android/systemui/R$layout;->op_fingerprint_dim_view:I

    invoke-virtual {p2, p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    sget p1, Lcom/android/systemui/R$layout;->op_fingerprint_high_light_view:I

    invoke-virtual {p2, p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "IOneplusDisplay getService Exception e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpFingerprintDialogView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_dim_view:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_icon_white:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_icon:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_icon_disable:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_icon_dim:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->op_aod_fp_indication_text:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContextResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mSettingsObserver:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

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

    new-instance p2, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;

    invoke-direct {p2, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setFodDialogView(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIndicationTextSize()V

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleFingerprintAuthenticated()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleSetPressDimWindow(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIndicationTextSize()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;ZF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateLayoutDimension(ZF)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnFinishedGoingToSleep(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnStartedWakingUp()V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleResetState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnKeyguardBouncerChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleStartDismiss(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnFacelockStateChanged(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnStrongAuthStateChanged(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnUserSwitching(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/systemui/biometrics/DialogViewCallback;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodDialogShowing:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleForceRemove()V

    return-void
.end method

.method static synthetic access$3000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressMode(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMainThreadhandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->stopAnimation()V

    return-void
.end method

.method static synthetic access$3600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    return p0
.end method

.method static synthetic access$3602(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleSetOwnerString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4002(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenTurningOn:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mGoingToSleep:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFaceUnlocked:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mNeedToShowAodText:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$4702(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingKeyguard:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayHideAod(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleShowFingerprintPressed()V

    return-void
.end method

.method static synthetic access$5002(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mScreenOffAuthenticating:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContextResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateTimeOutAnimation(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleHideFingerprintPressed()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyFpResultEvent()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyKeyguardDone()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyBrightnessChange()V

    return-void
.end method

.method private getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_fp_to_error:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_fp_to_error:I

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_error_to_fp:I

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_error_to_fp:I

    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "oldState = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", newState = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpFingerprintDialogView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;
    .locals 10

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.oneplus.applocker"

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_5

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0

    :cond_5
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_8

    if-nez v0, :cond_6

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0

    :cond_8
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x901

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_9
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x900

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_a
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0x902

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_b
    :goto_0
    const v5, 0x1000518

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result v6

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v5, -0x2

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v5, 0x11

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v5}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isSupportResolutionSwitch()Z

    move-result v5

    const/16 v7, 0x30

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v5}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->is2KDisplay()Z

    move-result v5

    iget-object v8, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v8, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v5, :cond_c

    sget v9, Lcom/android/systemui/R$dimen;->fp_animation_height_2k:I

    goto :goto_1

    :cond_c
    sget v9, Lcom/android/systemui/R$dimen;->fp_animation_height_1080p:I

    :goto_1
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v8, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v6, :cond_d

    sget v5, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_ss_y:I

    goto :goto_2

    :cond_d
    if-eqz v5, :cond_e

    sget v5, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y_2k:I

    goto :goto_2

    :cond_e
    sget v5, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y_1080p:I

    :goto_2
    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_8

    :cond_f
    iget-object v8, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v6, :cond_10

    sget v9, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_ss_width:I

    goto :goto_3

    :cond_10
    if-eqz v5, :cond_11

    sget v9, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_2k:I

    goto :goto_3

    :cond_11
    sget v9, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_1080p:I

    :goto_3
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v8, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v6, :cond_12

    sget v5, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_ss_location_y:I

    goto :goto_4

    :cond_12
    if-eqz v5, :cond_13

    sget v5, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_location_y_2k:I

    goto :goto_4

    :cond_13
    sget v5, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_location_y_1080p:I

    :goto_4
    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_8

    :cond_14
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/android/systemui/R$dimen;->fp_animation_height:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v6, :cond_15

    sget v6, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_ss_y:I

    goto :goto_5

    :cond_15
    sget v6, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y:I

    :goto_5
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_8

    :cond_16
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v6, :cond_17

    sget v8, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_ss_width:I

    goto :goto_6

    :cond_17
    sget v8, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width:I

    :goto_6
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v6, :cond_18

    sget v6, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_ss_location_y:I

    goto :goto_7

    :cond_18
    sget v6, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_location_y:I

    :goto_7
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_19
    :goto_8
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1a

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v6, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/oneplus/util/OpUtils;->getCutoutPathdataHeight(Landroid/content/Context;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_1a
    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    move v3, v4

    :cond_1c
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const v0, 0x50e0013

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v1, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCustomLayoutParams owner:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " title:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintDialogView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x402

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    return-object v1
.end method

.method private getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method private getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method private getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 3

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    if-eqz p0, :cond_4

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown security quality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method private handleFingerprintAuthenticated()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "handleFingerprintAuthenticated"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyFingerprintAuthenticated isInteractive, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isKeyguardVisible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mShowingPressed:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isPendingHideDialog:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isAnimationPlaying:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->isPlayingAnimation()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleHideFingerprintPressed()V

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideBiometricDialog()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->isPlayingAnimation()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-interface {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;->animationFinished()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyFpResultEvent()V

    return-void
.end method

.method private handleForceRemove()V
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

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWasForceRemoved:Z

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleSetPressDimWindow(Z)V

    return-void
.end method

.method private handleHideFingerprintPressed()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideFingerprintPressed owner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", done:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressMode(I)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$7;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$7;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMainThreadhandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$8;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$8;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleNotifyBrightnessChange()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->onBrightnessChange()V

    :cond_0
    return-void
.end method

.method private handleNotifyFpResultEvent()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNotifyFpResultEvent, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyguardDone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_0

    const-string p0, "fp window not exist don\'t show pressed button"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintAlreadyAuthenticated()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->waitAnimationFinished(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)V

    :cond_2
    return-void
.end method

.method private handleNotifyKeyguardDone()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNotifyKeyguardDone, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyFpResultEvent()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleHideFingerprintPressed()V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideBiometricDialog()V

    return-void
.end method

.method private handleOnBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    if-nez p1, :cond_0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFingerprintHelp, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "OpFingerprintDialogView"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFPIndicationText(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyFpResultEvent()V

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

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    :cond_1
    return-void
.end method

.method private handleOnFinishedGoingToSleep(I)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnFinishedGoingToSleep : why = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintDialogView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFPIndicationText(ZLjava/lang/String;)V

    return-void
.end method

.method private handleOnKeyguardBouncerChanged(Z)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method private handleOnKeyguardVisibilityChanged(Z)V
    .locals 1

    sget-boolean p1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "OpFingerprintDialogView"

    const-string v0, "handleOnKeyguardVisibilityChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    return-void
.end method

.method private handleOnScreenTurnedOff()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "handleOnScreenTurnedOff"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleResetState()V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    if-eqz v0, :cond_2

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "force add window when screen turned off"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->addToWindow()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setPressDimWindow(Z)V

    :cond_3
    return-void
.end method

.method private handleOnScreenTurnedOn()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "handleOnSScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateAnimationRes(Z)V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    return-void
.end method

.method private handleOnSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method private handleOnStartedWakingUp()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnStartedWakingUp : ownerString = "

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

    const-string v1, "forceShow-keyguard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideBiometricDialog()V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    if-eqz v0, :cond_2

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateAnimationRes(Z)V

    :cond_3
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

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

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

.method private handleResetState()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "handleResetState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->resetState()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetState: fp client to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reuse animation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->resetState()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->stopAnimation()V

    return-void
.end method

.method private handleSetOwnerString(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fp client to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->stopAnimation()V

    :cond_0
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateAnimationRes(Z)V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleSetPressDimWindow(Z)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle SetPressDimWindow : PressdLayoutAttached :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutAttached:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", attach = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutAttached:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutAttached:Z

    goto :goto_0

    :cond_1
    const-string p1, "PressedLayout is attached."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p0

    goto :goto_2

    :cond_2
    const-string/jumbo p0, "try to add press layout, but it is attached before"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutAttached:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutAttached:Z

    goto :goto_1

    :cond_4
    const-string p1, "PressLayout isn\'t attached."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result p0

    goto :goto_2

    :cond_5
    const-string/jumbo p0, "try to remove press layout, but it is removed before"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method private handleShowFingerprintPressed()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string p0, "press state the same"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_1

    const-string p0, "fp window not exist don\'t show pressed button"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v0, "fp is disabled currently"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showFingerprintPressed owner:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", done:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMainThreadhandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$6;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$6;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    invoke-direct {p0, v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->playAnimation(I)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFpDaemonStatus(I)V

    :cond_3
    invoke-direct {p0, v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressMode(I)V

    return-void
.end method

.method private handleStartDismiss(Z)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    const-string p1, "OpFingerprintDialogView"

    const-string v0, "handleStartDismiss"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$3;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$3;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFpDaemonStatus(I)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private handleUpdateIconVisibility(Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    :cond_0
    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const-string v4, "OpFingerprintDialogView"

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v2, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v2

    iget-object v6, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v6

    iget-object v7, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isImeShow()Z

    move-result v7

    iget-object v8, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v8

    iget-object v9, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v9

    iget-object v10, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v10

    iget-object v11, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isQSExpanded()Z

    move-result v11

    iget-object v12, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v12}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeActivte()Z

    move-result v12

    iget-object v13, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v13

    iget-object v14, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isLaunchingCamera()Z

    move-result v14

    iget-object v15, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v15}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isLaunchingLeftAffordance()Z

    move-result v15

    iget-object v3, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v5, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v5

    if-eqz v5, :cond_2

    move/from16 v16, v10

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    move/from16 v16, v10

    const/4 v5, 0x0

    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    const-string/jumbo v4, "updateIconVisibility: fp client = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", forceHide = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isBouncer = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isImeShow = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", showOnWindow = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", goingToSleep = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mGoingToSleep:Z

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", screenOn = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isUnlockAllowed = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", interactive = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", keyguard visible = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingKeyguard:Z

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isDreaming = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isKeyguardShowingAndOccluded = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isFaceUnlocked = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFaceUnlocked:Z

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isSimPinSecure = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isQSExpanded = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isLaunchingCamera = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", LeftAffordance:"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isPreventActivte = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isShowing = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isLockOut = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isFacelockRecognizing = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", AodText:"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mNeedToShowAodText:Z

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mScreenOffAuthenticating = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mScreenOffAuthenticating:Z

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsScreenTurningOn = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenTurningOn:Z

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", visibility = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v10, v17

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "1"

    goto/16 :goto_4

    :cond_3
    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "2"

    goto/16 :goto_4

    :cond_4
    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mGoingToSleep:Z

    if-eqz v1, :cond_6

    :cond_5
    if-eqz v5, :cond_6

    if-eqz v6, :cond_18

    :cond_6
    if-nez v8, :cond_18

    if-nez v14, :cond_18

    if-nez v15, :cond_18

    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    if-eqz v1, :cond_7

    if-nez v3, :cond_7

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    if-nez v1, :cond_18

    :cond_7
    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    const-string v5, "forceShow-keyguard"

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    if-eqz v1, :cond_8

    if-nez v3, :cond_8

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_8
    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingKeyguard:Z

    if-eqz v1, :cond_a

    if-nez v12, :cond_a

    if-eqz v11, :cond_9

    if-nez v6, :cond_9

    if-nez v16, :cond_18

    :cond_9
    if-eqz v7, :cond_a

    if-eqz v6, :cond_a

    goto/16 :goto_3

    :cond_a
    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFaceUnlocked:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "4"

    goto/16 :goto_4

    :cond_b
    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    if-eqz v0, :cond_c

    goto :goto_1

    :cond_c
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "5"

    goto/16 :goto_4

    :cond_d
    if-nez v2, :cond_10

    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_e
    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    if-eqz v0, :cond_f

    goto :goto_2

    :cond_f
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "6"

    goto/16 :goto_4

    :cond_10
    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    const-string v0, "7"

    goto/16 :goto_4

    :cond_11
    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_16

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingKeyguard:Z

    if-eqz v1, :cond_13

    if-eqz v13, :cond_13

    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    if-eqz v1, :cond_12

    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mScreenOffAuthenticating:Z

    if-eqz v1, :cond_13

    :cond_12
    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "8-0"

    goto :goto_4

    :cond_13
    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingKeyguard:Z

    if-nez v1, :cond_14

    if-nez v9, :cond_14

    if-nez v1, :cond_17

    if-eqz v6, :cond_17

    :cond_14
    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v0, "8-1"

    goto :goto_4

    :cond_15
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v0, "8-2"

    goto :goto_4

    :cond_16
    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_17
    const-string v0, "0"

    goto :goto_4

    :cond_18
    :goto_3
    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v0, "3"

    :goto_4
    sget-boolean v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caseLog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return-void

    :cond_1a
    :goto_5
    move-object v10, v4

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not update when icon null, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    if-nez v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_6

    :cond_1b
    move v3, v2

    :goto_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    if-nez v0, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleUpdateIndicationTextSize()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->oneplus_contorl_text_size_body1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->is2KDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/systemui/R$dimen;->op_fp_indication_max_text_size_2k:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/systemui/R$dimen;->op_fp_indication_max_text_size_1080p:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-boolean v2, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferTextSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maxTextSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpFingerprintDialogView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v1, :cond_2

    if-le v0, v1, :cond_2

    move v0, v1

    :cond_2
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    return-void
.end method

.method private handleUpdateLayoutDimension(ZF)V
    .locals 2

    iput p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplayWidth:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_0

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_2k:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_1080p:I

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->updateLayoutDimension(Z)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->updateLayoutDimension(Z)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {p2, p1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->updateLayoutDimension(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_1

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_2k:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_1080p:I

    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {p2, p1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->updateLayoutDimension(Z)V

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {p2, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateLayoutDimension(Z)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mViewLayoutParams height "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpFingerprintDialogView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleConfigurationChange(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mRealDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mRealDisplaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_3

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_location_y_2k:I

    goto :goto_2

    :cond_3
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_location_y_1080p:I

    :goto_2
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/oneplus/util/OpUtils;->getCutoutPathdataHeight(Landroid/content/Context;)I

    :cond_4
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_5

    sget v0, Lcom/android/systemui/R$dimen;->op_keyguard_indication_padding_bottom_2k:I

    goto :goto_3

    :cond_5
    sget v0, Lcom/android/systemui/R$dimen;->op_keyguard_indication_padding_bottom_1080p:I

    :goto_3
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_6

    sget v1, Lcom/android/systemui/R$dimen;->fp_animation_height_2k:I

    goto :goto_4

    :cond_6
    sget v1, Lcom/android/systemui/R$dimen;->fp_animation_height_1080p:I

    :goto_4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_7

    sget p1, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_2k:I

    goto :goto_5

    :cond_7
    sget p1, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_1080p:I

    :goto_5
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_8

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    return-void
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.android.systemui"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "forceShow-keyguard"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private playAnimation(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodDialogShowing:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "playAnimation: dialog showing"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "com.android.settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "playAnimation in settings"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    const-string v2, "com.android.systemui"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "playAnimation: keyguard done"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mGoingToSleep:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenTurningOn:Z

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

.method private setDisplayHideAod(I)V
    .locals 1

    new-instance v0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$spX6N6K-pTx3BoHNGR9tAvaKs3w;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$spX6N6K-pTx3BoHNGR9tAvaKs3w;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private setDisplayPressMode(I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayPressMode mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mNeedToShowAodText:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iget-boolean v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    if-ne v4, v3, :cond_1

    const-string p0, "setDisplayPressMode: the same state"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-boolean v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mNeedToShowAodText:Z

    if-eqz v5, :cond_2

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    if-nez v3, :cond_3

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mNeedToShowAodText:Z

    :cond_4
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_5

    if-ne p1, v2, :cond_5

    const-string p0, "setDisplayPressMode: return"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    new-instance v0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$qgYqLVJ0baCsERAC_a9Qx79vsng;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$qgYqLVJ0baCsERAC_a9Qx79vsng;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private shouldAnimateForTransition(II)Z
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    return v0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    return v0

    :cond_2
    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    :cond_3
    return p0
.end method

.method private shouldEnableHBM()Z
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    const/4 v1, 0x0

    const-string v2, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "don\'t re-enable HBM due to fingerprint unlocking"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const-string p0, "force enable HBM since highlight icon is visible"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "don\'t enable HBM due to going to sleep"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "don\'t enable HBM due to keyguard is occluded and device is interactive"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    if-eqz v0, :cond_6

    const-string p0, "force enable HBM in aod and fp is pressed"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_7

    const-string p0, "don\'t enable HBM due to device isn\'t interactive"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFaceUnlocked:Z

    if-eqz v0, :cond_8

    const-string p0, "don\'t enable HBM due to already face unlocked"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    const-string v0, "forceShow-keyguard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    const-string p0, "don\'t enable HBM due to boot device or biometrice doesn\'t allow"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b
    return v3

    :cond_c
    :goto_0
    const-string p0, "don\'t enable HBM due to lockout"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    :goto_1
    const-string p0, "don\'t enable HBM due to duraing fp wake and unlock"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_e
    :goto_2
    const-string p0, "don\'t enable HBM dim view is gone or not show on window"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private stopAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->stopAnimation(I)V

    invoke-direct {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressMode(I)V

    :cond_0
    return-void
.end method

.method private updateFPIndicationText(ZLjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFPIndicationText: lockout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpFingerprintDialogView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    const p1, 0x10402a1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    const-string v4, "forceShow-keyguard"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_4

    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mNeedToShowAodText:Z

    :goto_1
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->animateErrorText(Landroid/widget/TextView;)V

    goto :goto_4

    :cond_5
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, p2, :cond_6

    sget p1, Lcom/android/systemui/R$string;->op_kg_prompt_reason_timeout_pattern:I

    :goto_2
    move v0, p1

    goto :goto_3

    :cond_6
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, p2, :cond_7

    sget p1, Lcom/android/systemui/R$string;->op_kg_prompt_reason_timeout_password:I

    goto :goto_2

    :cond_7
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, p2, :cond_8

    sget p1, Lcom/android/systemui/R$string;->op_kg_prompt_reason_timeout_pin:I

    goto :goto_2

    :cond_8
    move v0, v3

    :goto_3
    if-eqz v0, :cond_9

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->animateErrorText(Landroid/widget/TextView;)V

    :cond_9
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateFPIndicationText: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method private updateFingerprintIcon(I)V
    .locals 4

    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLastState:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "OpFingerprintDialogView"

    const-string p1, "Animation not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/R$id;->fingerprint_icon:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_2

    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLastState:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldAnimateForTransition(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_2
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLastState:I

    return-void
.end method

.method private updateTimeOutAnimation(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTimeOutAnimation: animate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addToWindow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " addToWindow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showOnWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsDialogAttachingToWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsDialogAttachingToWindow:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsDialogAttachingToWindow:Z

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method protected animateErrorText(Landroid/widget/TextView;)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$anim;->oneplus_control_text_error_message_anim:I

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

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

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getOwnerString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    return-object p0
.end method

.method public handleAddToWindow()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " handleAddToWindow :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsDialogAttachingToWindow:Z

    return-void
.end method

.method public handleConfigurationChange(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public hideFingerprintPressed()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

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

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodDialogShowing:Z

    return p0
.end method

.method public isPendingHideDialog()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    return p0
.end method

.method public synthetic lambda$setDisplayAodMode$0$OpFingerprintDialogView(I)V
    .locals 3

    const-string v0, "OpFingerprintDialogView"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set OP_DISPLAY_AOD_MODE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0x8

    invoke-interface {p0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postOnBackgroundThread Exception e = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$setDisplayDimMode$1$OpFingerprintDialogView(I)V
    .locals 4

    const-string v0, "OpFingerprintDialogView"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set dim mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isKeyguardDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v2, 0xa

    invoke-interface {v1, v2, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, "FingerPrintMode"

    if-nez p1, :cond_1

    :try_start_1
    iget p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodMode:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    iget p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodMode:I

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    if-eqz p1, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-virtual {p0, v2, v3, v1}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1, v1}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayDimMode Exception e = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$setDisplayHideAod$3$OpFingerprintDialogView(I)V
    .locals 3

    const-string v0, "OpFingerprintDialogView"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set hide aod mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0xb

    invoke-interface {p0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayHideAod Exception e = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$setDisplayPressMode$2$OpFingerprintDialogView(I)V
    .locals 3

    const-string v0, "OpFingerprintDialogView"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set OP_DISPLAY_NOTIFY_PRESS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0x9

    invoke-interface {p0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postOnBackgroundThread Exception e = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public notifyBrightnessChange()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyFingerprintAuthenticated()V
    .locals 4

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyFingerprintAuthenticated isInteractive, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isKeyguardVisible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mShowingPressed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isHomeApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpFingerprintDialogView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayAodMode(I)V

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportRefreshRateSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFpDaemonStatus(I)V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyFpResultEvent()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyKeyguardDone(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyKeyguardDone, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFpDaemonStatus(I)V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "FingerPrintMode"

    invoke-virtual {p1, v2, v0, v1}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x6e

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow: isKeyguardDone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplayWidth:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLastState:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFingerprintIcon(I)V

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mSettingsObserver:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;->register()V

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFaceUnlocked:Z

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFpDaemonStatus(I)V

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

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
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleConfigurationChange(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mSettingsObserver:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;->unregister()V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleResetState()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public postTimeOutRunnable()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeTimeOutMessage()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "remove time out message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetState()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mNeedToShowAodText:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateDimViewVisibility(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetState: mPendingHideDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFingerprintDialogView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setDialogShowing(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDialogShowing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodDialogShowing:Z

    return-void
.end method

.method public setDisplayAodMode(I)V
    .locals 2

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set aod mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodMode:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodMode:I

    new-instance v0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$hTQwARRqjT_fkeXlxTECoIdM5Js;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$hTQwARRqjT_fkeXlxTECoIdM5Js;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setDisplayDimMode(I)V
    .locals 1

    new-instance v0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$ZqgEYac-dRPXLXAkM5r3MbPRGLs;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$ZqgEYac-dRPXLXAkM5r3MbPRGLs;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setOwnerString(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOwnerString to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setPressDimWindow(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPressDimWindow : PressedLayoutAttached = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", attach = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public shouldHideDismissButton()Z
    .locals 3

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldHideDismissButton: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    const-string v2, "com.oneplus.applocker"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    const-string v2, "com.android.settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    const-string v2, "com.oneplus.filemanager"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public showFingerprintDialog(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    check-cast p2, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->forceShowFodDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V

    return-void
.end method

.method public showFingerprintPressed()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startDismiss(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

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

.method public updateDimViewVisibility(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDimViewVisibility: show = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayDimMode(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayDimMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateFpDaemonStatus(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFpDaemonStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " shouldEnableHBM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldEnableHBM()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldEnableHBM()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateDimViewVisibility(Z)V

    return-void

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateDimViewVisibility(Z)V

    :cond_1
    return-void
.end method

.method public updateIconVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x75

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

.method public updateIndicationTextSize()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateLayoutDimension(ZF)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76

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
