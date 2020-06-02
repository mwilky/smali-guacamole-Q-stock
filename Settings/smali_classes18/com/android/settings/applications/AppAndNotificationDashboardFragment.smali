.class public Lcom/android/settings/applications/AppAndNotificationDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AppAndNotificationDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;


# static fields
.field private static final KEY_MANAGE_PERMS:Ljava/lang/String; = "manage_perms"

.field private static final OP_PERMISSION_MANAGE_ACTION:Ljava/lang/String; = "com.oneplus.permissioncontroller.action.OPPERMISSION"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "AppAndNotifDashboard"


# instance fields
.field private mAllAppsInfoPreferenceController:Lcom/android/settings/applications/AllAppsInfoPreferenceController;

.field private mProgressAnimation:Landroid/view/View;

.field private mProgressHeader:Landroid/view/View;

.field private mRecentAppStatsMixin:Lcom/android/settings/applications/RecentAppStatsMixin;

.field private mRecentAppsPreferenceController:Lcom/android/settings/applications/RecentAppsPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
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

    new-instance v1, Lcom/android/settings/applications/OPDataUsageControlPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/OPDataUsageControlPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;

    const-string v2, "app_and_notif_cell_broadcast_settings"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private setLoadingEnabled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mProgressHeader:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mProgressAnimation:Landroid/view/View;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mProgressAnimation:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    invoke-static {p1}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f1207be

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "AppAndNotifDashboard"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2ec

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160015

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->setSession(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    :cond_0
    new-instance v0, Lcom/android/settings/applications/RecentAppStatsMixin;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/settings/applications/RecentAppStatsMixin;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mRecentAppStatsMixin:Lcom/android/settings/applications/RecentAppStatsMixin;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mRecentAppStatsMixin:Lcom/android/settings/applications/RecentAppStatsMixin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mRecentAppStatsMixin:Lcom/android/settings/applications/RecentAppStatsMixin;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/RecentAppStatsMixin;->addListener(Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;)V

    const-class v0, Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RecentAppsPreferenceController;

    iput-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mRecentAppsPreferenceController:Lcom/android/settings/applications/RecentAppsPreferenceController;

    iget-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mRecentAppsPreferenceController:Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/RecentAppsPreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mRecentAppStatsMixin:Lcom/android/settings/applications/RecentAppStatsMixin;

    iget-object v1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mRecentAppsPreferenceController:Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RecentAppStatsMixin;->addListener(Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;)V

    const-class v0, Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    iput-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mAllAppsInfoPreferenceController:Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    iget-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mRecentAppStatsMixin:Lcom/android/settings/applications/RecentAppStatsMixin;

    iget-object v1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->mAllAppsInfoPreferenceController:Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RecentAppStatsMixin;->addListener(Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "manage_perms"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v1, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "com.oneplus.permissioncontroller.action.OPPERMISSION"

    invoke-static {v2, v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onReloadDataCompleted(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
