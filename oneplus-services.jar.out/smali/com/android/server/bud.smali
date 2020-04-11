.class Lcom/android/server/bud;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/irq$zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/irq$zta;


# direct methods
.method constructor <init>(Lcom/android/server/irq$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/bud;->this$1:Lcom/android/server/irq$zta;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/bud;->this$1:Lcom/android/server/irq$zta;

    invoke-virtual {p0}, Lcom/android/server/irq$zta;->updateLightsLocked()V

    return-void
.end method
