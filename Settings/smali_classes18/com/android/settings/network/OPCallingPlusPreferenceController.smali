.class public Lcom/android/settings/network/OPCallingPlusPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPCallingPlusPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field public static final CHAMELEON_WFC_ENABLE:Ljava/lang/String; = "com.oneplus.sprint.callingplus.WfcTrackerService"

.field private static final KEY_CALLING_PLUS:Ljava/lang/String; = "voice_network_settings"

.field private static final OMA_ENABLE:I = 0x1

.field private static final OMA_VOLTE_ENABLE:Ljava/lang/String; = "oma_volte_enable"

.field private static final OMA_WFC_ENABLE:Ljava/lang/String; = "oma_wfc_enable"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.sprint.callingplus"


# instance fields
.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "voice_network_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/network/OPCallingPlusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/OPCallingPlusPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/network/OPCallingPlusPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/OPCallingPlusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oma_volte_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/network/OPCallingPlusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oma_wfc_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/network/OPCallingPlusPreferenceController;->mPreference:Landroidx/preference/Preference;

    const v3, 0x7f1215e2

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/network/OPCallingPlusPreferenceController;->mPreference:Landroidx/preference/Preference;

    const v3, 0x7f1215e3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/network/OPCallingPlusPreferenceController;->mPreference:Landroidx/preference/Preference;

    const v3, 0x7f1215e4    # 1.9418095E38f

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "voice_network_settings"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "voice_network_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.action.VoiceNetworksSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/network/OPCallingPlusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
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
