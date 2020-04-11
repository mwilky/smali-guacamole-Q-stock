.class Lcom/android/server/sis/cno;
.super Landroid/service/notification/NotificationListenerService;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sis/vdb;
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

    iput-object p1, p0, Lcom/android/server/sis/cno;->this$0:Lcom/android/server/sis/vdb;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 1

    const-string p0, "OpSlaNetlinkHelper"

    const-string v0, "onListenerConnected"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onListenerDisconnected()V
    .locals 1

    const-string p0, "OpSlaNetlinkHelper"

    const-string v0, "onListenerDisconnected"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    invoke-static {}, Lcom/android/server/sis/vdb;->access$2400()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/sis/vdb;->access$2400()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    invoke-static {}, Lcom/android/server/sis/vdb;->access$2400()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getChannel()Ljava/lang/String;

    move-result-object p1

    const-string p2, "downloads"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/server/sis/cno;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->qbh(Lcom/android/server/sis/vdb;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const-string p1, "OpSlaNetlinkHelper"

    const-string p2, "onNotificationPosted"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sis/cno;->this$0:Lcom/android/server/sis/vdb;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;Z)Z

    iget-object p1, p0, Lcom/android/server/sis/cno;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->cgv(Lcom/android/server/sis/vdb;)I

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/server/sis/cno;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p0}, Lcom/android/server/sis/vdb;->ywr(Lcom/android/server/sis/vdb;)V

    :cond_3
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    invoke-static {}, Lcom/android/server/sis/vdb;->access$2400()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/sis/vdb;->access$2400()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_1

    invoke-static {}, Lcom/android/server/sis/vdb;->access$2400()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getChannel()Ljava/lang/String;

    move-result-object p1

    const-string p2, "downloads"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/server/sis/cno;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->qbh(Lcom/android/server/sis/vdb;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p1, "OpSlaNetlinkHelper"

    const-string p2, "onNotificationRemoved"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sis/cno;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1, v0}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;Z)Z

    iget-object p0, p0, Lcom/android/server/sis/cno;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p0}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
