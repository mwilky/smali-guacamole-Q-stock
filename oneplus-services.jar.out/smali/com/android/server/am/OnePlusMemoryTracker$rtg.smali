.class Lcom/android/server/am/OnePlusMemoryTracker$rtg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusMemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "rtg"
.end annotation


# instance fields
.field private Hu:J

.field public final mUid:I

.field final synthetic this$0:Lcom/android/server/am/OnePlusMemoryTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusMemoryTracker;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->mUid:I

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->hc()V

    return-void
.end method


# virtual methods
.method public fc()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->Hu:J

    sub-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1000(Lcom/android/server/am/OnePlusMemoryTracker;)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hc()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->Hu:J

    return-void
.end method
