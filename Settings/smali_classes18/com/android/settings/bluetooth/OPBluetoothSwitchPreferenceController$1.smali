.class Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "OPBluetoothSwitchPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, -0x5b36f014

    if-eq v1, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->handleStateChanged(I)V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->handleStateChanged(I)V

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->handleStateChanged(I)V

    goto :goto_2

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->handleStateChanged(I)V

    nop

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
