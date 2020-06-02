.class public Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;
.super Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;
.source "SetupFaceUnlockEnrollIntroduction.java"


# static fields
.field private static final FACE_RESULT_FAIL:I = 0x1

.field private static final FACE_RESULT_NOT_FOUND:I = 0x2

.field private static final FACE_RESULT_OK:I = 0x0

.field private static final KEY_LOCK_SCREEN_PRESENT:Ljava/lang/String; = "wasLockScreenPresent"

.field private static final TAG:Ljava/lang/String; = "SetupFaceUnlockEnrollIntroduction"


# instance fields
.field private mAlreadyHadLockScreenSetup:Z

.field private mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

.field private mFaceUnlockConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    new-instance v0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction$1;-><init>(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)Lcom/oneplus/lib/widget/button/OPButton;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getNextButton()Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)Lcom/oneplus/lib/widget/button/OPButton;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getNextButton()Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object v0

    return-object v0
.end method

.method private adjustForGuideImage()V
    .locals 5

    const v0, 0x7f0a068d

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0309

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerFontSize(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerScreenZoom(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private bindFaceUnlockService()V
    .locals 4

    const-string v0, "SetupFaceUnlockEnrollIntroduction"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.oneplus.faceunlock"

    const-string v3, "com.oneplus.faceunlock.FaceSettingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v2, "Start bind oneplus face unlockservice"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Bind oneplus face unlockservice exception"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object p1, v0

    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    nop

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const-string v2, ":settings:password_quality"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1
.end method

.method private goToNextPage()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->finish()V

    goto :goto_1

    :cond_1
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->finish()V

    :goto_1
    return-void
.end method

.method private isFaceAdded()Z
    .locals 6

    const-string v0, "SetupFaceUnlockEnrollIntroduction"

    iget-object v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x2

    :try_start_0
    invoke-interface {v1, v2}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->checkState(I)I

    move-result v1

    move v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start check face state:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start check face State RemoteException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isKeyguardSecure()Z
    .locals 1

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method private launchFaceUnlock()V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getSetupFaceUnlockIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    const v1, 0x7f01005a

    const v2, 0x7f01005b

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startOPFaceUnlockModeSettingsActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "enter_faceunlock_mode_settings_from_suw"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const-string v1, "com.android.settings"

    const-string v2, "com.oneplus.settings.faceunlock.OPFaceUnlockModeSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startSetupFingerprintEnrollIntroduction(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private unbindFaceUnlockService()V
    .locals 2

    const-string v0, "SetupFaceUnlockEnrollIntroduction"

    const-string v1, "Start unbind oneplus face unlockservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x20000

    const-string v2, "lockscreen.password_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "show_options_button"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf9

    return v0
.end method

.method protected initViews()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->initViews()V

    const v0, 0x7f0a068b

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f121321

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a0272

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result v1

    const v2, 0x7f0a05af

    const v3, 0x7f120cb0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->setHeaderText(I)V

    const v1, 0x7f120cc2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f120fc4

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->setHeaderText(I)V

    const v1, 0x7f120fc3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f120caf

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->setHeaderText(I)V

    const v1, 0x7f120cae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/button/OPButton;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v3, Lcom/android/settings/biometrics/face/-$$Lambda$ieya5yOds0DIHWaiNHPzjd6_A6o;

    invoke-direct {v3, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$ieya5yOds0DIHWaiNHPzjd6_A6o;-><init>(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)V

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a026b

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mBtnCancel:Lcom/oneplus/lib/widget/button/OPButton;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mBtnCancel:Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v3, Lcom/android/settings/biometrics/face/-$$Lambda$lpHQg3KNzbCBGMh9I-Z1zygP-60;

    invoke-direct {v3, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$lpHQg3KNzbCBGMh9I-Z1zygP-60;-><init>(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)V

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mBtnCancel:Lcom/oneplus/lib/widget/button/OPButton;

    const v3, 0x7f12131d

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/button/OPButton;->setText(I)V

    const v1, 0x7f0a029a

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0603f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0603f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    new-instance v3, Lcom/android/settings/biometrics/face/-$$Lambda$SetupFaceUnlockEnrollIntroduction$Du2jt-QVrWPSe4IPCZOEcqQ7vAQ;

    invoke-direct {v3, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$SetupFaceUnlockEnrollIntroduction$Du2jt-QVrWPSe4IPCZOEcqQ7vAQ;-><init>(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f06033c

    invoke-virtual {p0, v3}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f0a067f

    invoke-virtual {p0, v4}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f060340

    invoke-virtual {p0, v4}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    const v4, 0x7f0603a9

    invoke-virtual {p0, v4}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/widget/button/OPButton;->setTextColor(I)V

    return-void
.end method

.method public synthetic lambda$initViews$0$SetupFaceUnlockEnrollIntroduction(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "op_legal_notices_type"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "key_from_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected launchChooseLock()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getChooseLockIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v1

    const-string v3, "minimum_quality"

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x1

    const-string v4, "hide_disabled_prefs"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "has_challenge"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "challenge"

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "for_face"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mUserId:I

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/4 v3, 0x7

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetupFaceUnlockEnrollIntroduction"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mFromSetup:Z

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    if-nez v2, :cond_0

    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->goToNextPage()V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->startOPFaceUnlockModeSettingsActivity()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->startSetupFingerprintEnrollIntroduction(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->startSetupFingerprintEnrollIntroduction(Z)V

    :cond_3
    return-void

    :cond_4
    if-ne p1, v2, :cond_5

    if-nez p2, :cond_5

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_5
    const/4 v2, 0x7

    if-ne p1, v2, :cond_6

    if-ne p2, v0, :cond_6

    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mToken:[B

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->launchFaceUnlock()V

    goto :goto_0

    :cond_6
    const/4 v2, 0x6

    if-ne p1, v2, :cond_8

    if-eq p2, v1, :cond_7

    const/16 v1, 0xb

    if-eq p2, v1, :cond_7

    if-eq p2, v0, :cond_7

    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->goToNextPage()V

    goto :goto_0

    :cond_8
    const/16 v0, 0xd

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->updatePasswordQuality()V

    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mHasPassword:Z

    if-eqz v0, :cond_9

    if-eqz p2, :cond_9

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->goToNextPage()V

    :cond_9
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->finish()V

    :cond_a
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method protected onCancelButtonClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->startSetupFingerprintEnrollIntroduction(Z)V

    const v0, 0x7f01005a

    const v1, 0x7f01005b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mNeedLaunchLock:Z

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->setLightStatusBar(Landroid/view/Window;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mFromSetup:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isKeyguardSecure()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    goto :goto_0

    :cond_0
    const-string v1, "wasLockScreenPresent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    :goto_0
    const v1, 0x7f0d01a3

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->setContentView(I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->startSetupFingerprintEnrollIntroduction(Z)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->finish()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->adjustForGuideImage()V

    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mHasPassword:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->launchChooseLock()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->launchFaceUnlock()V

    goto :goto_0

    :cond_1
    const-string v0, "SetupFaceUnlockEnrollIntroduction"

    const-string v1, "onNext already added face"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->startSetupFingerprintEnrollIntroduction(Z)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->unbindFaceUnlockService()V

    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->updatePasswordQuality()V

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->bindFaceUnlockService()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const-string v1, "wasLockScreenPresent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->finish()V

    return-void
.end method
