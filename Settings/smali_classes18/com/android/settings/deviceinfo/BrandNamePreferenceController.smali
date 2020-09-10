.class public Lcom/android/settings/deviceinfo/BrandNamePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BrandNamePreferenceController.java"


# static fields
.field public static final KEY_BRAND_NAME:Ljava/lang/String; = "brand_name"


# instance fields
.field private isNeedEnable:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "brand_name"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->isNeedEnable:Z

    iput-object p1, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getBrandName()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f1205ea

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->isNeedEnable:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->isNeedEnable:Z

    :goto_0
    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->isNeedEnable:Z

    :goto_1
    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "brand_name"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->getBrandName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->isNeedEnable:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method
