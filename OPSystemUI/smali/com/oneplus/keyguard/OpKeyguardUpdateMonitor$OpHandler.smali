.class public Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;
.super Landroid/os/Handler;
.source "OpKeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OpHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2bd

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {p0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->access$200(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleSystemReady()V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {p0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->access$300(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    iget-boolean v0, p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->access$000(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->access$100(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V

    goto :goto_1

    :pswitch_4
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleScreenTurningOn()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    iget-boolean v1, v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    if-nez v1, :cond_4

    iget-boolean v0, v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "timeout delay of slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    iget-boolean v2, v2, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    iget-boolean v1, v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->opHandlePendingSubInfoChange(I)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
