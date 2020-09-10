.class public Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;
.super Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;
.source "WifiTetherSsidPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiTetherSsidPreference"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mShareIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->initialize()V

    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiTetherSsidPreference"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private initialize()V
    .locals 1

    const v0, 0x7f0d01fe

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->setLayoutResource(I)V

    const v0, 0x7f0d034e

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->setWidgetLayoutResource(I)V

    const v0, 0x7f080325

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mShareIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method isQrCodeButtonAvailable()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a010d

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0a072f

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    nop

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1218da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mShareIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setButtonVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->mVisible:Z

    return-void
.end method
