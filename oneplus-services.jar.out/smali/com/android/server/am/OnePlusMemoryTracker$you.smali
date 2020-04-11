.class final Lcom/android/server/am/OnePlusMemoryTracker$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusMemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "you"
.end annotation


# instance fields
.field final id:I

.field final isProc:Z

.field final label:Ljava/lang/String;

.field final pss:J

.field final shortLabel:Ljava/lang/String;

.field final swapPss:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->isProc:Z

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->shortLabel:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->pss:J

    iput-wide p5, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->swapPss:J

    iput p7, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->id:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->pss:J

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusMemoryTracker;->access$900(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->swapPss:J

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusMemoryTracker;->access$900(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in swap"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
