.class public final Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AutofillLoggingLevelPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field private static final AUTOFILL_LOGGING_LEVEL_KEY:Ljava/lang/String; = "autofill_logging_level"

.field private static final TAG:Ljava/lang/String; = "AutofillLoggingLevelPreferenceController"


# instance fields
.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;

.field private final mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mListValues:[Ljava/lang/String;

    const v1, 0x7f030012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mListSummaries:[Ljava/lang/String;

    new-instance v1, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    iget-object v2, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settings/development/autofill/-$$Lambda$AutofillLoggingLevelPreferenceController$93rEGR-Dx7YRc7YY0ip1MGrNqfU;

    invoke-direct {v3, p0}, Lcom/android/settings/development/autofill/-$$Lambda$AutofillLoggingLevelPreferenceController$93rEGR-Dx7YRc7YY0ip1MGrNqfU;-><init>(Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;)V

    invoke-direct {v1, v2, v3}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    iget-object v1, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    invoke-virtual {v1}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->register()V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private updateOptions()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    const-string v0, "AutofillLoggingLevelPreferenceController"

    const-string v1, "ignoring Settings update because UI is gone"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Landroid/view/autofill/AutofillManager;->DEFAULT_LOGGING_LEVEL:I

    const-string v2, "autofill_logging_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v2, Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private writeLevel(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autofill_logging_level"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "autofill_logging_level"

    return-object v0
.end method

.method public synthetic lambda$new$0$AutofillLoggingLevelPreferenceController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->updateOptions()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->unregister()V

    return-void
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->writeLevel(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->writeLevel(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->updateOptions()V

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->updateOptions()V

    return-void
.end method
