.class Lcom/oneplus/keyguard/clock/OpClockCtrl$BGHandler;
.super Landroid/os/Handler;
.source "OpClockCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/clock/OpClockCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/clock/OpClockCtrl;


# direct methods
.method public constructor <init>(Lcom/oneplus/keyguard/clock/OpClockCtrl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl$BGHandler;->this$0:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "ClockCtrl"

    const-string p1, "BGHandler: msg null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl$BGHandler;->this$0:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->access$000(Lcom/oneplus/keyguard/clock/OpClockCtrl;Z)V

    :goto_1
    return-void
.end method
