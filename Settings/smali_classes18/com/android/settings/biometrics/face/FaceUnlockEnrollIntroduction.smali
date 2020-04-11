.class public Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;
.super Lcom/android/settings/biometrics/face/FingerprintEnrollBase;
.source "FaceUnlockEnrollIntroduction.java"


# static fields
.field protected static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x1

.field protected static final CHOOSE_LOCK_GENERIC_REQUEST_BY_FACEUNLOCK:I = 0x7

.field private static final FACE_RESULT_FAIL:I = 0x1

.field private static final FACE_RESULT_NOT_FOUND:I = 0x2

.field private static final FACE_RESULT_OK:I = 0x0

.field protected static final FACE_UNLOCK_SETUP_REQUEST:I = 0x4

.field protected static final FINGERPRINT_FIND_SENSOR_REQUEST:I = 0x2

.field protected static final GO_TO_FACE_UNLOCK_PAGE:I = 0x5

.field protected static final GO_TO_FINGERPRINT_INTRODUCTION_PAGE:I = 0x6

.field protected static final KEY_FACEUNLOCK_FUNCTIONAL_TERMS_TYPE:I = 0xa

.field protected static final KEY_FINGERPRINT_FUNCTIONAL_TERMS_TYPE:I = 0x8

.field protected static final KEY_FROM_SETTINGS:Ljava/lang/String; = "key_from_settings"

.field private static final KEY_LOCK_SCREEN_PRESENT:Ljava/lang/String; = "wasLockScreenPresent"

.field protected static final KEY_NOTICES_TYPE:Ljava/lang/String; = "op_legal_notices_type"

.field protected static final LEARN_MORE_REQUEST:I = 0x3

.field protected static final OPLEGAL_NOTICES_ACTION:Ljava/lang/String; = "android.oem.intent.action.OP_LEGAL"

.field private static final TAG:Ljava/lang/String; = "FaceUnlockIntroduction"


# instance fields
.field private mAlreadyHadLockScreenSetup:Z

.field private mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

.field private mFaceUnlockConnection:Landroid/content/ServiceConnection;

.field protected mFromSetup:Z

.field protected mHasPassword:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    iput-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mFromSetup:Z

    new-instance v0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction$1;-><init>(Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v0

    return v0
.end method

.method private adjustForGuideImage()V
    .locals 3

    const v0, 0x7f0a0309

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerFontSize(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerScreenZoom(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_1
    :goto_0
    return-void
.end method

.method private adjustTitleSize()V
    .locals 2

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerFontSize(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerScreenZoom(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a067d

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f0a0689

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method private bindFaceUnlockService()V
    .locals 4

    const-string v0, "FaceUnlockIntroduction"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.oneplus.faceunlock"

    const-string v3, "com.oneplus.faceunlock.FaceSettingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

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

.method private isFaceAdded()Z
    .locals 6

    const-string v0, "FaceUnlockIntroduction"

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

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

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

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

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    const v1, 0x7f01005a

    const v2, 0x7f01005b

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private unbindFaceUnlockService()V
    .locals 2

    const-string v0, "FaceUnlockIntroduction"

    const-string v1, "Start unbind oneplus face unlockservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

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
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf9

    return v0
.end method

.method protected getNextButton()Lcom/oneplus/lib/widget/button/OPButton;
    .locals 1

    const v0, 0x7f0a0272

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    return-object v0
.end method

.method protected initViews()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->initViews()V

    const v0, 0x7f0a0689

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f121319

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->getNextButton()Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXCamera()Z

    move-result v2

    const v3, 0x7f120cad

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->setHeaderText(I)V

    const v2, 0x7f120cbf

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0a05ad

    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f120fc6

    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->setHeaderText(I)V

    const v2, 0x7f120fc5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v2, 0x7f120cac

    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->setHeaderText(I)V

    const v2, 0x7f120cab

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/button/OPButton;->setText(I)V

    const v2, 0x7f0a026b

    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f120e41

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/button/OPButton;->setText(I)V

    const v3, 0x7f0a029a

    invoke-virtual {p0, v3}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction$2;

    invoke-direct {v4, p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction$2;-><init>(Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected launchChooseLock()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->getChooseLockIntent()Landroid/content/Intent;

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

    const-string v4, "for_fingerprint"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mUserId:I

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/4 v3, 0x7

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a026b

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->onCancelButtonClick()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "wasLockScreenPresent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    :goto_0
    const v0, 0x7f0d01a3

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->adjustTitleSize()V

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->adjustForGuideImage()V

    return-void
.end method

.method protected onNextButtonClick()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    const-string v1, "com.oneplus.faceunlock"

    const-string v2, "com.oneplus.faceunlock.FaceUnlockActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "FaceUnlockActivity.StartMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPFaceUnlockSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->unbindFaceUnlockService()V

    invoke-super {p0}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->bindFaceUnlockService()V

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->finish()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FingerprintEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const-string v1, "wasLockScreenPresent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setHeaderText(I)V
    .locals 1

    const v0, 0x7f0a067d

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
