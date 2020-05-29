.class public Lcom/oneplus/systemui/biometrics/OpFodWindowManager;
.super Ljava/lang/Object;
.source "OpFodWindowManager.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustHideCutout:Z

.field private mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

.field private mDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

.field private mFpLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mHighlightView:Landroid/view/View;

.field private mHighlightViewParams:Landroid/view/WindowManager$LayoutParams;

.field private mIs2KDisplay:Z

.field private mTransparentIconExpand:Z

.field private mTransparentIconParams:Landroid/view/WindowManager$LayoutParams;

.field private mTransparentIconSize:I

.field private mTransparentIconView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mWindowToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mIs2KDisplay:Z

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iput-object p3, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->getFpLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mFpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->getHighlightViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mHighlightViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconParams:Landroid/view/WindowManager$LayoutParams;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setFodWindowManager(Lcom/oneplus/systemui/biometrics/OpFodWindowManager;)V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mCustHideCutout:Z

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "metrics.width = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpFodWindowManager"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 p2, 0x5a0

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mIs2KDisplay:Z

    return-void
.end method

.method private getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;
    .locals 14

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardAuthenticating()Z

    move-result v0

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getCurrentOwner()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPFingerprintView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "com.oneplus.applocker"

    const-string v5, "OpFodWindowManager"

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mFpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_3

    if-nez v0, :cond_0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v6, v7

    :cond_1
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    sget-boolean p1, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCustomLayoutParams: fpLayoutParams screenOrientation= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mFpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mFpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0

    :cond_3
    const-string v3, "OPFingerprintVDpressed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mHighlightViewParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_7

    if-nez v0, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move v6, v7

    :cond_5
    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    sget-boolean p1, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCustomLayoutParams: highlightLayoutParams screenOrientation= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mHighlightViewParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mHighlightViewParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0

    :cond_7
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v8}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x901

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x902

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v10, 0x100000

    or-int/2addr v9, v10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_9
    :goto_0
    const v9, 0x1000518

    iget v10, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result v10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v9, -0x2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v7, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v7, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v9, 0x11

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v9, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v9

    const/16 v11, 0x30

    if-eqz v9, :cond_12

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->is2KDisplay()Z

    move-result v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCustomLayoutParams, mIs2KDisplay:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->is2KDisplay()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", OpUtils.is2KResolution():"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iput v7, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v9, :cond_a

    sget v3, Lcom/android/systemui/R$dimen;->fp_animation_height_2k:I

    goto :goto_1

    :cond_a
    sget v3, Lcom/android/systemui/R$dimen;->fp_animation_height_1080p:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v10, :cond_b

    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_ss_y:I

    goto :goto_2

    :cond_b
    if-eqz v9, :cond_c

    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y_2k:I

    goto :goto_2

    :cond_c
    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y_1080p:I

    :goto_2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v11, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_8

    :cond_d
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v10, :cond_e

    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_ss_width:I

    goto :goto_3

    :cond_e
    if-eqz v9, :cond_f

    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_2k:I

    goto :goto_3

    :cond_f
    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_1080p:I

    :goto_3
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v10, :cond_10

    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_ss_location_y:I

    goto :goto_4

    :cond_10
    if-eqz v9, :cond_11

    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_location_y_2k:I

    goto :goto_4

    :cond_11
    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_location_y_1080p:I

    :goto_4
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v11, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_8

    :cond_12
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iput v7, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->fp_animation_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v10, :cond_13

    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_ss_y:I

    goto :goto_5

    :cond_13
    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y:I

    :goto_5
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v11, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_8

    :cond_14
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v10, :cond_15

    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_ss_width:I

    goto :goto_6

    :cond_15
    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width:I

    :goto_6
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v10, :cond_16

    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_ss_location_y:I

    goto :goto_7

    :cond_16
    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_location_y:I

    :goto_7
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v11, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_17
    :goto_8
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->getCutoutPathdataHeight(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_18
    if-nez v0, :cond_19

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    move v6, v7

    :cond_1a
    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const v0, 0x50e0013

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v8, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCustomLayoutParams owner:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x402

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    return-object v8
.end method

.method private getHighlightViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    const-string v0, "OPFingerprintVDpressed"

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method private getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->is2KDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_size_2k:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_size_1080p:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconSize:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconSize:I

    :goto_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconSize:I

    const/16 v4, 0x901

    const v5, 0x1000108

    const/4 v6, -0x3

    move-object v1, v0

    move v2, v3

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "FingerprintTransparentIcon"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result v1

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_2

    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_ss_location_y:I

    goto :goto_2

    :cond_2
    sget v3, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y:I

    :goto_2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_3

    sget v1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_ss_location_y:I

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->is2KDisplay()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y_2k:I

    goto :goto_3

    :cond_4
    sget v1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y_1080p:I

    :goto_3
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_6

    sget v1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_ss_location_y:I

    goto :goto_4

    :cond_6
    sget v1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y:I

    :goto_4
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_5
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->getCutoutPathdataHeight(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_7
    const/4 p0, -0x1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    return-object v0
.end method


# virtual methods
.method public addFpViewToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->getFpLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const-string p0, "OpFodWindowManager"

    const-string v0, "can\'t add fp view window."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public addHighlightViewToWindow(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "OpFodWindowManager"

    const-string v1, "addHighlightViewToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mHighlightView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->getHighlightViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public addTransparentIconViewToWindow(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 2

    const-string v0, "OpFodWindowManager"

    if-nez p1, :cond_0

    const-string p0, "addView view is null return."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mHighlightView:Landroid/view/View;

    if-eq v1, p1, :cond_4

    instance-of v1, p1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconView:Landroid/view/View;

    if-eq v1, p1, :cond_3

    instance-of v1, p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unmatch view added. "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->addTransparentIconViewToWindow(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->addHighlightViewToWindow(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method public getFpLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    const-string v0, "OPFingerprintView"

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public handleConfigurationChange()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mFpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "OPFingerprintView"

    invoke-direct {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mFpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewLayoutParams height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mFpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFodWindowManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mFpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mHighlightViewParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "OPFingerprintVDpressed"

    invoke-direct {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mHighlightViewParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mHighlightView:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mHighlightView:Landroid/view/View;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mHighlightViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconExpand:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconView:Landroid/view/View;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public handleUpdateTransparentIconLayoutParams(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTransparentIconLayoutParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFodWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconExpand:Z

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p1, 0x0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 p1, 0x1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :cond_1
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconView:Landroid/view/View;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public is2KDisplay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mIs2KDisplay:Z

    return p0
.end method

.method public isTransparentViewExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconExpand:Z

    return p0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 7

    const-string v0, "OpFodWindowManager"

    const-string v1, "onDensityOrFontScaleChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-nez v1, :cond_0

    const-string p0, "onDensityOrFontScaleChanged mDialogView doesn\'t init yet"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz v1, :cond_5

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    const/16 v3, 0x5a0

    if-eqz v2, :cond_3

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v6, v3, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mIs2KDisplay:Z

    goto :goto_3

    :cond_3
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v6, v3, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mIs2KDisplay:Z

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "metrics.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", metrics.height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isLandscape = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is2KDisplay = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mIs2KDisplay:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mIs2KDisplay:Z

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateLayoutDimension(ZF)V

    :cond_5
    return-void
.end method

.method public onOverlayChanged()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOverlayChanged be trigger in OpBiometricDialogImpl, mCustHideCutout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mCustHideCutout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", OpUtils.isCutoutHide(mContext):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFodWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mCustHideCutout:Z

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v2

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mCustHideCutout:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    const/16 v3, 0x5a0

    if-eqz v2, :cond_2

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v6, v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mIs2KDisplay:Z

    goto :goto_3

    :cond_2
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v6, v3, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mIs2KDisplay:Z

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOverlayChanged, metrics.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", metrics.height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isLandscape = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is2KDisplay = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mIs2KDisplay:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz v1, :cond_4

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mIs2KDisplay:Z

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-virtual {v1, p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateLayoutDimension(ZF)V

    :cond_4
    return-void
.end method

.method public removeHighlightView()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mHighlightView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpFodWindowManager"

    const-string v1, "removeHighlightView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mHighlightView:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeTransparentIconView()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpFodWindowManager"

    const-string v1, "removeTransparentIconView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    const-string v0, "OpFodWindowManager"

    if-nez p1, :cond_0

    const-string p0, "removeView view is null return."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mHighlightView:Landroid/view/View;

    if-eq v1, p1, :cond_4

    instance-of v1, p1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->mTransparentIconView:Landroid/view/View;

    if-eq v1, p1, :cond_3

    instance-of v1, p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unmatch view removed. "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->removeTransparentIconView()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->removeHighlightView()V

    :goto_2
    return-void
.end method
