.class public Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DeviceAdminListPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final FILTER:Landroid/content/IntentFilter;

.field private static final TAG:Ljava/lang/String; = "DeviceAdminListPrefCtrl"


# instance fields
.field private final mAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private final mProfileOwnerComponents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mUm:Landroid/os/UserManager;

.field protected mVibratePattern:[J

.field protected mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->FILTER:Landroid/content/IntentFilter;

    sget-object v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mAdmins:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mProfileOwnerComponents:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController$1;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mUm:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method private addActiveAdminsForProfile(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v3, 0xc8080

    invoke-interface {v2, v1, v3, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->createDeviceAdminInfo(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v4

    const/16 v5, 0x3e7

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mAdmins:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;

    iget-object v6, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;-><init>(Landroid/content/Context;Landroid/app/admin/DeviceAdminInfo;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DeviceAdminListPrefCtrl"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private addDeviceAdminBroadcastReceiversForProfile(Ljava/util/Collection;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x8080

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v4, v5}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->createDeviceAdminInfo(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isInternal()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v5

    const/16 v6, 0x3e7

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mAdmins:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;

    iget-object v7, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v4}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;-><init>(Landroid/content/Context;Landroid/app/admin/DeviceAdminInfo;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_0

    :cond_4
    return-void
.end method

.method private bindPreference(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;Landroidx/preference/SwitchPreference;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->isActive()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    new-instance v0, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$xq7jFVPzZr40edp_AZG9ENMKlVs;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$xq7jFVPzZr40edp_AZG9ENMKlVs;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;)V

    invoke-virtual {p2, v0}, Landroidx/preference/SwitchPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    sget-object v0, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$km1xGgD4wmcfa_hK12gqjXdyDbw;->INSTANCE:Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$km1xGgD4wmcfa_hK12gqjXdyDbw;

    invoke-virtual {p2, v0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private static createDeviceAdminInfo(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/app/admin/DeviceAdminInfo;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, p0, p1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceAdminListPrefCtrl"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private getUserId(Landroid/app/admin/DeviceAdminInfo;)I
    .locals 1

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$bindPreference$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private refreshData()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->updateAvailableAdminsForProfile(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mAdmins:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private refreshUI()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/oneplus/settings/widget/OPFooterPreference;

    move-result-object v0

    const v1, 0x7f120b57

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/widget/OPFooterPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/widget/OPFooterPreference;->setVisible(Z)V

    :cond_1
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    instance-of v5, v4, Landroidx/preference/SwitchPreference;

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v4

    check-cast v5, Landroidx/preference/SwitchPreference;

    invoke-virtual {v5}, Landroidx/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mAdmins:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;

    invoke-virtual {v4}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/preference/SwitchPreference;

    if-nez v6, :cond_4

    new-instance v7, Landroidx/preference/SwitchPreference;

    invoke-direct {v7, v1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    move-object v6, v7

    iget-object v7, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v7, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    invoke-direct {p0, v4, v6}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->bindPreference(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;Landroidx/preference/SwitchPreference;)V

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_6
    return-void
.end method

.method private updateAvailableAdminsForProfile(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->addActiveAdminsForProfile(Ljava/util/List;I)V

    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->addDeviceAdminBroadcastReceiversForProfile(Ljava/util/Collection;I)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$bindPreference$0$DeviceAdminListPreferenceController(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;Landroidx/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/preference/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mVibrator:Landroid/os/Vibrator;

    const/16 v3, 0x3eb

    invoke-static {v1, v2, v3}, Landroidx/preference/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mVibratePattern:[J

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mVibratePattern:[J

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v1, v2}, Landroidx/preference/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onStart()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v3, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->FILTER:Landroid/content/IntentFilter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public setFooterPreferenceMixin(Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;)Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    return-object p0
.end method

.method updateList()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->refreshData()V

    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->refreshUI()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mProfileOwnerComponents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mProfileOwnerComponents:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v3}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->updateList()V

    return-void
.end method
