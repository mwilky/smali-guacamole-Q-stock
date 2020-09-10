.class public Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "GameDriverAppPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;
    }
.end annotation


# instance fields
.field private final appInfoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDevOptInApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevOptOutApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevPrereleaseOptInApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryList:[Ljava/lang/CharSequence;

.field mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mPreferenceDefault:Ljava/lang/String;

.field private final mPreferenceGameDriver:Ljava/lang/String;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private final mPreferencePrereleaseDriver:Ljava/lang/String;

.field private final mPreferenceSystem:Ljava/lang/String;

.field private final mPreferenceTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$1;-><init>(Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->appInfoComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p0}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;-><init>(Landroid/os/Handler;Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;)V

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mEntryList:[Ljava/lang/CharSequence;

    const v1, 0x7f120786

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceTitle:Ljava/lang/String;

    const v1, 0x7f120782

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    nop

    const v1, 0x7f120783

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    nop

    const v1, 0x7f120784

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    const v1, 0x7f120785

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceSystem:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->getAppInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mAppInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "game_driver_opt_in_apps"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->getGlobalSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "game_driver_prerelease_opt_in_apps"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->getGlobalSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "game_driver_opt_out_apps"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->getGlobalSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    return-void
.end method

.method private getAppInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    new-instance v5, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;

    invoke-direct {v5, p0, v0, v4}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;-><init>(Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->appInfoComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method private getGlobalSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v1
.end method


# virtual methods
.method protected createListPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/ListPreference;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Landroidx/preference/ListPreference;

    invoke-direct {v0, p1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroidx/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mEntryList:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mEntryList:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceSystem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceSystem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mAppInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;

    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v4, v2, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->createListPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/ListPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

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

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceSystem:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    const-string v5, ","

    invoke-static {v5, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "game_driver_opt_in_apps"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    invoke-static {v5, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "game_driver_prerelease_opt_in_apps"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    invoke-static {v5, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "game_driver_opt_out_apps"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v3, 0x1

    return v3
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
