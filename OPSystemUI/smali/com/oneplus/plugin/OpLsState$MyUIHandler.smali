.class Lcom/oneplus/plugin/OpLsState$MyUIHandler;
.super Landroid/os/Handler;
.source "OpLsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/plugin/OpLsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/plugin/OpLsState;


# direct methods
.method private constructor <init>(Lcom/oneplus/plugin/OpLsState;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/plugin/OpLsState$MyUIHandler;->this$0:Lcom/oneplus/plugin/OpLsState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/plugin/OpLsState;Lcom/oneplus/plugin/OpLsState$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/plugin/OpLsState$MyUIHandler;-><init>(Lcom/oneplus/plugin/OpLsState;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState$MyUIHandler;->this$0:Lcom/oneplus/plugin/OpLsState;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
