.class Lcom/android/server/AnyMotionDetector$4;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/AnyMotionDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$4;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$4;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v0}, Lcom/android/server/AnyMotionDetector;->access$000(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$4;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->access$600(Lcom/android/server/AnyMotionDetector;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$4;->this$0:Lcom/android/server/AnyMotionDetector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/AnyMotionDetector;->access$602(Lcom/android/server/AnyMotionDetector;Z)Z

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$4;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v1}, Lcom/android/server/AnyMotionDetector;->stop()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
