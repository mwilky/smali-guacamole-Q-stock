.class Lcom/android/server/sis/rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sis/vdb;->np()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sis/vdb;


# direct methods
.method constructor <init>(Lcom/android/server/sis/vdb;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frontPackageChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " | "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "OpSlaNetlinkHelper"

    invoke-static {p5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p3, p2}, Lcom/android/server/sis/vdb;->tsu(Lcom/android/server/sis/vdb;I)Z

    move-result p3

    iget-object p6, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p6, p2}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;I)Z

    move-result p2

    const-string p6, "disableWhiteListLinkTurbo.."

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_2

    if-eqz p2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->dma(Lcom/android/server/sis/vdb;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1, v2}, Lcom/android/server/sis/vdb;->tsu(Lcom/android/server/sis/vdb;Z)Z

    iget-object p1, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-virtual {p1, v2}, Lcom/android/server/sis/vdb;->s(Z)V

    const-string p1, "disableGameRttDetect.."

    invoke-static {p5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p2}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {p1, p2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget-object p1, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->gck(Lcom/android/server/sis/vdb;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1, v2}, Lcom/android/server/sis/vdb;->sis(Lcom/android/server/sis/vdb;Z)Z

    iget-object p1, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-virtual {p1, v2}, Lcom/android/server/sis/vdb;->t(Z)V

    invoke-static {p5, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->cgv(Lcom/android/server/sis/vdb;)I

    move-result p1

    if-ne p1, v1, :cond_6

    invoke-static {}, Lcom/android/server/sis/vdb;->access$2400()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    invoke-static {}, Lcom/android/server/sis/vdb;->access$2400()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p0}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p3}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-string p3, "enableGameRttDetect.."

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->gck(Lcom/android/server/sis/vdb;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1, v2}, Lcom/android/server/sis/vdb;->sis(Lcom/android/server/sis/vdb;Z)Z

    iget-object p1, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-virtual {p1, v2}, Lcom/android/server/sis/vdb;->t(Z)V

    invoke-static {p5, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1, v1}, Lcom/android/server/sis/vdb;->tsu(Lcom/android/server/sis/vdb;Z)Z

    iget-object p0, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-virtual {p0, v1}, Lcom/android/server/sis/vdb;->s(Z)V

    invoke-static {p5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p2}, Lcom/android/server/sis/vdb;->dma(Lcom/android/server/sis/vdb;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p2, v2}, Lcom/android/server/sis/vdb;->tsu(Lcom/android/server/sis/vdb;Z)Z

    iget-object p2, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-virtual {p2, v2}, Lcom/android/server/sis/vdb;->s(Z)V

    invoke-static {p5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p2, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p2, v1}, Lcom/android/server/sis/vdb;->sis(Lcom/android/server/sis/vdb;Z)Z

    iget-object p2, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-virtual {p2, v1}, Lcom/android/server/sis/vdb;->t(Z)V

    const-string p2, "enableWhiteListLinkTurbo.."

    invoke-static {p5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p2}, Lcom/android/server/sis/vdb;->cgv(Lcom/android/server/sis/vdb;)I

    move-result p2

    if-nez p2, :cond_6

    invoke-static {}, Lcom/android/server/sis/vdb;->access$2400()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    invoke-static {}, Lcom/android/server/sis/vdb;->access$2400()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/android/server/sis/rtg;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p0}, Lcom/android/server/sis/vdb;->ywr(Lcom/android/server/sis/vdb;)V

    :cond_6
    :goto_1
    return-void
.end method
