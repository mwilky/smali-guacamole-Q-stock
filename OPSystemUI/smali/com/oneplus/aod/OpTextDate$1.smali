.class Lcom/oneplus/aod/OpTextDate$1;
.super Ljava/lang/Object;
.source "OpTextDate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OpTextDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpTextDate;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpTextDate;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate$1;->this$0:Lcom/oneplus/aod/OpTextDate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate$1;->this$0:Lcom/oneplus/aod/OpTextDate;

    invoke-static {v0}, Lcom/oneplus/aod/OpTextDate;->access$000(Lcom/oneplus/aod/OpTextDate;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/oneplus/aod/OpTextDate$1;->this$0:Lcom/oneplus/aod/OpTextDate;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object p0, p0, Lcom/oneplus/aod/OpTextDate$1;->this$0:Lcom/oneplus/aod/OpTextDate;

    invoke-static {p0}, Lcom/oneplus/aod/OpTextDate;->access$100(Lcom/oneplus/aod/OpTextDate;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
