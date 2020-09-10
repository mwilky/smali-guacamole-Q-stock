.class public Lcom/android/settings/location/TopLevelLocationPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TopLevelLocationPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final INTENT_FILTER_LOCATION_MODE_CHANGED:Landroid/content/IntentFilter;


# instance fields
.field private loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mNumTotal:I

.field private mNumTotalLoading:I

.field private mPreference:Landroidx/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->INTENT_FILTER_LOCATION_MODE_CHANGED:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotal:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotalLoading:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/TopLevelLocationPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/location/TopLevelLocationPreferenceController;->refreshLocationMode()V

    return-void
.end method

.method private refreshLocationMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/TopLevelLocationPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotal:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120965

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10001e

    iget v2, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotal:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120967

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$updateState$0$TopLevelLocationPreferenceController(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotalLoading:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotalLoading:I

    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotalLoading:I

    invoke-virtual {p0, v0}, Lcom/android/settings/location/TopLevelLocationPreferenceController;->setLocationAppCount(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/location/TopLevelLocationPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/TopLevelLocationPreferenceController$1;-><init>(Lcom/android/settings/location/TopLevelLocationPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/location/TopLevelLocationPreferenceController;->INTENT_FILTER_LOCATION_MODE_CHANGED:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/location/TopLevelLocationPreferenceController;->refreshLocationMode()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method setLocationAppCount(I)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotal:I

    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/location/TopLevelLocationPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/location/TopLevelLocationPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotalLoading:I

    iget-object v0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v4, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController;->mNumTotalLoading:I

    invoke-virtual {p0, v4}, Lcom/android/settings/location/TopLevelLocationPreferenceController;->setLocationAppCount(I)V

    goto :goto_0

    :cond_3
    const-class v4, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/permission/PermissionControllerManager;

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    new-instance v7, Lcom/android/settings/location/-$$Lambda$TopLevelLocationPreferenceController$ndKcHy_TjWWkiukewrb7I3jrOBk;

    invoke-direct {v7, p0}, Lcom/android/settings/location/-$$Lambda$TopLevelLocationPreferenceController$ndKcHy_TjWWkiukewrb7I3jrOBk;-><init>(Lcom/android/settings/location/TopLevelLocationPreferenceController;)V

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/permission/PermissionControllerManager;->countPermissionApps(Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_4
    return-void
.end method
