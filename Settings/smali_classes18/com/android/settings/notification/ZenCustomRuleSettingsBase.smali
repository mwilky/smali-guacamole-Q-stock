.class abstract Lcom/android/settings/notification/ZenCustomRuleSettingsBase;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenCustomRuleSettingsBase.java"


# static fields
.field static final RULE_ID:Ljava/lang/String; = "RULE_ID"

.field static final TAG:Ljava/lang/String; = "ZenCustomRuleSettings"


# instance fields
.field mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field mId:Ljava/lang/String;

.field mRule:Landroid/app/AutomaticZenRule;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method createZenRuleBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mId:Ljava/lang/String;

    const-string v2, "RULE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f1207ac

    return v0
.end method

.method abstract getPreferenceCategoryKey()Ljava/lang/String;
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "RULE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v2, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    goto :goto_0

    :cond_0
    const-string v1, "ZenCustomRuleSettings"

    const-string v2, "Rule id required to set custom dnd rule config settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->finish()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->updatePreferences()V

    return-void
.end method

.method public onZenModeConfigChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onZenModeConfigChanged()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->updatePreferences()V

    return-void
.end method

.method public updatePreferences()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->getPreferenceCategoryKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12196b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v7}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/core/AbstractPreferenceController;

    move-object v4, v3

    check-cast v4, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;

    iget-object v5, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v6, p0, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->updatePreference(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    goto :goto_0

    :cond_1
    return-void
.end method
