.class public Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;
.super Landroid/app/Activity;
.source "DeviceAdminAdd.java"


# static fields
.field static final DIALOG_WARNING:I = 0x1

.field public static final EXTRA_CALLED_FROM_SUPPORT_DIALOG:Ljava/lang/String; = "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

.field public static final EXTRA_DEVICE_ADMIN_PACKAGE_NAME:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

.field private static final MAX_ADD_MSG_LINES:I = 0xf

.field private static final MAX_ADD_MSG_LINES_LANDSCAPE:I = 0x2

.field private static final MAX_ADD_MSG_LINES_PORTRAIT:I = 0x5

.field static final TAG:Ljava/lang/String; = "DeviceAdminAdd"


# instance fields
.field mActionButton:Landroid/widget/Button;

.field mAddMsg:Landroid/widget/TextView;

.field mAddMsgEllipsized:Z

.field mAddMsgExpander:Landroid/widget/ImageView;

.field mAddMsgText:Ljava/lang/CharSequence;

.field mAdding:Z

.field mAddingProfileOwner:Z

.field mAdminDescription:Landroid/widget/TextView;

.field mAdminIcon:Landroid/widget/ImageView;

.field mAdminName:Landroid/widget/TextView;

.field mAdminPolicies:Landroid/view/ViewGroup;

.field mAdminPoliciesInitialized:Z

.field mAdminWarning:Landroid/widget/TextView;

.field mAppOps:Landroid/app/AppOpsManager;

.field mCancelButton:Landroid/widget/Button;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

.field mHandler:Landroid/os/Handler;

.field mIsCalledFromSupportDialog:Z

.field mProfileOwnerName:Ljava/lang/String;

.field mProfileOwnerWarning:Landroid/widget/TextView;

.field mRefreshing:Z

.field mSupportMessage:Landroid/widget/TextView;

.field private final mToken:Landroid/os/IBinder;

.field mUninstallButton:Landroid/widget/Button;

.field mUninstalling:Z

.field mWaitingForRemoveMsg:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsgEllipsized:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mUninstalling:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->showPolicyTransparencyDialogIfRequired()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method private addDeviceAdminPolicies(Z)V
    .locals 12

    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminPoliciesInitialized:Z

    if-nez v0, :cond_4

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    if-eqz v0, :cond_0

    iget v4, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    goto :goto_1

    :cond_0
    iget v4, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->descriptionForSecondaryUsers:I

    :goto_1
    if-eqz v0, :cond_1

    iget v5, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    goto :goto_2

    :cond_1
    iget v5, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->labelForSecondaryUsers:I

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz p1, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_3

    :cond_2
    const-string v7, ""

    :goto_3
    invoke-static {p0, v6, v7, v3}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v6, 0x10203a4

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06032b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const v8, 0x10203a8

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06033d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const v9, 0x10203aa

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminPoliciesInitialized:Z

    :cond_4
    return-void
.end method

.method private findAdminWithPackageName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminAdd$juT03BgdUU2vZFkHdvB7Xj_I1dA;

    invoke-direct {v2, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminAdd$juT03BgdUU2vZFkHdvB7Xj_I1dA;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method private getAdminEnforcingCantRemoveProfile()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    nop

    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getParentUserId()I

    move-result v0

    const-string v1, "no_remove_managed_profile"

    invoke-static {p0, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    return-object v0
.end method

.method private getParentUserId()I
    .locals 2

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    return v0
.end method

.method private hasBaseCantRemoveProfileRestriction()Z
    .locals 2

    nop

    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getParentUserId()I

    move-result v0

    const-string v1, "no_remove_managed_profile"

    invoke-static {p0, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isAdminUninstallable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 3

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    nop

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static synthetic lambda$findAdminWithPackageName$0(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private showPolicyTransparencyDialogIfRequired()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->hasBaseCantRemoveProfileRestriction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getAdminEnforcingCantRemoveProfile()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_1
    return-void
.end method


# virtual methods
.method addAndFinish()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->logSpecialPermissionChange(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mRefreshing:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    const v0, 0x16059

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(II)I

    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->unrestrictAppIfPossible(Lcom/android/settings/fuelgauge/BatteryUtils;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception trying to activate admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceAdminAdd"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setResult(I)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setResult(I)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void
.end method

.method continueRemoveAction(Ljava/lang/CharSequence;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez p1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->logSpecialPermissionChange(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->showDialog(ILandroid/os/Bundle;)Z

    :goto_2
    return-void
.end method

.method getEllipsizedLines()I
    .locals 3

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    const/16 v0, 0x2fe

    move v3, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2ff

    move v3, v0

    :goto_0
    nop

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "Bad "

    const-string v3, "Unable to retrieve device policy "

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x2000

    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    const-string v0, "device_policy"

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-string v0, "appops"

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v5, 0x10000000

    and-int/2addr v0, v5

    const-string v5, "DeviceAdminAdd"

    if-eqz v0, :cond_1

    const-string v0, "Cannot start ADD_DEVICE_ADMIN as a new task"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v6, 0x0

    const-string v7, "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v8, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const/4 v8, 0x1

    if-nez v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findAdminWithPackageName(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Optional;->isPresent()Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No component specified in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    :cond_2
    invoke-virtual {v10}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/content/ComponentName;

    iput-boolean v8, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mUninstalling:Z

    move-object v9, v0

    goto :goto_0

    :cond_3
    move-object v9, v0

    :goto_0
    if-eqz v7, :cond_7

    const-string v0, "android.app.action.SET_PROFILE_OWNER"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1, v6}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setResult(I)V

    invoke-virtual {v1, v8}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setFinishOnTouchOutside(Z)V

    iput-boolean v8, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddingProfileOwner:Z

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v10, "android.app.extra.PROFILE_OWNER_NAME"

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getCallingPackage()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-virtual {v4, v10, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v11, v8

    if-nez v11, :cond_5

    const-string v2, "Cannot set a non-system app as a profile owner"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_5
    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find the package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    :cond_6
    :goto_1
    const-string v0, "Unknown or incorrect caller"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    :cond_7
    :goto_2
    const/16 v0, 0x80

    :try_start_1
    invoke-virtual {v4, v9, v0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    move-object v10, v0

    nop

    iget-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Landroid/content/Intent;

    const-string v11, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v11, 0x8000

    invoke-virtual {v4, v0, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_8

    move v0, v6

    goto :goto_3

    :cond_8
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    move v12, v0

    const/4 v13, 0x0

    const/4 v0, 0x0

    move v14, v0

    :goto_4
    if-ge v14, v12, :cond_a

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/ResolveInfo;

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v8, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_2
    iput-object v10, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, v1, v15}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v13, 0x1

    :goto_5
    goto :goto_6

    :catch_1
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_9
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    goto :goto_4

    :cond_a
    :goto_6
    if-nez v13, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to add invalid device admin: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    :cond_b
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v2, v0

    iput-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :try_start_3
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, v1, v2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_f

    iput-boolean v6, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mRefreshing:Z

    iget-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/app/admin/DevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested admin is already being removed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    :cond_c
    iget-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v8, 0x0

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_e

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v12, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v13, v11, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v12, v9, v13}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v12

    if-nez v12, :cond_d

    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mRefreshing:Z

    goto :goto_8

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    iget-boolean v8, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mRefreshing:Z

    if-nez v8, :cond_f

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v8, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    iget-boolean v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->hasUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->addAndFinish()V

    return-void

    :cond_10
    const v0, 0x1040168

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v3, "Unable to set profile owner post-setup, no default supervisorprofile owner defined"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    :cond_11
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v11

    if-eqz v11, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to set non-default profile owner post-setup "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    :cond_12
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v5, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f12124c

    invoke-virtual {v1, v11}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    const v11, 0x7f0d028d

    invoke-virtual {v5, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    const v11, 0x7f120114

    new-instance v12, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$2;

    invoke-direct {v12, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$2;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V

    invoke-virtual {v5, v11, v12}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    const v11, 0x7f1203eb

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v11, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$1;

    invoke-direct {v11, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$1;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V

    invoke-virtual {v5, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    move-object v11, v5

    check-cast v11, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v11, v3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    iget-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    const v3, 0x7f0a0067

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    new-instance v11, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v11}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object v11, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0077

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v11, 0x7f1205e5

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    aput-object v13, v12, v6

    invoke-virtual {v1, v11, v12}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_13
    const v0, 0x7f0d0090

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setContentView(I)V

    const v0, 0x7f0a006e

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0070

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    const v0, 0x7f0a006c

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    const v0, 0x7f0a056a

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mProfileOwnerWarning:Landroid/widget/TextView;

    const v0, 0x7f0a0065

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    const v0, 0x7f0a0066

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$3;

    invoke-direct {v0, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$3;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V

    iget-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v5, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$4;

    invoke-direct {v5, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$4;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    const v3, 0x7f0a0076

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v3, 0x7f0a0071

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    const v3, 0x7f0a0074

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    const v3, 0x7f0a0120

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    iget-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    iget-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$5;

    invoke-direct {v5, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$5;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a073a

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    iget-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    iget-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$6;

    invoke-direct {v5, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$6;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a003f

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v3, 0x7f0a05ab

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    new-instance v5, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;

    invoke-direct {v5, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_3
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    :catch_4
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f12063d

    new-instance v3, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$8;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$8;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f120638

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method protected onPause()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x18

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x2d

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->updateInterface()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x18

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x2d

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    :cond_0
    return-void
.end method

.method toggleMessageEllipsis(Landroid/view/View;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsgEllipsized:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsgEllipsized:Z

    iget-boolean v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-boolean v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getEllipsizedLines()I

    move-result v1

    goto :goto_1

    :cond_1
    const/16 v1, 0xf

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v2, :cond_2

    const v2, 0x10802d4

    goto :goto_2

    :cond_2
    const v2, 0x10802d3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method unrestrictAppIfPossible(Lcom/android/settings/fuelgauge/BatteryUtils;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->clearForceAppStandby(Ljava/lang/String;)Z

    return-void
.end method

.method updateInterface()V
    .locals 10

    const v0, 0x7f0a05ac

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mRefreshing:Z

    const/4 v4, 0x1

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_9

    iput-boolean v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdding:Z

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {p0, v5}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v5

    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v7, 0x7f1200f4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v7, 0x7f1212c5

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getAdminEnforcingCantRemoveProfile()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->hasBaseCantRemoveProfileRestriction()Z

    move-result v7

    if-eqz v6, :cond_1

    if-nez v7, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    if-nez v6, :cond_2

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_3
    const v0, 0x7f1212c4

    if-nez v3, :cond_6

    iget-object v6, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->addDeviceAdminPolicies(Z)V

    iget-object v6, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v7, 0x7f1205e3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v4, v1

    invoke-virtual {p0, v7, v4}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f1200d3

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setTitle(I)V

    iget-boolean v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mUninstalling:Z

    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v4, 0x7f1212c3

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_5

    :cond_5
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_5

    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f1200f5

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_7
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f1200f1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_5
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/app/admin/DevicePolicyManager;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_8
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    goto :goto_7

    :cond_9
    invoke-direct {p0, v4}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->addDeviceAdminPolicies(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v3, 0x7f1205e4

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p0, v3, v5}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f1200e6

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v3, 0x7f1200e5

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->isAdminUninstallable()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mAdding:Z

    :goto_7
    return-void
.end method
