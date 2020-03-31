.class Lcom/oneplus/plugin/OpPreventModeCtrl$ProximityHandler;
.super Landroid/os/Handler;
.source "OpPreventModeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/plugin/OpPreventModeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;


# direct methods
.method private constructor <init>(Lcom/oneplus/plugin/OpPreventModeCtrl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximityHandler;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/plugin/OpPreventModeCtrl;Lcom/oneplus/plugin/OpPreventModeCtrl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximityHandler;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximityHandler;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {p1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$100(Lcom/oneplus/plugin/OpPreventModeCtrl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximityHandler;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {v0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$600(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximityHandler;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->stopPreventMode()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximityHandler;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {p1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$100(Lcom/oneplus/plugin/OpPreventModeCtrl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximityHandler;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$500(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    monitor-exit p1

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method
