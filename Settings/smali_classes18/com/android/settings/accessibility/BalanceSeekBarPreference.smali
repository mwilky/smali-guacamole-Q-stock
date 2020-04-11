.class public Lcom/android/settings/accessibility/BalanceSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "BalanceSeekBarPreference.java"


# static fields
.field private static final BALANCE_CENTER_VALUE:I = 0x64

.field private static final BALANCE_MAX_VALUE:I = 0xc8


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIconView:Landroid/widget/ImageView;

.field private mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0403b2

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0d024f

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method private init()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, "master_balance"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/BalanceSeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/BalanceSeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/BalanceSeekBar;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020410

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/BalanceSeekBar;

    iput-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->init()V

    return-void
.end method
