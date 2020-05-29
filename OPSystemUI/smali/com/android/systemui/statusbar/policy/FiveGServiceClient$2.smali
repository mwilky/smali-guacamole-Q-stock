.class Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;
.super Ljava/lang/Object;
.source "FiveGServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanup()V
    .locals 2

    const-string v0, "FiveGServiceClient"

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1102(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$802(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Lorg/codeaurora/internal/IExtTelephony;)Lorg/codeaurora/internal/IExtTelephony;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$902(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Client;

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindingDied:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FiveGServiceClient"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->cleanup()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1200(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)I

    move-result p1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_0

    const-string/jumbo p1, "try to re-bind"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1300(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x400

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1200(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)I

    move-result p0

    mul-int/lit16 p0, p0, 0x7d0

    add-int/lit16 p0, p0, 0xbb8

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FiveGServiceClient"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$802(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Lorg/codeaurora/internal/IExtTelephony;)Lorg/codeaurora/internal/IExtTelephony;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$800(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1000(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    invoke-interface {p2, v1, v2}, Lorg/codeaurora/internal/IExtTelephony;->registerCallback(Ljava/lang/String;Lorg/codeaurora/internal/INetworkCallback;)Lorg/codeaurora/internal/Client;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$902(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Client;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1102(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$600(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Client = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$900(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Lorg/codeaurora/internal/Client;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onServiceConnected: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    move-result-object p1

    const-string v0, "FiveGServiceClient"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;->cleanup()V

    return-void
.end method
