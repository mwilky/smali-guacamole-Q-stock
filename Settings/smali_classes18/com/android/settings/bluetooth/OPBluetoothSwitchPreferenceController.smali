.class public Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPBluetoothSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# static fields
.field private static final KEY_BLUETOOTH_SETTINGS:Ljava/lang/String; = "bluetooth_settings"


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLastClickTime:J

.field private mStatusReceive:Landroid/content/BroadcastReceiver;

.field private mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mSwitchController:Lcom/android/settings/widget/MasterSwitchController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    const-string v0, "bluetooth_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mLastClickTime:J

    new-instance v0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController$1;-><init>(Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private setBluetoothEnabled(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchController;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/MasterSwitchController;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "bluetooth_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bluetooth_settings"

    return-object v0
.end method

.method handleStateChanged(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/MasterSwitchController;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setEnabled(Z)V

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->setChecked(Z)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/MasterSwitchController;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchController;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/MasterSwitchController;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/MasterSwitchController;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setEnabled(Z)V

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->setChecked(Z)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchController;->stopListening()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/settings/widget/MasterSwitchController;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/MasterSwitchController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchController;->startListening()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->handleStateChanged(I)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mLastClickTime:J

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->setBluetoothEnabled(Z)Z

    const/4 v0, 0x1

    return v0
.end method
