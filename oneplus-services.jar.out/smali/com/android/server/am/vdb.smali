.class Lcom/android/server/am/vdb;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/zgw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/zgw;


# direct methods
.method constructor <init>(Lcom/android/server/am/zgw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/vdb;->this$0:Lcom/android/server/am/zgw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    sget-boolean p1, Lcom/android/server/am/zgw;->sInUsing:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# mPackageReceiver # onReceive # action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# mPackageReceiver # onReceive # mPkgMap replaced "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p0, Lcom/android/server/am/vdb;->this$0:Lcom/android/server/am/zgw;

    iget-object p2, p2, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/server/am/vdb;->this$0:Lcom/android/server/am/zgw;

    iget-object p2, p2, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object p2, p0, Lcom/android/server/am/vdb;->this$0:Lcom/android/server/am/zgw;

    iget-object p2, p2, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v4, 0x15

    goto :goto_0

    :cond_5
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# mPackageReceiver # onReceive # mPkgMap removed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_7
    iget-object p2, p0, Lcom/android/server/am/vdb;->this$0:Lcom/android/server/am/zgw;

    iget-object p2, p2, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v4, 0x16

    :goto_0
    invoke-static {p2, v0, v4, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/vdb;->this$0:Lcom/android/server/am/zgw;

    iget-object p2, p2, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_8
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p2, :cond_a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# mPackageReceiver # onReceive # mPkgMap added "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_a
    iget-object p2, p0, Lcom/android/server/am/vdb;->this$0:Lcom/android/server/am/zgw;

    iget-object p2, p2, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/android/server/am/vdb;->this$0:Lcom/android/server/am/zgw;

    iget-object p2, p2, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    iget-object p2, p0, Lcom/android/server/am/vdb;->this$0:Lcom/android/server/am/zgw;

    iget-object p2, p2, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v4, 0x17

    goto :goto_0

    :cond_c
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/vdb;->this$0:Lcom/android/server/am/zgw;

    const-wide/16 p1, 0x4e20

    invoke-static {p0, p1, p2}, Lcom/android/server/am/zgw;->you(Lcom/android/server/am/zgw;J)V

    return-void
.end method
