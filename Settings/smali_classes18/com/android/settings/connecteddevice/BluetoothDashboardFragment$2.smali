.class Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;
.super Ljava/lang/Object;
.source "BluetoothDashboardFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    iput-object p1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

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

    const-string v1, "BluetoothDashboardFrag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {p2}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$002(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$100(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v5}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$000(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->isOnePlusPods(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v5}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$000(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v6}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$200(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->setIOnePlusUpdate(Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;)V

    iget-object v5, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v5, v4}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$300(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_0

    :cond_1
    goto :goto_2

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v4}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$100(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

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

    const-string v1, "BluetoothDashboardFrag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
