.class Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;
.super Ljava/lang/Object;
.source "FiveGNetWorkStatus.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanup()V
    .locals 2

    const-string v0, "FiveGNetWorkStatus"

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Z)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$702(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lorg/codeaurora/internal/IExtTelephony;)Lorg/codeaurora/internal/IExtTelephony;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$802(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Client;

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindingDied:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->cleanup()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1200(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    const-string v0, "try to re-bind"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1300(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x400

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1200(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x7d0

    add-int/lit16 v2, v2, 0xbb8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$700(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$800(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/Client;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$700(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$700(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$900(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/INetworkCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/codeaurora/internal/IExtTelephony;->unRegisterCallback(Lorg/codeaurora/internal/INetworkCallback;)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v2, v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$702(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lorg/codeaurora/internal/IExtTelephony;)Lorg/codeaurora/internal/IExtTelephony;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$700(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1000(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$900(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/INetworkCallback;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/codeaurora/internal/IExtTelephony;->registerCallback(Ljava/lang/String;Lorg/codeaurora/internal/INetworkCallback;)Lorg/codeaurora/internal/Client;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$802(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Client;

    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Z)Z

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$600(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$800(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/Client;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;->cleanup()V

    return-void
.end method
