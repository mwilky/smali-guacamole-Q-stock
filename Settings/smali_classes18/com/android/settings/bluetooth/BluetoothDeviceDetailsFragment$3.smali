.class Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;
.super Ljava/lang/Object;
.source "BluetoothDeviceDetailsFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected componentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " iBinder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTDeviceDetailsFrg"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p2}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$502(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "device_address"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->isOnePlusPods(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->setIOnePlusUpdate(Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1200(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1300(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/Preference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->setTwsAddress(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setVisible(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$800(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setVisible(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$900(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1300(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$502(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->setTwsAddress(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected componentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTDeviceDetailsFrg"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
