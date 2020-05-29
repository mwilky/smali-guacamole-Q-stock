.class public Lcom/oneplus/systemui/OpBatteryMeterView;
.super Landroid/widget/LinearLayout;
.source "OpBatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field protected mBatteryDashChargeView:Lcom/oneplus/battery/OpBatteryDashChargeView;

.field protected mBatteryStyle:I

.field protected mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

.field protected mFastCharge:Z

.field protected mFontScale:F

.field protected mPowerSaveEnabled:Z

.field private mViewPositionType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mViewPositionType:I

    iput-boolean p1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mFastCharge:Z

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mFontScale:F

    iput p1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mBatteryStyle:I

    iput-boolean p1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mPowerSaveEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mViewPositionType:I

    iput-boolean p1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mFastCharge:Z

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mFontScale:F

    iput p1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mBatteryStyle:I

    iput-boolean p1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mPowerSaveEnabled:Z

    return-void
.end method

.method private updateAllBatteryColors()V
    .locals 3

    const-class v0, Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "updateAllBatteryColors"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mPowerSaveEnabled:Z

    invoke-virtual {p0}, Lcom/oneplus/systemui/OpBatteryMeterView;->updateViews()V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPowerSaveEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mPowerSaveEnabled:Z

    return-void
.end method

.method public setViewPositionType(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mViewPositionType:I

    return-void
.end method

.method protected updateColors(II)V
    .locals 2

    iget v0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mViewPositionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, -0x1

    const p2, -0x7f000001

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mBatteryDashChargeView:Lcom/oneplus/battery/OpBatteryDashChargeView;

    invoke-virtual {v0, p1}, Lcom/oneplus/battery/OpBatteryDashChargeView;->setIconTint(I)V

    iget-object p0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {p0, p1, p2, p1}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setColors(III)V

    return-void
.end method

.method protected updateViews()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    iget-boolean v1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mPowerSaveEnabled:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setPowerSaveEnabled(Z)V

    invoke-direct {p0}, Lcom/oneplus/systemui/OpBatteryMeterView;->updateAllBatteryColors()V

    return-void
.end method
