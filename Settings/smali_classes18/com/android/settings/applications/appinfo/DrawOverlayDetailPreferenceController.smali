.class public Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "DrawOverlayDetailPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 5

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method protected getDetailFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
