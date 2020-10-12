.class Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const-string v0, "BluetoothDashboardFrag"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v2}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$000(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v4}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$000(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->isOnePlusPods(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    array-length v6, v5

    const/4 v7, 0x7

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-static {v6, v7}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$500(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    const/4 v8, 0x4

    aget-object v8, v5, v8

    invoke-static {v7, v8}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$500(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    const/4 v9, 0x6

    aget-object v9, v5, v9

    invoke-static {v8, v9}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$500(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Ljava/lang/Object;)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_VENDOR_SPECIFIC_HEADSET_EVENT address = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", leftLevel: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", rightLevel: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", boxLevel: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v9, v6, v7, v8}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$600(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;III)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v10}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$100(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v10, :cond_0

    iget-object v11, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    const-string v12, "available_device_list"

    invoke-static {v11, v3, v12}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$700(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v11

    move-object v10, v11

    :cond_0
    if-nez v10, :cond_1

    iget-object v11, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    const-string v12, "connected_device_list"

    invoke-static {v11, v3, v12}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$700(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v11

    move-object v10, v11

    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10, v9}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v9}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTwsBattery(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive e2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
