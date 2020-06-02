.class Lcom/android/server/am/irq$ssp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/irq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ssp"
.end annotation


# instance fields
.field Pn:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/irq;

.field uid:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/irq;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/irq$ssp;->this$0:Lcom/android/server/am/irq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/irq$ssp;->uid:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/irq$ssp;->Pn:Ljava/util/HashSet;

    monitor-enter p0

    :try_start_0
    iput p2, p0, Lcom/android/server/am/irq$ssp;->uid:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method synthetic constructor <init>(Lcom/android/server/am/irq;ILcom/android/server/am/cgv;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/irq$ssp;-><init>(Lcom/android/server/am/irq;I)V

    return-void
.end method

.method private Ya(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/irq$ssp;->Pn:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dma(Ljava/lang/String;I)V
    .locals 4

    monitor-enter p0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/irq$ssp;->Pn:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/irq$ssp;->this$0:Lcom/android/server/am/irq;

    invoke-static {v1, v0}, Lcom/android/server/am/irq;->you(Lcom/android/server/am/irq;I)Lcom/android/server/am/irq$bio;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/am/irq$bio;->tsu(Lcom/android/server/am/irq$bio;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/irq$ssp;->this$0:Lcom/android/server/am/irq;

    const-string v2, "systemUid notifyStateChange NOTIFY_ALL"

    iget v3, p0, Lcom/android/server/am/irq$ssp;->uid:I

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/am/irq;->zta(Lcom/android/server/am/irq;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/irq$bio;->sis(Lcom/android/server/am/irq$bio;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/irq$ssp;->Pn:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/irq$ssp;->Pn:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/irq$ssp;->Pn:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/irq$ssp;->this$0:Lcom/android/server/am/irq;

    invoke-static {v0, p2}, Lcom/android/server/am/irq;->you(Lcom/android/server/am/irq;I)Lcom/android/server/am/irq$bio;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/android/server/am/irq$bio;->tsu(Lcom/android/server/am/irq$bio;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/irq$ssp;->this$0:Lcom/android/server/am/irq;

    const-string v1, "systemUid notifyStateChange"

    iget v2, p0, Lcom/android/server/am/irq$ssp;->uid:I

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/am/irq;->zta(Lcom/android/server/am/irq;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/am/irq$bio;->sis(Lcom/android/server/am/irq$bio;Ljava/lang/String;)V

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zta(Lcom/android/server/am/irq$ssp;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/irq$ssp;->dma(Ljava/lang/String;I)V

    return-void
.end method
