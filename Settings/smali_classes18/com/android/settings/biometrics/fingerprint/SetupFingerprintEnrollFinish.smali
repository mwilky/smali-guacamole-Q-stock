.class public Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;
.super Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;
.source "SetupFingerprintEnrollFinish.java"


# static fields
.field protected static final FACE_UNLOCK_SETUP_REQUEST:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFingerprintEnrollingIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf8

    return v0
.end method

.method protected initViews()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->initViews()V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    const v1, 0x7f120ace

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setText(I)V

    return-void
.end method

.method public synthetic lambda$onCreate$0$SetupFingerprintEnrollFinish(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->onNextButtonClick(Landroid/view/View;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_0

    if-eq p2, v3, :cond_0

    if-ne p2, v2, :cond_5

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->finish()V

    goto :goto_1

    :cond_1
    if-eq p2, v1, :cond_4

    if-eq p2, v3, :cond_4

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->finish()V

    :cond_5
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0x7f130516

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->isSetupPage:Z

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d01b6

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->setContentView(I)V

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a03cf

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f121313

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f06033a

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0a03d2

    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f120ea0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const v0, 0x7f0a0432

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->mBtnAdd:Lcom/oneplus/lib/widget/button/OPButton;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$SetupFingerprintEnrollFinish$by0xUo16zx6grDNEtrl1GJu4EpA;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$SetupFingerprintEnrollFinish$by0xUo16zx6grDNEtrl1GJu4EpA;-><init>(Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-lt v1, v2, :cond_4

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->mBtnAdd:Lcom/oneplus/lib/widget/button/OPButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->adjustTitleSize()V

    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;->finish()V

    return-void
.end method
