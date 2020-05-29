.class public Lcom/oneplus/aod/OpAodBatteryDashChargeView;
.super Landroid/widget/ImageView;
.source "OpAodBatteryDashChargeView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OpAodBatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/OpAodBatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getImageResId(I)I
    .locals 1

    if-nez p1, :cond_0

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_0:I

    goto/16 :goto_0

    :cond_0
    const/16 p0, 0xb

    if-lez p1, :cond_1

    if-gt p1, p0, :cond_1

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_1:I

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x11

    if-le p1, p0, :cond_2

    if-gt p1, v0, :cond_2

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_2:I

    goto/16 :goto_0

    :cond_2
    const/16 p0, 0x17

    if-le p1, v0, :cond_3

    if-gt p1, p0, :cond_3

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_3:I

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x1d

    if-le p1, p0, :cond_4

    if-gt p1, v0, :cond_4

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_4:I

    goto/16 :goto_0

    :cond_4
    const/16 p0, 0x23

    if-le p1, v0, :cond_5

    if-gt p1, p0, :cond_5

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_5:I

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x29

    if-le p1, p0, :cond_6

    if-gt p1, v0, :cond_6

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_6:I

    goto/16 :goto_0

    :cond_6
    const/16 p0, 0x2f

    if-le p1, v0, :cond_7

    if-gt p1, p0, :cond_7

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_7:I

    goto :goto_0

    :cond_7
    const/16 v0, 0x35

    if-le p1, p0, :cond_8

    if-gt p1, v0, :cond_8

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_8:I

    goto :goto_0

    :cond_8
    const/16 p0, 0x3b

    if-le p1, v0, :cond_9

    if-gt p1, p0, :cond_9

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_9:I

    goto :goto_0

    :cond_9
    const/16 v0, 0x41

    if-le p1, p0, :cond_a

    if-gt p1, v0, :cond_a

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_10:I

    goto :goto_0

    :cond_a
    const/16 p0, 0x47

    if-le p1, v0, :cond_b

    if-gt p1, p0, :cond_b

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_11:I

    goto :goto_0

    :cond_b
    const/16 v0, 0x4d

    if-le p1, p0, :cond_c

    if-gt p1, v0, :cond_c

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_12:I

    goto :goto_0

    :cond_c
    const/16 p0, 0x53

    if-le p1, v0, :cond_d

    if-gt p1, p0, :cond_d

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_13:I

    goto :goto_0

    :cond_d
    const/16 v0, 0x59

    if-le p1, p0, :cond_e

    if-gt p1, v0, :cond_e

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_14:I

    goto :goto_0

    :cond_e
    const/16 p0, 0x5f

    if-le p1, v0, :cond_f

    if-gt p1, p0, :cond_f

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_15:I

    goto :goto_0

    :cond_f
    if-le p1, p0, :cond_10

    const/16 p0, 0x64

    if-gt p1, p0, :cond_10

    sget p0, Lcom/android/systemui/R$drawable;->ic_sys_dash_charging_state_16:I

    goto :goto_0

    :cond_10
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->aod_battery_dash_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->aod_battery_dash_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->aod_battery_icon_margin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->getImageResId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
