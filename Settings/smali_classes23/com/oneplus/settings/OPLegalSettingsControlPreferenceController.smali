.class public Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPLegalSettingsControlPreferenceController.java"


# static fields
.field private static final KEY_HEALTH_SAFETY_INFORMATION:Ljava/lang/String; = "health_safety_information"

.field private static final KEY_PERMISSION_AGREEMENT:Ljava/lang/String; = "op_permission_agreement"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKey:Ljava/lang/String;

.field private mPreference:Landroidx/preference/Preference;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;->mKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;->mType:I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;->mKey:Ljava/lang/String;

    const-string v1, "op_permission_agreement"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;->mKey:Ljava/lang/String;

    const-string v3, "health_safety_information"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/settings/OPLegalSettingsControlPreferenceController;->mType:I

    invoke-static {v0, v1}, Lcom/android/settings/LegalSettings;->startLegalActivity(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
