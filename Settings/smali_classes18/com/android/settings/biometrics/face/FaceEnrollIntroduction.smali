.class public Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.source "FaceEnrollIntroduction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceIntro"


# instance fields
.field private mFaceManager:Landroid/hardware/face/FaceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkMaxEnrolled()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    const v2, 0x7f1206d2

    return v2

    :cond_0
    nop

    const/4 v0, 0x0

    return v0

    :cond_1
    const v0, 0x7f1206d3

    return v0
.end method

.method protected getCancelButton()Lcom/oneplus/lib/widget/button/OPButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mBtnCancel:Lcom/oneplus/lib/widget/button/OPButton;

    return-object v0
.end method

.method protected getChallenge()J
    .locals 2

    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getConfirmLockTitleResId()I
    .locals 1

    const v0, 0x7f1212ff

    return v0
.end method

.method protected getDescriptionResDisabledByAdmin()I
    .locals 1

    const v0, 0x7f1212f9

    return v0
.end method

.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method protected getErrorTextView()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0a0249

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected getExtraKeyForBiometric()Ljava/lang/String;
    .locals 1

    const-string v0, "for_face"

    return-object v0
.end method

.method protected getHeaderResDefault()I
    .locals 1

    const v0, 0x7f1212fa

    return v0
.end method

.method protected getHeaderResDisabledByAdmin()I
    .locals 1

    const v0, 0x7f1212fb

    return v0
.end method

.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0d00a7

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5e2

    return v0
.end method

.method protected getNextButton()Lcom/oneplus/lib/widget/button/OPButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    return-object v0
.end method

.method protected isDisabledByAdmin()Z
    .locals 2

    iget v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mUserId:I

    const/16 v1, 0x80

    invoke-static {p0, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onCreate$0$FaceEnrollIntroduction(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->onNextButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$FaceEnrollIntroduction(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->onSkipButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreate$2$FaceEnrollIntroduction(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->onCancelButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Lcom/google/android/setupdesign/span/LinkSpan;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    const v0, 0x7f0a025a

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    const v0, 0x7f0a0259

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mBtnCancel:Lcom/oneplus/lib/widget/button/OPButton;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mBtnNext:Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v1, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$h1dvwhkhQ5mcuoE-tW7-5f7i8wM;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$h1dvwhkhQ5mcuoE-tW7-5f7i8wM;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mBtnCancel:Lcom/oneplus/lib/widget/button/OPButton;

    const v1, 0x7f1213f5

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mBtnCancel:Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v1, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$3wGqlctgWU9ZF6ocgCuTTotrm9E;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$3wGqlctgWU9ZF6ocgCuTTotrm9E;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mBtnCancel:Lcom/oneplus/lib/widget/button/OPButton;

    const v1, 0x7f1212f3

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mBtnCancel:Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v1, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$O07lN_RXl6X_EdgukzJKRnN-Nn4;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$O07lN_RXl6X_EdgukzJKRnN-Nn4;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
