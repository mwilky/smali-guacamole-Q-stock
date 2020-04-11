.class public Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;
.super Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.source "ZenRuleVisEffectPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field protected mEffect:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mMetricsCategory:I

.field protected mParentSuppressedEffects:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput p4, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mEffect:I

    iput p5, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mMetricsCategory:I

    iput-object p6, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mParentSuppressedEffects:[I

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mEffect:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mMetricsCategory:I

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/util/Pair;

    const/16 v5, 0x642

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/16 v5, 0x643

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mId:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    new-instance v2, Landroid/service/notification/ZenPolicy$Builder;

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    iget v3, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mEffect:I

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return v6
.end method

.method public bridge synthetic onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mEffect:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mParentSuppressedEffects:[I

    if-eqz v4, :cond_3

    array-length v5, v4

    move v6, v3

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget v7, v4, v3

    iget-object v8, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v8}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v8

    invoke-virtual {v8, v7, v1}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v6, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v6

    :cond_3
    if-eqz v3, :cond_4

    move-object v1, p1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-object v1, p1

    check-cast v1, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    goto :goto_1

    :cond_4
    move-object v2, p1

    check-cast v2, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    move-object v1, p1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method
