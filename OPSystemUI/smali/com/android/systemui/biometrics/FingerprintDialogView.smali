.class public Lcom/android/systemui/biometrics/FingerprintDialogView;
.super Lcom/android/systemui/biometrics/BiometricDialogView;
.source "FingerprintDialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/FingerprintDialogView$Callback;
    }
.end annotation


# instance fields
.field private mFodShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/BiometricDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/FingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FingerprintDialogView;->hideFodImmediately()V

    return-void
.end method

.method private getFodDialogImpl()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/SystemUIApplication;

    const-class v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    return-object p0
.end method

.method private hideFodImmediately()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FingerprintDialogView;->getFodDialogImpl()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->hideFodImmediately()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FingerprintDialogView;->mFodShowing:Z

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    return-void
.end method

.method private opUpdateAccentColor(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 5

    if-eqz p1, :cond_0

    sget p0, Lcom/oneplus/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {p0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p0

    const-string v0, "_R_G_L_1_G_D_0_P_0"

    const-string v1, "_R_G_L_1_G_D_1_P_0"

    const-string v2, "_R_G_L_1_G_D_2_P_0"

    const-string v3, "_R_G_L_1_G_D_3_P_0"

    const-string v4, "_R_G_L_1_G_D_4_P_0"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p1, v2, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->changePathStrokeColor(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_fp_to_error:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_error_to_fp:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_2

    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_fp_to_error:I

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    if-ne p2, v2, :cond_3

    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_fp_to_error:I

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_fp_to_error:I

    :goto_0
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getAuthenticatedAccessibilityResourceId()I
    .locals 0

    const p0, 0x104029c

    return p0
.end method

.method protected getDelayAfterAuthenticatedDurationMs()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getHintStringResourceId()I
    .locals 0

    sget p0, Lcom/android/systemui/R$string;->fingerprint_dialog_touch_sensor:I

    return p0
.end method

.method protected getIconDescriptionResourceId()I
    .locals 0

    sget p0, Lcom/android/systemui/R$string;->accessibility_fingerprint_dialog_fingerprint_icon:I

    return p0
.end method

.method protected handleResetMessage()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FingerprintDialogView;->getHintStringResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    iget p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTextColor:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected needWrap(Lcom/android/systemui/biometrics/DialogViewCallback;)Lcom/android/systemui/biometrics/DialogViewCallback;
    .locals 1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/biometrics/FingerprintDialogView$Callback;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/biometrics/FingerprintDialogView$Callback;-><init>(Lcom/android/systemui/biometrics/FingerprintDialogView;Lcom/android/systemui/biometrics/DialogViewCallback;)V

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->needWrap(Lcom/android/systemui/biometrics/DialogViewCallback;)Lcom/android/systemui/biometrics/DialogViewCallback;

    return-object p1
.end method

.method protected onBiometricPromptReady()V
    .locals 3

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "key_cookie"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "FingerprintDialogView"

    const-string v0, "onBiometricPromptReady: cookie must not be zero."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FingerprintDialogView;->getFodDialogImpl()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->onBiometricPromptReady(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FingerprintDialogView;->mFodShowing:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    return-void
.end method

.method protected shouldAnimateForTransition(II)Z
    .locals 3

    const/4 p0, 0x2

    const/4 v0, 0x1

    if-ne p2, p0, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    if-ne p2, v0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    return v2

    :cond_2
    if-ne p1, p0, :cond_3

    if-ne p2, v1, :cond_3

    return v2

    :cond_3
    if-ne p2, v0, :cond_4

    :cond_4
    return v2
.end method

.method protected shouldGrayAreaDismissDialog()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected updateIcon(II)V
    .locals 3

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    const-string v1, "FingerprintDialogView"

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIcon "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/biometrics/FingerprintDialogView;->mFodShowing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    sget p2, Lcom/android/systemui/R$drawable;->fp_icon_default_disable:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/android/systemui/R$color;->biometric_fingerprint_error_color:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/FingerprintDialogView;->mFodShowing:Z

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/FingerprintDialogView;->mFodShowing:Z

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/FingerprintDialogView;->getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Animation not found, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/systemui/biometrics/FingerprintDialogView;->opUpdateAccentColor(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/FingerprintDialogView;->shouldAnimateForTransition(II)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_7
    return-void
.end method
