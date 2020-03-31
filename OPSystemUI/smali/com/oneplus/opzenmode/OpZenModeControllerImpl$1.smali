.class Lcom/oneplus/opzenmode/OpZenModeControllerImpl$1;
.super Landroid/os/Handler;
.source "OpZenModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/opzenmode/OpZenModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/opzenmode/OpZenModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/opzenmode/OpZenModeControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/opzenmode/OpZenModeControllerImpl$1;->this$0:Lcom/oneplus/opzenmode/OpZenModeControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xca

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/oneplus/opzenmode/OpZenModeControllerImpl$1;->this$0:Lcom/oneplus/opzenmode/OpZenModeControllerImpl;

    invoke-static {p0, p1}, Lcom/oneplus/opzenmode/OpZenModeControllerImpl;->access$100(Lcom/oneplus/opzenmode/OpZenModeControllerImpl;Z)V

    goto :goto_0

    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/oneplus/opzenmode/OpZenModeControllerImpl$1;->this$0:Lcom/oneplus/opzenmode/OpZenModeControllerImpl;

    invoke-static {p0, p1}, Lcom/oneplus/opzenmode/OpZenModeControllerImpl;->access$000(Lcom/oneplus/opzenmode/OpZenModeControllerImpl;I)V

    :goto_0
    return-void
.end method
