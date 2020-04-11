.class public Lcom/oneplus/lib/widget/button/OPSwitch;
.super Landroid/widget/Switch;
.source "OPSwitch.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorSceneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/lib/widget/button/OPSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/button/OPSwitch;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101043f

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/button/OPSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$style;->Oneplus_DeviceDefault_Widget_Material_CompoundButton_Switch:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/button/OPSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-static {p1, p3}, Lcom/oneplus/lib/widget/util/utils;->resolveDefStyleAttr(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x3eb

    iput v0, p0, Lcom/oneplus/lib/widget/button/OPSwitch;->mVibratorSceneId:I

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPSwitch:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPSwitch_android_radius:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/button/OPSwitch;->setRadius(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Lcom/oneplus/lib/util/OPFeaturesUtils;->isSupportXVibrate()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "vibrator"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/oneplus/lib/widget/button/OPSwitch;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method private setRadius(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/oneplus/lib/widget/button/OPSwitch;->TAG:Ljava/lang/String;

    const-string v2, "setRaidus fail , background not a rippleDrawable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/lib/util/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPSwitch;->mVibrator:Landroid/os/Vibrator;

    iget v2, p0, Lcom/oneplus/lib/widget/button/OPSwitch;->mVibratorSceneId:I

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/util/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitch;->mVibratePattern:[J

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitch;->mVibratePattern:[J

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPSwitch;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0, v1}, Lcom/oneplus/lib/util/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/Switch;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public setVibrateSceneId(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/button/OPSwitch;->mVibratorSceneId:I

    return-void
.end method
