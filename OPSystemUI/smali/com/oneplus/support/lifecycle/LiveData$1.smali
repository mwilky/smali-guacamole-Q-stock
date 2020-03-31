.class Lcom/oneplus/support/lifecycle/LiveData$1;
.super Ljava/lang/Object;
.source "LiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/lifecycle/LiveData;


# direct methods
.method constructor <init>(Lcom/oneplus/support/lifecycle/LiveData;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/lifecycle/LiveData$1;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData$1;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-static {v0}, Lcom/oneplus/support/lifecycle/LiveData;->access$000(Lcom/oneplus/support/lifecycle/LiveData;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LiveData$1;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-static {v1}, Lcom/oneplus/support/lifecycle/LiveData;->access$100(Lcom/oneplus/support/lifecycle/LiveData;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/support/lifecycle/LiveData$1;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-static {}, Lcom/oneplus/support/lifecycle/LiveData;->access$200()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/support/lifecycle/LiveData;->access$102(Lcom/oneplus/support/lifecycle/LiveData;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/oneplus/support/lifecycle/LiveData$1;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-virtual {p0, v1}, Lcom/oneplus/support/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
