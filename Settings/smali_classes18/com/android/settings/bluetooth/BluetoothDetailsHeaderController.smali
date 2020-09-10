.class public Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsHeaderController.java"


# static fields
.field private static final KEY_DEVICE_HEADER:Ljava/lang/String; = "bluetooth_device_header"


# instance fields
.field private mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mTwsAddress:Z

.field private mTwsBatteryInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mTwsBatteryInfo:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mTwsAddress:Z

    iput-object p5, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bluetooth_device_header"

    return-object v0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    const-string v0, "bluetooth_device_header"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    const v3, 0x7f0a023b

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public isAvailable()Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "settings_ui"

    const-string v2, "bt_advanced_header_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return v0
.end method

.method protected refresh()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->setHeaderProperties()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected setHeaderProperties()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mTwsBatteryInfo:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getSubDeviceSummary(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setSecondSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setIconContentDescription(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mTwsAddress:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    :cond_2
    :goto_0
    return-void
.end method

.method public setTwsAddress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mTwsAddress:Z

    return-void
.end method

.method public updateSumary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mTwsBatteryInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    :cond_0
    return-void
.end method
