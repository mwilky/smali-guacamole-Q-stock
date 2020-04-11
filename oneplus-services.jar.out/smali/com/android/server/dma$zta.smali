.class Lcom/android/server/dma$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dma;


# direct methods
.method public constructor <init>(Lcom/android/server/dma;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/dma$zta;->this$0:Lcom/android/server/dma;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/dma$zta;->this$0:Lcom/android/server/dma;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/dma;->you(Lcom/android/server/dma;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/dma$zta;->this$0:Lcom/android/server/dma;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v1, p1}, Lcom/android/server/dma;->sis(Lcom/android/server/dma;I)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/dma$zta;->this$0:Lcom/android/server/dma;

    invoke-static {p0, v0}, Lcom/android/server/dma;->zta(Lcom/android/server/dma;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/dma$zta;->this$0:Lcom/android/server/dma;

    invoke-static {p1, v0}, Lcom/android/server/dma;->tsu(Lcom/android/server/dma;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/dma$zta;->this$0:Lcom/android/server/dma;

    invoke-static {p0, v0}, Lcom/android/server/dma;->rtg(Lcom/android/server/dma;I)V

    :cond_2
    :goto_0
    return-void
.end method
