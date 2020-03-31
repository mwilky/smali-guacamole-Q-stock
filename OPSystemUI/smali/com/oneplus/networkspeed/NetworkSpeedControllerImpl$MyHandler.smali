.class Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;
.super Landroid/os/Handler;
.source "NetworkSpeedControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$000(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$102(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$200(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {p1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$300(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I

    move-result p1

    if-ne v0, p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-virtual {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->updateState()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {p1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$400(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I

    move-result p1

    if-ne v0, p1, :cond_2

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$500(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)V

    :cond_2
    :goto_0
    return-void
.end method
