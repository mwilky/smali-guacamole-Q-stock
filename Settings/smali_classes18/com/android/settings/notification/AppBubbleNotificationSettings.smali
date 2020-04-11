.class public Lcom/android/settings/notification/AppBubbleNotificationSettings;
.super Lcom/android/settings/notification/NotificationSettingsBase;
.source "AppBubbleNotificationSettings.java"

# interfaces
.implements Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin$Listener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "AppBubNotiSettings"


# instance fields
.field private mObserverMixin:Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/AppBubbleNotificationSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/AppBubbleNotificationSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;-><init>()V

    return-void
.end method

.method protected static getPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/AppBubbleNotificationSettings;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/notification/AppBubbleNotificationSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/notification/NotificationPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/notification/HeaderPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/HeaderPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/BubblePreferenceController;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/notification/AppBubbleNotificationSettings;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v3}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/notification/BubblePreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/notification/NotificationBackend;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    invoke-static {p1, p0}, Lcom/android/settings/notification/AppBubbleNotificationSettings;->getPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/AppBubbleNotificationSettings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->mControllers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "AppBubNotiSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6a4

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160016

    return v0
.end method

.method public onGlobalBubblePermissionChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/notification/AppBubbleNotificationSettings;->updatePreferenceStates()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->mObserverMixin:Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;

    invoke-virtual {v0}, Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;->onStop()V

    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onResume()V

    iget v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->mUid:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/NotificationPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    iget-object v5, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/notification/NotificationPreferenceController;->onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/AppBubbleNotificationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/NotificationPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/AppBubbleNotificationSettings;->updatePreferenceStates()V

    new-instance v0, Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppBubbleNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;-><init>(Landroid/content/Context;Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin$Listener;)V

    iput-object v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->mObserverMixin:Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;

    iget-object v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->mObserverMixin:Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;

    invoke-virtual {v0}, Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;->onStart()V

    return-void

    :cond_2
    :goto_1
    const-string v0, "AppBubNotiSettings"

    const-string v1, "Missing package or uid or packageinfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notification/AppBubbleNotificationSettings;->finish()V

    return-void
.end method
