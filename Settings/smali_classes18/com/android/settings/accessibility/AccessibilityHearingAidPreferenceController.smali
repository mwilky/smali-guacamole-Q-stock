.class public Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AccessibilityHearingAidPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessibilityHearingAidPreferenceController"


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mHearingAidChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mHearingAidPreference:Landroidx/preference/Preference;

.field private mHearingAidProfileSupported:Z

.field private final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;-><init>(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->getLocalBluetoothManager()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->isHearingAidProfileSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidProfileSupported:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)Landroidx/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidPreference:Landroidx/preference/Preference;

    return-object v0
.end method

.method private getLocalBluetoothManager()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 4

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityHearingAidPreferenceController$q777pqjRfk42YMnop2-CICM0B18;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityHearingAidPreferenceController$q777pqjRfk42YMnop2-CICM0B18;-><init>(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityHearingAidPreferenceController"

    const-string v3, "Error getting LocalBluetoothManager."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method private isHearingAidProfileSupported()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getSupportedProfiles()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidProfileSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method getConnectedHearingAidDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidProfileSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->isSubDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    return-object v1

    :cond_2
    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    :goto_1
    return-object v1
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->getConnectedHearingAidDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120061

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->getConnectedHearingAidDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->launchHearingAidInstructionDialog()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->launchBluetoothDeviceDetailSetting(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$getLocalBluetoothManager$0$AccessibilityHearingAidPreferenceController()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method launchBluetoothDeviceDetailSetting(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    nop

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_address"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f1205e6

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method launchHearingAidInstructionDialog()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/android/settings/accessibility/HearingAidDialogFragment;->newInstance()Lcom/android/settings/accessibility/HearingAidDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-class v2, Lcom/android/settings/accessibility/HearingAidDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/HearingAidDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidProfileSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidProfileSupported:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method setPreference(Landroidx/preference/Preference;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidPreference:Landroidx/preference/Preference;

    return-void
.end method
