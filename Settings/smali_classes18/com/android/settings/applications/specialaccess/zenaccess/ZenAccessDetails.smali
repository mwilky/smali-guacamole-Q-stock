.class public Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "ZenAccessDetails.java"

# interfaces
.implements Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$Listener;


# static fields
.field private static final SWITCH_PREF_KEY:Ljava/lang/String; = "zen_access_switch"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

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

    const/16 v0, 0x69c

    return v0
.end method

.method public synthetic lambda$updatePreference$0$ZenAccessDetails(Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "dialog"

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;

    invoke-direct {v2}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;-><init>()V

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;

    invoke-direct {v2}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;-><init>()V

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160119

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;-><init>(Landroid/content/Context;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$Listener;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onZenAccessPolicyChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->refreshUi()Z

    return-void
.end method

.method protected refreshUi()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-static {v1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->isSupported(Landroid/app/ActivityManager;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->getPackagesRequestingNotificationPolicyAccess()Ljava/util/Set;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    const-string v2, "zen_access_switch"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->updatePreference(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V

    const/4 v2, 0x1

    return v2
.end method

.method public updatePreference(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->getAutoApprovedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    const v2, 0x7f121a09

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->hasAccess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    new-instance v2, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessDetails$rKJyvX6IObyOz60FeyFja12ZgrM;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessDetails$rKJyvX6IObyOz60FeyFja12ZgrM;-><init>(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
