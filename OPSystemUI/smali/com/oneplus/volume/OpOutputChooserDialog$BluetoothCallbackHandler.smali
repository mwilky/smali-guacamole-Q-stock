.class final Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;
.super Ljava/lang/Object;
.source "OpOutputChooserDialog.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/volume/OpOutputChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/volume/OpOutputChooserDialog;


# direct methods
.method private constructor <init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/volume/OpOutputChooserDialog;Lcom/oneplus/volume/OpOutputChooserDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;-><init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V

    return-void
.end method


# virtual methods
.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onActiveDeviceChanged:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpOutputChooserDialog"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-static {p2}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$800(Lcom/oneplus/volume/OpOutputChooserDialog;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-static {v0}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$700(Lcom/oneplus/volume/OpOutputChooserDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-static {p2}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$900(Lcom/oneplus/volume/OpOutputChooserDialog;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-static {p1}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$800(Lcom/oneplus/volume/OpOutputChooserDialog;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-static {p2}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$700(Lcom/oneplus/volume/OpOutputChooserDialog;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$902(Lcom/oneplus/volume/OpOutputChooserDialog;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    :goto_0
    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$300(Lcom/oneplus/volume/OpOutputChooserDialog;Z)V

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

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$300(Lcom/oneplus/volume/OpOutputChooserDialog;Z)V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$300(Lcom/oneplus/volume/OpOutputChooserDialog;Z)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method
