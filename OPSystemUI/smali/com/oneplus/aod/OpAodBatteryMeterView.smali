.class public Lcom/oneplus/aod/OpAodBatteryMeterView;
.super Landroid/widget/ImageView;
.source "OpAodBatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryStyle:I

.field private final mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

.field private mFrameColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/aod/OpAodBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OpAodBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    sget-object v1, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$styleable;->BatteryMeterView_frameColor:I

    sget v0, Lcom/android/systemui/R$color;->batterymeter_frame_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    new-instance v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-direct {v0, p1, p3}, Lcom/oneplus/battery/OpBatteryMeterDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iput p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mFrameColor:I

    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateViewState()V
    .locals 3

    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    iget v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mFrameColor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1, v2}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setColors(III)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterView;->updateViewState()V

    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->aod_battery_icon_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v3

    :goto_1
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->aod_battery_icon_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->aod_battery_icon_margin_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->aod_battery_icon_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    iget-object p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {p3, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setBatteryLevel(I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setCharging(Z)V

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterView;->updateViewState()V

    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->onBatteryStyleChanged(I)V

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterView;->updateViewState()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eq p1, p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setPowerSaveEnabled(Z)V

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterView;->updateViewState()V

    return-void
.end method
