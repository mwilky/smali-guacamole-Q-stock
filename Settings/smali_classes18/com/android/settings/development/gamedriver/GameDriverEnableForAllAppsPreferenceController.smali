.class public Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "GameDriverEnableForAllAppsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field public static final GAME_DRIVER_ALL_APPS:I = 0x1

.field public static final GAME_DRIVER_DEFAULT:I = 0x0

.field public static final GAME_DRIVER_OFF:I = 0x3

.field public static final GAME_DRIVER_PRERELEASE_ALL_APPS:I = 0x2


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPreference:Landroidx/preference/ListPreference;

.field private final mPreferenceDefault:Ljava/lang/String;

.field private final mPreferenceGameDriver:Ljava/lang/String;

.field private final mPreferencePrereleaseDriver:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120782

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    nop

    const v1, 0x7f120783

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    nop

    const v1, 0x7f120784

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    new-instance v1, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2, p0}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;-><init>(Landroid/os/Handler;Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;)V

    iput-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "game_driver_all_apps"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method public onGameDriverContentChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "game_driver_all_apps"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-eq v4, v2, :cond_2

    iget-object v5, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "game_driver_all_apps"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
