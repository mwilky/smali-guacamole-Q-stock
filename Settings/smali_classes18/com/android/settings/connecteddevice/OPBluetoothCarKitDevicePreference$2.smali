.class Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;
.super Ljava/lang/Object;
.source "OPBluetoothCarKitDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;->this$0:Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;->this$0:Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->access$100(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;->this$0:Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->access$000(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->addCarkit(Landroid/bluetooth/BluetoothDevice;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;->this$0:Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->access$200(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "oneplus.action.intent.UpdateBluetoothCarkitDevice"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;->this$0:Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->access$000(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;->this$0:Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->access$000(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "blue_car_add"

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
