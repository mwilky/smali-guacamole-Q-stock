.class public Lcom/android/settings/biometrics/face/FaceEnrollFinish;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "FaceEnrollFinish.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5e4

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00a6

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceEnrollFinish;->setContentView(I)V

    const v0, 0x7f1213aa

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceEnrollFinish;->setHeaderText(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollFinish;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollFinish;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollFinish;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1213a0

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/biometrics/face/-$$Lambda$BOOKfYhhJGp_5aF-pMRf7jt7tHE;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$BOOKfYhhJGp_5aF-pMRf7jt7tHE;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollFinish;)V

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    const v2, 0x7f1303e3

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method public onNextButtonClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceEnrollFinish;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollFinish;->finish()V

    return-void
.end method
