.class public Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;
.super Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;
.source "LocalDeviceNameDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LocalAdapterName"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    new-instance v0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;-><init>(Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public bridge synthetic afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method public bridge synthetic beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method protected getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDialogTitle()I
    .locals 1

    const v0, 0x7f120382

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x21a

    return v0
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method protected setDeviceName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    return-void
.end method
