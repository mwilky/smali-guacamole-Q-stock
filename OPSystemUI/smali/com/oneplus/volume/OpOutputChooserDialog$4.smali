.class Lcom/oneplus/volume/OpOutputChooserDialog$4;
.super Landroid/os/Handler;
.source "OpOutputChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/volume/OpOutputChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/volume/OpOutputChooserDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog$4;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$4;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog;->onDetailItemClick(Lcom/oneplus/volume/OpOutputChooserLayout$Item;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$4;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-virtual {v0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog;->setActiveBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$4;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$502(Lcom/oneplus/volume/OpOutputChooserDialog;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "active the select device:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpOutputChooserDialog"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$4;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$300(Lcom/oneplus/volume/OpOutputChooserDialog;Z)V

    :goto_0
    return-void
.end method
