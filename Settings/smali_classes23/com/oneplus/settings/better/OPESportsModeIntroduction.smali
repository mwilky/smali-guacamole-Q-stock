.class public Lcom/oneplus/settings/better/OPESportsModeIntroduction;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPESportsModeIntroduction.java"


# static fields
.field private static final KEY_ONEPLUS_E_SPORTS_MODE_NETWORK_INTRODUCTION:Ljava/lang/String; = "oneplus_e_sports_mode_network_introduction"


# instance fields
.field private mNetworkPre:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initNetworkPreference()V
    .locals 3

    const-string v0, "oneplus_e_sports_mode_network_introduction"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->mNetworkPre:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->mNetworkPre:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->isSupportDualLTEProject()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->isDualSimCard()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->mNetworkPre:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120cf3

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->mNetworkPre:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120cf4

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private isDualSimCard()Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static isSupportDualLTEProject()Z
    .locals 2

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160096

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->initNetworkPreference()V

    return-void
.end method
