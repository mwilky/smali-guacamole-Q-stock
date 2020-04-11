.class Lcom/android/server/am/qbh;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/oif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/oif;


# direct methods
.method constructor <init>(Lcom/android/server/am/oif;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/qbh;->this$0:Lcom/android/server/am/oif;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "receive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EmbryoManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/am/qbh;->this$0:Lcom/android/server/am/oif;

    invoke-static {p1}, Lcom/android/server/am/oif;->sis(Lcom/android/server/am/oif;)Lcom/android/server/am/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/x;->rc()V

    iget-object p1, p0, Lcom/android/server/am/qbh;->this$0:Lcom/android/server/am/oif;

    invoke-static {p1}, Lcom/android/server/am/oif;->sis(Lcom/android/server/am/oif;)Lcom/android/server/am/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/x;->sc()V

    invoke-static {}, Lcom/android/server/am/oif;->access$500()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/qbh;->this$0:Lcom/android/server/am/oif;

    invoke-static {p0}, Lcom/android/server/am/oif;->tsu(Lcom/android/server/am/oif;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
