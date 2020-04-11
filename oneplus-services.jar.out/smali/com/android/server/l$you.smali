.class Lcom/android/server/l$you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/l;


# direct methods
.method private constructor <init>(Lcom/android/server/l;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/l$you;->this$0:Lcom/android/server/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/l;Lcom/android/server/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/l$you;-><init>(Lcom/android/server/l;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/l$you;->this$0:Lcom/android/server/l;

    invoke-static {v0}, Lcom/android/server/l;->rtg(Lcom/android/server/l;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    const-string v0, "level"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    mul-int/2addr v0, v1

    const-string v2, "scale"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    div-int/2addr v0, v1

    const/4 v1, -0x1

    const-string v2, "status"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "fastcharge_status"

    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, p1

    :goto_0
    if-eqz v3, :cond_3

    const/16 v1, 0x8

    goto :goto_1

    :cond_3
    const-string v3, "plugged"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_1
    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    :cond_4
    move p1, v4

    :cond_5
    iget-object v2, p0, Lcom/android/server/l$you;->this$0:Lcom/android/server/l;

    invoke-static {v2}, Lcom/android/server/l;->zta(Lcom/android/server/l;)I

    move-result v2

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Lcom/android/server/l$you;->this$0:Lcom/android/server/l;

    invoke-static {v2}, Lcom/android/server/l;->hmo(Lcom/android/server/l;)I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/l$you;->this$0:Lcom/android/server/l;

    invoke-static {v2}, Lcom/android/server/l;->ssp(Lcom/android/server/l;)Lcom/android/server/l$tsu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/l$tsu;->start()V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/server/l$you;->this$0:Lcom/android/server/l;

    invoke-static {v2}, Lcom/android/server/l;->ssp(Lcom/android/server/l;)Lcom/android/server/l$tsu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/l$tsu;->stop()V

    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/android/server/l$you;->this$0:Lcom/android/server/l;

    invoke-static {v2}, Lcom/android/server/l;->cno(Lcom/android/server/l;)I

    move-result v2

    if-eq v0, v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " level="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "OverHeatingDiagnosis"

    invoke-static {v2, p2}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/l$you;->this$0:Lcom/android/server/l;

    invoke-static {p2, v0}, Lcom/android/server/l;->sis(Lcom/android/server/l;I)I

    iget-object p0, p0, Lcom/android/server/l$you;->this$0:Lcom/android/server/l;

    invoke-static {p0}, Lcom/android/server/l;->sis(Lcom/android/server/l;)Lcom/android/server/l$ssp;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v4, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    return-void
.end method
