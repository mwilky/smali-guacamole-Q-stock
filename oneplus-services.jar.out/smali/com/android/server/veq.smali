.class Lcom/android/server/veq;
.super Lcom/android/server/irq$you;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/irq;->registerObserver(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/irq;


# direct methods
.method constructor <init>(Lcom/android/server/irq;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/veq;->this$0:Lcom/android/server/irq;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/irq$you;-><init>(Lcom/android/server/irq;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method ssp(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/veq;->this$0:Lcom/android/server/irq;

    invoke-static {v0}, Lcom/android/server/irq;->rtg(Lcom/android/server/irq;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/veq;->this$0:Lcom/android/server/irq;

    invoke-static {p0, p1}, Lcom/android/server/irq;->you(Lcom/android/server/irq;Z)Z

    invoke-static {}, Lcom/android/server/irq;->access$100()Lcom/android/server/irq$zta;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/irq;->access$100()Lcom/android/server/irq$zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/irq$zta;->updateLightsLocked()V

    :cond_0
    return-void
.end method
