.class Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;
.super Landroid/os/Handler;
.source "HoustonServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/apkserver/bridge/HoustonServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;


# direct methods
.method public constructor <init>(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->remove(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v1

    iget-object v2, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->processName:Ljava/lang/String;

    iget v4, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->bindApplicationDelayMs:I

    iget v5, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->launchTime:I

    iget-object v6, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->componentName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->reportActivityDisplayed(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v1

    iget-object v2, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;->activityName:Ljava/lang/String;

    iget-object v3, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;->packageName:Ljava/lang/String;

    iget v4, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;->uid:I

    iget v5, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;->pid:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->setFront(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v1

    iget-object v2, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->processName:Ljava/lang/String;

    iget v4, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->pid:I

    iget v5, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->bindApplicationDelayMs:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->preBindApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-static {v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->access$000(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    sget v2, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    and-int/2addr v1, v2

    if-lez v1, :cond_1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-static {v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->access$100(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->saveDataToMDM(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-static {v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->access$300(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)V

    :cond_1
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateScreenState(Z)V

    goto :goto_1

    :pswitch_5
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-static {v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->access$100(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-static {v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->access$200(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    move-result-object v2

    new-instance v3, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$HoustonGlobalConfigUpdater;

    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-direct {v3, v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$HoustonGlobalConfigUpdater;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)V

    const-string v4, "HoustonGlobalConfig"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-static {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->access$002(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;Z)Z

    nop

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
