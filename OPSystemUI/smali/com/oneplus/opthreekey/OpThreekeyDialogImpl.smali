.class public Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;
.super Ljava/lang/Object;
.source "OpThreekeyDialogImpl.java"

# interfaces
.implements Lcom/oneplus/opthreekey/OpThreekeyDialog;
.implements Lcom/oneplus/opzenmode/OpZenModeController$Callback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static TAG:Ljava/lang/String; = "OpThreekeyDialogImpl"


# instance fields
.field private mAccentColor:I

.field private mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private mDensity:I

.field private mDialog:Landroid/app/Dialog;

.field private mDialogPosition:I

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mHandler:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;

.field private mListener:Lcom/oneplus/opthreekey/OpThreekeyDialog$UserActivityListener;

.field private mOpZenModeController:Lcom/oneplus/opzenmode/OpZenModeController;

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationType:I

.field private mShowing:Z

.field private mThemeBgColor:I

.field private mThemeColorMode:I

.field private mThemeIconColor:I

.field private mThemeTextColor:I

.field private mThreeKeyIcon:Landroid/widget/ImageView;

.field private mThreeKeyText:Landroid/widget/TextView;

.field private mThreeKeystate:I

.field private mWindow:Landroid/view/Window;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;-><init>(Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;)V

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mShowing:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeystate:I

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mOrientationType:I

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThemeIconColor:I

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThemeTextColor:I

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThemeBgColor:I

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mAccentColor:I

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThemeColorMode:I

    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mContext:Landroid/content/Context;

    const-class p1, Lcom/oneplus/opzenmode/OpZenModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/opzenmode/OpZenModeController;

    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mOpZenModeController:Lcom/oneplus/opzenmode/OpZenModeController;

    new-instance p1, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$1;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$1;-><init>(Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    const-class p1, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->checkOrientationType()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->dismissH(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->stateChange(I)V

    return-void
.end method

.method private checkOrientationType()V
    .locals 4

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mOrientationType:I

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Orientype to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mOrientationType:I

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->updateThreekeyLayout()V

    :cond_1
    return-void
.end method

.method private computeTimeoutH()I
    .locals 0

    const/16 p0, 0xbb8

    return p0
.end method

.method private dismissH(I)V
    .locals 1

    sget-boolean p1, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->DEBUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v0, "dismissH r="

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mShowing:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->registerOrientationListener(Z)V

    iput-boolean p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mShowing:Z

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private getCornerGradientDrawable(IZI)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->getTheekeyCornerRadii(Landroid/content/Context;ZI)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-object p1
.end method

.method private getCuttingEdgeCornerRadiusValue(Landroid/content/Context;)F
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->shape_corner_radius:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->shape_corner_radius_for_check_roundedrect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->shape_corner_radius_for_check_teardrop:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->shape_corner_radius_for_check_squircle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->shape_corner_radius_cutting_edge_circle:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->shape_corner_radius_cutting_edge_roundedrect:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    int-to-float v3, p0

    goto :goto_1

    :cond_0
    cmpl-float v0, p0, v1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->shape_corner_radius_cutting_edge_teardrop:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_1
    cmpl-float p0, p0, v2

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->shape_corner_radius_cutting_edge_squircle:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_2
    :goto_1
    sget-boolean p0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCornerRadiusValue, value:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3
.end method

.method private getMiddleCuttingEdgeCornerRadiusValue(Landroid/content/Context;)F
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->shape_corner_radius:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->shape_corner_radius_for_check_roundedrect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->shape_corner_radius_for_check_teardrop:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->shape_corner_radius_for_check_squircle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->op_threekey_dialog_inner_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->shape_corner_radius_cutting_edge_roundedrect:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    int-to-float v3, p0

    goto :goto_1

    :cond_0
    cmpl-float v0, p0, v1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    cmpl-float p0, p0, v2

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->shape_corner_radius_cutting_edge_squircle:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_2
    :goto_1
    sget-boolean p0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMiddleCuttingEdgeCornerRadiusValue, value:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3
.end method

.method private getTheekeyCornerRadii(Landroid/content/Context;ZI)[F
    .locals 16

    move/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_threekey_dialog_inner_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v4, 0x1

    aput v1, v2, v4

    const/4 v5, 0x2

    aput v1, v2, v5

    const/4 v6, 0x3

    aput v1, v2, v6

    const/4 v7, 0x4

    aput v1, v2, v7

    const/4 v8, 0x5

    aput v1, v2, v8

    const/4 v9, 0x6

    aput v1, v2, v9

    const/4 v10, 0x7

    aput v1, v2, v10

    invoke-direct/range {p0 .. p1}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->getCuttingEdgeCornerRadiusValue(Landroid/content/Context;)F

    move-result v11

    invoke-direct/range {p0 .. p1}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->getMiddleCuttingEdgeCornerRadiusValue(Landroid/content/Context;)F

    move-result v12

    sget-boolean v13, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v13, :cond_0

    sget-object v13, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getTheekeyCornerRadii, radius:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " cuttingEdgeCornerRadii:"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " cuttingEdgeMiddleCornerRadii:"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v1, p0

    iget v1, v1, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mOrientationType:I

    if-nez v1, :cond_8

    if-eqz p2, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_1

    goto :goto_3

    :cond_1
    aput v11, v2, v5

    aput v11, v2, v6

    goto :goto_3

    :cond_2
    :goto_0
    array-length v0, v2

    if-ge v3, v0, :cond_9

    aput v12, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    aput v11, v2, v7

    aput v11, v2, v8

    goto :goto_3

    :cond_4
    if-eq v0, v4, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v6, :cond_5

    goto :goto_3

    :cond_5
    aput v11, v2, v3

    aput v11, v2, v4

    goto :goto_3

    :cond_6
    :goto_1
    array-length v0, v2

    if-ge v3, v0, :cond_9

    aput v12, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    aput v11, v2, v9

    aput v11, v2, v10

    goto :goto_3

    :cond_8
    :goto_2
    array-length v0, v2

    if-ge v3, v0, :cond_9

    aput v12, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    return-object v2
.end method

.method private initDialog()V
    .locals 4

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mShowing:Z

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const v3, 0x10c0128

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mWindowType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-class v1, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mDialogPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    sget v1, Lcom/android/systemui/R$layout;->op_threekey_dialog:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    sget v1, Lcom/android/systemui/R$id;->threekey_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    sget v1, Lcom/android/systemui/R$id;->threekey_icon:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    sget v1, Lcom/android/systemui/R$id;->threekey_text:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->updateTheme(Z)V

    return-void
.end method

.method private registerOrientationListener(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v0, "Can detect orientation"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v0, "Cannot detect orientation"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    return-void
.end method

.method private showH(I)V
    .locals 3

    sget-boolean p1, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->DEBUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v0, "showH r="

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->rescheduleTimeoutH()V

    iget-boolean p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mShowing:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->updateTheme(Z)V

    invoke-direct {p0, v0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->registerOrientationListener(Z)V

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->checkOrientationType()V

    sget-object p1, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showH mOrientationType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mOrientationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mShowing:Z

    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mListener:Lcom/oneplus/opthreekey/OpThreekeyDialog$UserActivityListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/oneplus/opthreekey/OpThreekeyDialog$UserActivityListener;->onThreekeyStateUserActivity()V

    :cond_2
    return-void
.end method

.method private stateChange(I)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeystate:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeystate:I

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->updateThreekeyLayout()V

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mListener:Lcom/oneplus/opthreekey/OpThreekeyDialog$UserActivityListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/oneplus/opthreekey/OpThreekeyDialog$UserActivityListener;->onThreekeyStateUserActivity()V

    :cond_1
    return-void
.end method

.method private updateTheme(Z)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThemeColorMode:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mAccentColor:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    sget-boolean v3, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTheme change"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " force:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThemeColorMode:I

    iput v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mAccentColor:I

    invoke-virtual {p0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->applyTheme()V

    :cond_4
    return-void
.end method

.method private updateThreekeyLayout()V
    .locals 15

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v1, v7, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    move v1, v4

    move v8, v1

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/systemui/R$drawable;->op_ic_ring:I

    sget v8, Lcom/android/systemui/R$string;->volume_footer_ring:I

    goto :goto_0

    :cond_3
    sget v1, Lcom/android/systemui/R$drawable;->op_ic_vibrate:I

    sget v8, Lcom/android/systemui/R$string;->volume_vibrate:I

    goto :goto_0

    :cond_4
    sget v1, Lcom/android/systemui/R$drawable;->op_ic_silence:I

    sget v8, Lcom/android/systemui/R$string;->volume_footer_slient:I

    :goto_0
    sget v9, Lcom/android/systemui/R$integer;->oneplus_config_threekey_type:I

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-ne v9, v7, :cond_5

    move v9, v4

    goto :goto_1

    :cond_5
    move v9, v7

    :goto_1
    iget v10, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mOrientationType:I

    const/16 v11, 0x53

    const/16 v12, 0x33

    const v13, 0x105020e

    if-eq v10, v7, :cond_15

    const/16 v14, 0x55

    if-eq v10, v6, :cond_10

    const/16 v11, 0x35

    if-eq v10, v5, :cond_a

    if-eqz v9, :cond_6

    goto :goto_2

    :cond_6
    move v11, v12

    :goto_2
    sget v3, Lcom/android/systemui/R$dimen;->three_key_up_dialog_position_deep:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v10, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v10, v7, :cond_7

    sget v2, Lcom/android/systemui/R$dimen;->three_key_up_dialog_position:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lcom/android/systemui/R$drawable;->dialog_threekey_up_bg:I

    move v6, v7

    goto/16 :goto_8

    :cond_7
    if-ne v10, v6, :cond_8

    sget v2, Lcom/android/systemui/R$dimen;->three_key_middle_dialog_position:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lcom/android/systemui/R$drawable;->dialog_threekey_middle_bg:I

    goto/16 :goto_8

    :cond_8
    if-ne v10, v5, :cond_9

    sget v2, Lcom/android/systemui/R$dimen;->three_key_down_dialog_position:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lcom/android/systemui/R$drawable;->dialog_threekey_down_bg:I

    move v6, v5

    goto/16 :goto_8

    :cond_9
    move v6, v4

    goto/16 :goto_8

    :cond_a
    if-eqz v9, :cond_b

    move v11, v14

    :cond_b
    sget v2, Lcom/android/systemui/R$dimen;->three_key_up_dialog_position_deep_land:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-nez v9, :cond_c

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v4

    :cond_c
    iget v4, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v4, v7, :cond_d

    sget v3, Lcom/android/systemui/R$dimen;->three_key_up_dialog_position_l:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_3

    :cond_d
    if-ne v4, v6, :cond_e

    sget v3, Lcom/android/systemui/R$dimen;->three_key_middle_dialog_position_l:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_3

    :cond_e
    if-ne v4, v5, :cond_f

    sget v3, Lcom/android/systemui/R$dimen;->three_key_down_dialog_position_l:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_f
    :goto_3
    sget v4, Lcom/android/systemui/R$drawable;->dialog_threekey_middle_bg:I

    goto/16 :goto_8

    :cond_10
    if-eqz v9, :cond_11

    goto :goto_4

    :cond_11
    move v11, v14

    :goto_4
    sget v3, Lcom/android/systemui/R$dimen;->three_key_up_dialog_position_deep:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v4, v7, :cond_12

    sget v2, Lcom/android/systemui/R$dimen;->three_key_up_dialog_position:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_5
    add-int/2addr v2, v4

    goto :goto_6

    :cond_12
    if-ne v4, v6, :cond_13

    sget v2, Lcom/android/systemui/R$dimen;->three_key_middle_dialog_position:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_5

    :cond_13
    if-ne v4, v5, :cond_14

    sget v2, Lcom/android/systemui/R$dimen;->three_key_down_dialog_position:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_5

    :cond_14
    :goto_6
    sget v4, Lcom/android/systemui/R$drawable;->dialog_threekey_middle_bg:I

    goto :goto_8

    :cond_15
    if-eqz v9, :cond_16

    move v11, v12

    :cond_16
    sget v2, Lcom/android/systemui/R$dimen;->three_key_up_dialog_position_deep_land:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz v9, :cond_17

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v4

    :cond_17
    iget v4, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v4, v7, :cond_18

    sget v3, Lcom/android/systemui/R$dimen;->three_key_up_dialog_position_l:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_7

    :cond_18
    if-ne v4, v6, :cond_19

    sget v3, Lcom/android/systemui/R$dimen;->three_key_middle_dialog_position_l:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_7

    :cond_19
    if-ne v4, v5, :cond_1a

    sget v3, Lcom/android/systemui/R$dimen;->three_key_down_dialog_position_l:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_1a
    :goto_7
    sget v4, Lcom/android/systemui/R$drawable;->dialog_threekey_middle_bg:I

    :goto_8
    iget v5, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1f

    iget-object v5, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_1b

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1b
    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    if-eqz v1, :cond_1d

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v5, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v5, v7, :cond_1c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1c
    iget-object v5, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1e

    invoke-direct {p0, v4, v9, v6}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->getCornerGradientDrawable(IZI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1e
    iput v2, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mDialogPosition:I

    :cond_1f
    sget v1, Lcom/android/systemui/R$dimen;->op_threekey_dialog_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v11, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v3, v0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->rescheduleTimeoutH()V

    sget-boolean v0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateThreekeyLayout mThreeKeystate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeystate:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method


# virtual methods
.method public applyTheme()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThemeColorMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThemeIconColor:I

    sget v1, Lcom/android/systemui/R$color;->oneplus_contorl_text_color_primary_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThemeTextColor:I

    sget v1, Lcom/android/systemui/R$color;->oneplus_contorl_bg_color_steppers_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThemeBgColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThemeIconColor:I

    sget v1, Lcom/android/systemui/R$color;->oneplus_contorl_text_color_primary_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThemeTextColor:I

    sget v1, Lcom/android/systemui/R$color;->oneplus_contorl_bg_color_steppers_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThemeBgColor:I

    :goto_0
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThemeBgColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThemeTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    iget p0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThemeIconColor:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public destroy()V
    .locals 2

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mOpZenModeController:Lcom/oneplus/opzenmode/OpZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public init(ILcom/oneplus/opthreekey/OpThreekeyDialog$UserActivityListener;)V
    .locals 2

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mWindowType:I

    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mDensity:I

    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mOpZenModeController:Lcom/oneplus/opzenmode/OpZenModeController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mListener:Lcom/oneplus/opthreekey/OpThreekeyDialog$UserActivityListener;

    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->initDialog()V

    sget-object p1, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string p2, "in OpThreekeyDialog init mOpThreekeyNavigationDialog.getInstance"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->getInstance(Landroid/content/Context;)Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->updateTheme(Z)V

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->updateThreekeyLayout()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->dismissH(I)V

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->initDialog()V

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->updateThreekeyLayout()V

    return-void
.end method

.method public onThreeKeyStatus(I)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThreeKeyStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget p1, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->show(I)V

    :cond_1
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->computeTimeoutH()I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mListener:Lcom/oneplus/opthreekey/OpThreekeyDialog$UserActivityListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/oneplus/opthreekey/OpThreekeyDialog$UserActivityListener;->onThreekeyStateUserActivity()V

    :cond_1
    return-void
.end method

.method public show(I)V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyDialogImpl;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyDialogImpl$H;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
