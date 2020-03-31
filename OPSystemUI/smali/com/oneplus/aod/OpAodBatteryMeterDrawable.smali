.class public Lcom/oneplus/aod/OpAodBatteryMeterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OpAodBatteryMeterDrawable.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OpAodBatteryMeterDrawable"


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private mBatteryStyle:I

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private mChargeColor:I

.field private mCharging:Z

.field private mCircleBackPaint:Landroid/graphics/Paint;

.field private mCircleChargingPaint:Landroid/graphics/Paint;

.field private mCircleFrontPaint:Landroid/graphics/Paint;

.field private final mCircleRect:Landroid/graphics/RectF;

.field private mCircleSize:I

.field private final mClipPath:Landroid/graphics/Path;

.field private final mColors:[I

.field private final mContext:Landroid/content/Context;

.field private final mCriticalLevel:I

.field private mCustomColor:I

.field private mDarkModeBackgroundColor:I

.field private mDarkModeFillColor:I

.field private final mFrame:Landroid/graphics/RectF;

.field private final mFramePaint:Landroid/graphics/Paint;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIconTint:I

.field private mInStatusBar:Z

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLevel:I

.field private mLightModeBackgroundColor:I

.field private mLightModeFillColor:I

.field private mListening:Z

.field private mLog:Z

.field private mOldDarkIntensity:F

.field private mPluggedIn:Z

.field private final mPlusFrame:Landroid/graphics/RectF;

.field private final mPlusPaint:Landroid/graphics/Paint;

.field private final mPlusPath:Landroid/graphics/Path;

.field private final mPlusPoints:[F

.field private mPowerSaveEnabled:Z

.field private final mSettingObserver:Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;

.field private final mShapePath:Landroid/graphics/Path;

.field private mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field private mUseCustomColor:Z

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private resetUITimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 10

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIconTint:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mOldDarkIntensity:F

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    new-instance v2, Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;-><init>(Lcom/oneplus/aod/OpAodBatteryMeterDrawable;)V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLevel:I

    new-instance v0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable$1;-><init>(Lcom/oneplus/aod/OpAodBatteryMeterDrawable;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryStyle:I

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLog:Z

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->resetUITimes:I

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLastHeight:I

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLastWidth:I

    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mInStatusBar:Z

    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/android/systemui/R$array;->batterymeter_color_levels:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$array;->batterymeter_color_values:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mColors:[I

    move v5, v0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_0

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v8, v5, 0x2

    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    aput v9, v7, v8

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mColors:[I

    add-int/2addr v8, v6

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    aput v6, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->updateShowPercent()V

    sget v0, Lcom/android/systemui/R$string;->battery_meter_very_low_overlay_symbol:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCriticalLevel:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$fraction;->battery_button_height_fraction:I

    invoke-virtual {v0, v2, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonHeightFraction:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$fraction;->battery_subpixel_smoothing_left:I

    invoke-virtual {v0, v2, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$fraction;->battery_subpixel_smoothing_right:I

    invoke-virtual {v0, v2, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mSubpixelSmoothingRight:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mColors:[I

    aget v2, v2, v6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget v0, Lcom/android/systemui/R$color;->batterymeter_charge_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mChargeColor:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/systemui/R$color;->batterymeter_bolt_color:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p2}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPoints:[F

    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    invoke-static {p2}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->loadPlusPoints(Landroid/content/res/Resources;)[F

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPoints:[F

    sget p2, Lcom/android/systemui/R$color;->dark_mode_icon_color_dual_tone_background:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mDarkModeBackgroundColor:I

    sget p2, Lcom/android/systemui/R$color;->dark_mode_icon_color_dual_tone_fill:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mDarkModeFillColor:I

    sget p2, Lcom/android/systemui/R$color;->light_mode_icon_color_dual_tone_background:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLightModeBackgroundColor:I

    sget p2, Lcom/android/systemui/R$color;->light_mode_icon_color_dual_tone_fill:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLightModeFillColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->battery_icon_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIntrinsicWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->battery_icon_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIntrinsicHeight:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAodBatteryMeterDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->updateShowPercent()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpAodBatteryMeterDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;II)V
    .locals 12

    invoke-direct {p0, p2, p3}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->initCircleSize(II)V

    iget-object p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    iget-boolean p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mChargeColor:I

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLevel:I

    invoke-direct {p0, p3}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->getColorForLevel(I)I

    move-result p3

    :goto_0
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    iget-boolean p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz p3, :cond_1

    iget p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mChargeColor:I

    goto :goto_1

    :cond_1
    iget p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLevel:I

    invoke-direct {p0, p3}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->getColorForLevel(I)I

    move-result p3

    :goto_1
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    const/high16 v8, 0x43870000    # 270.0f

    const p2, 0x40666666    # 3.6f

    iget p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLevel:I

    int-to-float p3, p3

    mul-float v9, p3, p2

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, v0

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p3, v0

    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private getColorForLevel(I)I
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mUseCustomColor:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCustomColor:I

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mColors:[I

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget p0, p0, p1

    return p0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mColors:[I

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    if-gt p1, v1, :cond_3

    array-length p1, v2

    add-int/lit8 p1, p1, -0x2

    if-ne v0, p1, :cond_2

    iget p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIconTint:I

    return p0

    :cond_2
    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    :cond_4
    return v1
.end method

.method private initCircleSize(II)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleSize:I

    iget p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleSize:I

    int-to-float p1, p1

    const/high16 p2, 0x40d00000    # 6.5f

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, 0x0

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float v0, p2, p1

    iget v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleSize:I

    int-to-float v2, v1

    sub-float/2addr v2, p1

    add-float/2addr v2, p2

    int-to-float p2, v1

    sub-float/2addr p2, p1

    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p1, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 7

    sget v0, Lcom/android/systemui/R$array;->batterymeter_bolt_points:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    aget v4, p0, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v4, v1, 0x1

    aget v4, p0, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    array-length v1, p0

    new-array v1, v1, [F

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_2

    aget v4, p0, v0

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    aput v4, v1, v0

    add-int/lit8 v4, v0, 0x1

    aget v5, p0, v4

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string v0, "max X or Y is zero!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method private static loadPlusPoints(Landroid/content/res/Resources;)[F
    .locals 7

    sget v0, Lcom/android/systemui/R$array;->batterymeter_plus_points:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    aget v4, p0, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v4, v1, 0x1

    aget v4, p0, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    array-length v1, p0

    new-array v1, v1, [F

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_2

    aget v4, p0, v0

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    aput v4, v1, v0

    add-int/lit8 v4, v0, 0x1

    aget v5, p0, v4

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string v0, "max X or Y is zero!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method private postInvalidate()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postInvalidate(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateShowPercent()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "status_bar_show_battery_percent"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShowPercent:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-boolean v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mInStatusBar:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->resetUITimes:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string v1, "re-draw since have padding"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->resetUITimes:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->resetUITimes:I

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->postInvalidate()V

    :cond_1
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLevel:I

    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLog:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "draw, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryStyle:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCharging:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShowPercent:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mListening:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLevel:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHeight:I

    const v4, 0x3f27b961

    int-to-float v5, v2

    mul-float/2addr v5, v4

    float-to-int v4, v5

    iget v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWidth:I

    sub-int/2addr v5, v4

    const/4 v6, 0x2

    div-int/2addr v5, v6

    int-to-float v7, v2

    iget v8, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonHeightFraction:F

    mul-float/2addr v8, v7

    float-to-int v8, v8

    iget-object v9, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    int-to-float v10, v4

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11, v10, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    int-to-float v5, v5

    invoke-virtual {v7, v5, v11}, Landroid/graphics/RectF;->offset(FF)V

    iget v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryStyle:I

    if-eq v5, v3, :cond_12

    if-eq v5, v6, :cond_11

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->top:F

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v5, v9

    iget-object v9, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    int-to-float v8, v8

    add-float/2addr v9, v8

    invoke-virtual {v2, v4, v7, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v4, v7

    iput v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v8

    iput v4, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v7

    iput v4, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v7

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    iget-boolean v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mChargeColor:I

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v4

    :goto_0
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0x60

    const/high16 v4, 0x3f800000    # 1.0f

    if-lt v0, v2, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCriticalLevel:I

    if-gt v0, v2, :cond_6

    move v1, v11

    :cond_6
    :goto_1
    cmpl-float v2, v1, v4

    if-nez v2, :cond_7

    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float v1, v4, v1

    mul-float/2addr v2, v1

    add-float v1, v5, v2

    :goto_2
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->right:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->right:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->right:F

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-boolean v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v2, v7

    add-float/2addr v4, v2

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v9, 0x40c00000    # 6.0f

    div-float/2addr v2, v9

    add-float/2addr v8, v2

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v7

    sub-float/2addr v9, v2

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v2, v10

    sub-float/2addr v7, v2

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v4

    if-nez v10, :cond_8

    iget v10, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v8

    if-nez v10, :cond_8

    iget v10, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v10, v10, v9

    if-nez v10, :cond_8

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_a

    :cond_8
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v8, v9, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v4, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPoints:[F

    aget v8, v8, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v8, v4, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPoints:[F

    aget v9, v9, v3

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_3
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPoints:[F

    array-length v4, v2

    if-ge v6, v4, :cond_9

    iget-object v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    aget v2, v2, v6

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v2, v7

    add-float/2addr v8, v2

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPoints:[F

    add-int/lit8 v10, v6, 0x1

    aget v9, v9, v10

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v9, v2

    add-float/2addr v7, v9

    invoke-virtual {v4, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_3

    :cond_9
    iget-object v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    aget v2, v2, v5

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v2, v5

    add-float/2addr v7, v2

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPoints:[F

    aget v3, v6, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v3, v2

    add-float/2addr v5, v3

    invoke-virtual {v4, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_a
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_5

    :cond_b
    iget-boolean v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v2, v7

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v2, v8

    iget-object v8, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v8, v2

    div-float/2addr v8, v7

    add-float/2addr v9, v8

    iget-object v8, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v10, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    sub-float/2addr v8, v2

    div-float/2addr v8, v7

    add-float/2addr v10, v8

    iget-object v8, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v12, v8, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v8, v2

    div-float/2addr v8, v7

    sub-float/2addr v12, v8

    iget-object v8, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    sub-float/2addr v8, v2

    div-float/2addr v8, v7

    sub-float/2addr v13, v8

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_c

    iget v7, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_c

    iget v7, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v12

    if-nez v7, :cond_c

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v13

    if-eqz v2, :cond_e

    :cond_c
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v2, v9, v10, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPoints:[F

    aget v9, v9, v5

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v9, v7, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPoints:[F

    aget v10, v10, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_4
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPoints:[F

    array-length v7, v2

    if-ge v6, v7, :cond_d

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    aget v2, v2, v6

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v2, v8

    add-float/2addr v9, v2

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPoints:[F

    add-int/lit8 v12, v6, 0x1

    aget v10, v10, v12

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v10, v2

    add-float/2addr v8, v10

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_4

    :cond_d
    iget-object v6, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    aget v2, v2, v5

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v2, v5

    add-float/2addr v8, v2

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPoints:[F

    aget v3, v7, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v3, v2

    add-float/2addr v5, v3

    invoke-virtual {v6, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_e
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v3, v1

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v2

    div-float/2addr v5, v3

    invoke-static {v5, v11}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_f

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    :cond_f
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_10
    :goto_5
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iput v1, v2, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-nez v1, :cond_11

    iget v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCriticalLevel:I

    if-gt v0, v1, :cond_11

    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningTextHeight:F

    add-float/2addr v1, v2

    const v2, 0x3ef5c28f    # 0.48f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_11
    return-void

    :cond_12
    invoke-direct {p0, p1, v4, v2}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->drawCircle(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIntrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIntrinsicHeight:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIntrinsicWidth:I

    :goto_0
    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLevel:I

    iput-boolean p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    iput-boolean p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCharging:Z

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method public onBatteryPercentShowChange(Z)V
    .locals 0

    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryStyle:I

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->resetUITimes:I

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPowerSaveChanged , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public relayout()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->battery_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIntrinsicWidth:I

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->battery_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIntrinsicHeight:I

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int/2addr p4, p2

    iput p4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHeight:I

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWidth:I

    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHeight:I

    int-to-float p2, p2

    const/high16 p3, 0x3f400000    # 0.75f

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float p1, p1

    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningTextHeight:F

    iget p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLastHeight:I

    iget p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHeight:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLastWidth:I

    iget p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWidth:I

    if-eq p1, p2, :cond_1

    :cond_0
    iget p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHeight:I

    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLastHeight:I

    iget p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWidth:I

    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLastWidth:I

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->postInvalidate(I)V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setIconPlace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mInStatusBar:Z

    return-void
.end method

.method public startListening()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mListening:Z

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->updateShowPercent()V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public stopListening()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mListening:Z

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
