.class public Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;
.super Lcom/android/settings/widget/EmptyTextSettings;
.source "PremiumSmsAccess.java"

# interfaces
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$1;

    invoke-direct {v0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/EmptyTextSettings;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object v0
.end method

.method private update()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    sget-object v1, Lcom/android/settings/applications/AppStateSmsPremBridge;->FILTER_APP_PREMIUM_SMS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->updatePrefs(Ljava/util/ArrayList;)V

    return-void
.end method

.method private updatePrefs(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f121204

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->setEmptyText(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->setLoading(ZZ)V

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;-><init>(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/oneplus/settings/widget/OPFooterPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/settings/widget/OPFooterPreference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121205

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/widget/OPFooterPreference;->setTitle(I)V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x184

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1600d1

    return v0
.end method

.method logSpecialPermissionChange(ILjava/lang/String;)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x30c

    goto :goto_0

    :cond_1
    const/16 v0, 0x30b

    goto :goto_0

    :cond_2
    const/16 v0, 0x30a

    nop

    :goto_0
    if-eqz v0, :cond_3

    nop

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v7

    nop

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getMetricsCategory()I

    move-result v4

    move-object v1, v7

    move v3, v0

    move-object v5, p2

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/widget/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    nop

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    new-instance v0, Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/applications/AppStateSmsPremBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge;->release()V

    invoke-super {p0}, Lcom/android/settings/widget/EmptyTextSettings;->onDestroy()V

    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->update()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge;->pause()V

    invoke-super {p0}, Lcom/android/settings/widget/EmptyTextSettings;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;->access$000(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->logSpecialPermissionChange(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-static {v0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;->access$000(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/applications/AppStateSmsPremBridge;->setSmsState(Ljava/lang/String;I)V

    const/4 v2, 0x1

    return v2
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->updatePrefs(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/widget/EmptyTextSettings;->onResume()V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge;->resume()V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->setLoading(ZZ)V

    return-void
.end method
