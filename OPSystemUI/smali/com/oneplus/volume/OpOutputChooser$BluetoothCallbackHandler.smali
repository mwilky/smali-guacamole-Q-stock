.class final Lcom/oneplus/volume/OpOutputChooser$BluetoothCallbackHandler;
.super Ljava/lang/Object;
.source "OpOutputChooser.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/volume/OpOutputChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/volume/OpOutputChooser;


# direct methods
.method private constructor <init>(Lcom/oneplus/volume/OpOutputChooser;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooser$BluetoothCallbackHandler;->this$0:Lcom/oneplus/volume/OpOutputChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/volume/OpOutputChooser;Lcom/oneplus/volume/OpOutputChooser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/volume/OpOutputChooser$BluetoothCallbackHandler;-><init>(Lcom/oneplus/volume/OpOutputChooser;)V

    return-void
.end method


# virtual methods
.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1

    invoke-static {}, Lcom/oneplus/volume/OpOutputChooser;->access$200()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BluetoothCallbackHandler onActiveDeviceChanged, activeDevice:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpOutputChooser"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooser$BluetoothCallbackHandler;->this$0:Lcom/oneplus/volume/OpOutputChooser;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/volume/OpOutputChooser;->access$300(Lcom/oneplus/volume/OpOutputChooser;Z)V

    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    invoke-static {}, Lcom/oneplus/volume/OpOutputChooser;->access$200()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BluetoothCallbackHandler onConnectionStateChanged, cachedDevice:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpOutputChooser"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/volume/OpOutputChooser;->access$200()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OpOutputChooser"

    const-string v0, "BluetoothCallbackHandler onDeviceAdded"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooser$BluetoothCallbackHandler;->this$0:Lcom/oneplus/volume/OpOutputChooser;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/volume/OpOutputChooser;->access$300(Lcom/oneplus/volume/OpOutputChooser;Z)V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/volume/OpOutputChooser;->access$200()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OpOutputChooser"

    const-string v0, "BluetoothCallbackHandler onDeviceDeleted"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooser$BluetoothCallbackHandler;->this$0:Lcom/oneplus/volume/OpOutputChooser;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/volume/OpOutputChooser;->access$300(Lcom/oneplus/volume/OpOutputChooser;Z)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method
