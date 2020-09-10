.class public Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "ExternalSourcesDetails.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_EXTERNAL_SOURCE_SWITCH:Ljava/lang/String; = "external_sources_settings_switch"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAppBridge:Lcom/android/settings/applications/AppStateInstallAppsBridge;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

.field private mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getPreferenceSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 6

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    const-string v2, "no_install_unknown_sources"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    const-string v3, "no_install_unknown_sources_globally"

    invoke-virtual {v1, v3, v0}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    or-int/2addr v2, v3

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    const v3, 0x7f120615

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    if-eqz v2, :cond_1

    const v3, 0x7f120613

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    new-instance v3, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v4}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v4, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f1201a7

    goto :goto_0

    :cond_2
    const v4, 0x7f1201a8

    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private killApp(I)V
    .locals 2

    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mActivityManager:Landroid/app/ActivityManager;

    const-string v1, "User denied OP_REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->killUid(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x328

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppBridge:Lcom/android/settings/applications/AppStateInstallAppsBridge;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mUserManager:Landroid/os/UserManager;

    const v1, 0x7f16005c

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->addPreferencesFromResource(I)V

    const-string v1, "external_sources_settings_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result v1

    if-eq v0, v1, :cond_2

    const-class v1, Lcom/android/settings/Settings$ManageAppExternalSourcesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->setResult(I)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->setCanInstallApps(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->refreshUi()Z

    :cond_2
    const/4 v1, 0x1

    return v1

    :cond_3
    return v2
.end method

.method protected refreshUi()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const-string v3, "no_install_unknown_sources"

    invoke-virtual {v0, v3, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const v3, 0x7f120613

    invoke-virtual {v0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v1, "no_install_unknown_sources_globally"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppBridge:Lcom/android/settings/applications/AppStateInstallAppsBridge;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method setCanInstallApps(Z)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const/16 v6, 0x42

    invoke-virtual {v0, v6, v1, v2, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x3e7

    if-nez v0, :cond_3

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->hasMultiApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    invoke-virtual {v2, v6, v0, v5, v7}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->killApp(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    invoke-virtual {v1, v6, v0, v2, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method
