.class Lcom/oneplus/aod/slice/OpWeatherSlice$1;
.super Ljava/lang/Object;
.source "OpWeatherSlice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/slice/OpWeatherSlice;->queryWeatherInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/slice/OpWeatherSlice;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    iget-object v0, v0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run queryWeatherInfo mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    invoke-static {v2}, Lcom/oneplus/aod/slice/OpWeatherSlice;->access$000(Lcom/oneplus/aod/slice/OpWeatherSlice;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    invoke-static {v0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->access$000(Lcom/oneplus/aod/slice/OpWeatherSlice;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    invoke-static {v0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->access$200(Lcom/oneplus/aod/slice/OpWeatherSlice;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "net.oneplus.weather"

    invoke-static {v0, v1}, Lcom/oneplus/util/OpUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    invoke-static {v0, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice;->access$302(Lcom/oneplus/aod/slice/OpWeatherSlice;Z)Z

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    const-string v0, "Query weather info fail: app is not installed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/oneplus/aod/slice/OpWeatherSlice;->access$002(Lcom/oneplus/aod/slice/OpWeatherSlice;I)I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v3, Lcom/oneplus/aod/slice/OpWeatherSlice$1$1;

    invoke-direct {v3, p0}, Lcom/oneplus/aod/slice/OpWeatherSlice$1$1;-><init>(Lcom/oneplus/aod/slice/OpWeatherSlice$1;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    const-wide/16 v4, 0x3

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    invoke-static {v2, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice;->access$002(Lcom/oneplus/aod/slice/OpWeatherSlice;I)I

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query weather info fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    invoke-static {v0, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice;->access$002(Lcom/oneplus/aod/slice/OpWeatherSlice;I)I

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    const-string v0, "Query weather info timeout: 3 seconds"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    iget-object v0, v0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip mRunnable mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    invoke-static {p0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->access$000(Lcom/oneplus/aod/slice/OpWeatherSlice;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
