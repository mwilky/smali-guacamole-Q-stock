.class Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;
.super Ljava/lang/Object;
.source "ShotNextState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/ShotNextState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/ShotNextState;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->getTopBase()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    iget v1, v1, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->access$000(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    iget-object v2, v2, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getStart()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    iget v2, v2, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    sub-int/2addr v1, v2

    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->access$000(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    iget-object v5, v5, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    iget-object v6, v6, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v6, v2}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    invoke-static {v5}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->access$000(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    invoke-static {v5}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->access$200(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    invoke-static {v6}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->access$100(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method
