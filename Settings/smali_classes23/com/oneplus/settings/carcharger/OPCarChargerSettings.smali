.class public Lcom/oneplus/settings/carcharger/OPCarChargerSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPCarChargerSettings.java"


# static fields
.field private static final KEY_CAR_CHARGER_AUTO_TURN_ON:Ljava/lang/String; = "car_charger_auto_turn_on"

.field private static final KEY_CAR_CHARGER_AUTO_TURN_ON_DND:Ljava/lang/String; = "car_charger_auto_turn_on_dnd"

.field static final KEY_FOOTER_PREF:Ljava/lang/String; = "footer_preference"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OPCarChargerSettings"


# instance fields
.field mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;

    const-string v2, "car_charger_auto_turn_on"

    invoke-direct {v1, p1, v2}, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;

    const-string v2, "car_charger_auto_turn_on_dnd"

    invoke-direct {v1, p1, v2}, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/oneplus/settings/carcharger/OPCarChargerAutoOpenSpecifiedAppPreferenceController;

    invoke-direct {v1, p1}, Lcom/oneplus/settings/carcharger/OPCarChargerAutoOpenSpecifiedAppPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "OPCarChargerSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f16008a

    return v0
.end method

.method initPreferencesFromPreferenceScreen()V
    .locals 1

    const-string v0, "footer_preference"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/carcharger/OPCarChargerSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/widget/OPFooterPreference;

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/carcharger/OPCarChargerSettings;->updateFooterPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerSettings;->initPreferencesFromPreferenceScreen()V

    return-void
.end method

.method updateFooterPreference(Landroidx/preference/Preference;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120c48

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/carcharger/OPCarChargerSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f120c47

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/carcharger/OPCarChargerSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
