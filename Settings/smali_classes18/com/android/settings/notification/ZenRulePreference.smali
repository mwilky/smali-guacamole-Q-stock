.class public Lcom/android/settings/notification/ZenRulePreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "ZenRulePreference.java"


# static fields
.field private static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;


# instance fields
.field final mBackend:Lcom/android/settings/notification/ZenModeBackend;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mChecked:Z

.field final mContext:Landroid/content/Context;

.field final mId:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field mName:Ljava/lang/CharSequence;

.field private mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

.field final mParent:Landroidx/fragment/app/Fragment;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mPref:Landroidx/preference/Preference;

.field mRule:Landroid/app/AutomaticZenRule;

.field final mServiceListing:Lcom/android/settings/utils/ZenServiceListing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/ZenRulePreference;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map$Entry;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/notification/ZenRulePreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenRulePreference$2;-><init>(Lcom/android/settings/notification/ZenRulePreference;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0d0261

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenRulePreference;->setLayoutResource(I)V

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AutomaticZenRule;

    iput-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/ZenRulePreference;->mParent:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/settings/utils/ZenServiceListing;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/notification/ZenRulePreference;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/ZenServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {v0}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    iput-object p0, p0, Lcom/android/settings/notification/ZenRulePreference;->mPref:Landroidx/preference/Preference;

    iput-object p4, p0, Lcom/android/settings/notification/ZenRulePreference;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mChecked:Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenRulePreference;->setAttributes(Landroid/app/AutomaticZenRule;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRulePreference;->getSecondTargetResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenRulePreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenRulePreference;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenRulePreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mChecked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenRulePreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenRulePreference;->setChecked(Z)V

    return-void
.end method

.method private computeRuleSummary(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1215ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1215ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private setChecked(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mChecked:Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const v0, 0x7f0d0372

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mChecked:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a073c

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenRulePreference;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/android/settings/notification/ZenRulePreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenRulePreference$1;-><init>(Lcom/android/settings/notification/ZenRulePreference;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v2, 0x7f0a0143

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/notification/ZenRulePreference;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v3, 0x1020001

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/notification/ZenRulePreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/notification/ZenRulePreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/notification/ZenRulePreference;->mChecked:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public onClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected setAttributes(Landroid/app/AutomaticZenRule;)V
    .locals 7

    nop

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;Z)Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenRulePreference;->computeRuleSummary(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ZenRulePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ZenRulePreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ZenRulePreference;->setPersistent(Z)V

    if-eqz v0, :cond_0

    const-string v2, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    nop

    iget-object v3, p0, Lcom/android/settings/notification/ZenRulePreference;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/utils/ZenServiceListing;->findService(Landroid/content/ComponentName;)Landroid/content/pm/ComponentInfo;

    move-result-object v3

    nop

    invoke-static {p1, v3}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->getSettingsActivity(Landroid/app/AutomaticZenRule;Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/notification/ZenRulePreference;->mId:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->getRuleIntent(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/ZenRulePreference;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/notification/ZenRulePreference;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/notification/ZenRulePreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/notification/ZenRulePreference;->mIntent:Landroid/content/Intent;

    :cond_2
    iget-object v5, p0, Lcom/android/settings/notification/ZenRulePreference;->mId:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenRulePreference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public updatePreference(Landroid/app/AutomaticZenRule;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenRulePreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenRulePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenRulePreference;->computeRuleSummary(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenRulePreference;->setSummary(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    return-void
.end method
