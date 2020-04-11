.class Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "OPRecognizedBluetoothCarKitNoDevicesPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x8628ed5

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "oneplus.action.intent.UpdateBluetoothCarkitDevice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;->access$000(Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitNoDevicesPreferenceController;)Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->forceUpdate()V

    nop

    :goto_2
    return-void
.end method
