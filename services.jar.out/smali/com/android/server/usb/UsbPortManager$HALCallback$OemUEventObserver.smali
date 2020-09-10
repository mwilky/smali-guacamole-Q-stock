.class Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;
.super Landroid/os/UEventObserver;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager$HALCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OemUEventObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbPortManager$HALCallback;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbPortManager$HALCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;->this$0:Lcom/android/server/usb/UsbPortManager$HALCallback;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5

    const-string v0, "USB_CONTAMINANT"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DETECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Uevent received, combination status: "

    const-string v3, "UsbPortManager"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;->this$0:Lcom/android/server/usb/UsbPortManager$HALCallback;

    iget-object v1, v1, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$400(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v4, 0x3

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;->this$0:Lcom/android/server/usb/UsbPortManager$HALCallback;

    iget-object v4, v4, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbPortManager;->access$400(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "RECOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;->this$0:Lcom/android/server/usb/UsbPortManager$HALCallback;

    iget-object v1, v1, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->access$400(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v4, 0x4

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;->this$0:Lcom/android/server/usb/UsbPortManager$HALCallback;

    iget-object v4, v4, Lcom/android/server/usb/UsbPortManager$HALCallback;->portManager:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbPortManager;->access$400(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method startMonitor()V
    .locals 1

    const-string v0, "DEVPATH=/devices/platform/soc/c440000.qcom,spmi/spmi-0/spmi0-02/c440000.qcom,spmi:qcom,pm8150b@2:qcom,qpnp-smb5"

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbPortManager$HALCallback$OemUEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method
