.class Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;
.super Landroid/os/Handler;
.source "NetworkSpeedControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$600(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {p1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$700(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$600(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {p1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$800(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {p1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$800(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->access$900(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;)V

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1000(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)V

    :cond_0
    return-void
.end method
