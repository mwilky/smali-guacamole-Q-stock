.class Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/collection/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {p1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    new-instance p1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {p1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 13

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$000(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v6}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v6

    goto :goto_0

    :cond_0
    move v2, v3

    move v5, v4

    move v6, v5

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$100(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    if-le v3, v9, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v4

    :goto_1
    iget-object v10, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-le v2, v9, :cond_2

    move v7, v9

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    const/4 v10, 0x4

    if-lt v3, v10, :cond_3

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$200(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v9

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    if-lt v2, v10, :cond_4

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$200(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v9

    goto :goto_4

    :cond_4
    move v2, v4

    :goto_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v10

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v11

    const/4 v12, -0x1

    if-eq v10, v11, :cond_6

    if-eqz v10, :cond_5

    move v9, v12

    :cond_5
    return v9

    :cond_6
    if-eqz v10, :cond_7

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$300(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    return p0

    :cond_7
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsGamingModeNotification:Z

    if-eqz p0, :cond_8

    return v12

    :cond_8
    iget-boolean p0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsGamingModeNotification:Z

    if-eqz p0, :cond_9

    return v9

    :cond_9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingAmbientPulsing()Z

    move-result p0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingAmbientPulsing()Z

    move-result v10

    if-eq p0, v10, :cond_b

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingAmbientPulsing()Z

    move-result p0

    if-eqz p0, :cond_a

    move v9, v12

    :cond_a
    return v9

    :cond_b
    if-eq v8, v7, :cond_d

    if-eqz v8, :cond_c

    move v9, v12

    :cond_c
    return v9

    :cond_d
    if-eq v3, v2, :cond_f

    if-eqz v3, :cond_e

    move v9, v12

    :cond_e
    return v9

    :cond_f
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result p0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v2

    if-eq p0, v2, :cond_10

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result p0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    mul-int/2addr p0, v12

    return p0

    :cond_10
    if-eq v5, v6, :cond_11

    sub-int/2addr v5, v6

    return v5

    :cond_11
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-wide p0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-nez p0, :cond_13

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-wide p0, p0, Landroid/app/Notification;->when:J

    cmp-long p0, p0, v2

    if-nez p0, :cond_12

    return v4

    :cond_12
    return v9

    :cond_13
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-wide p0, p0, Landroid/app/Notification;->when:J

    cmp-long p0, p0, v2

    if-nez p0, :cond_14

    return v12

    :cond_14
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-wide p0, p0, Landroid/app/Notification;->when:J

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-wide v0, p2, Landroid/app/Notification;->when:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    return p0
.end method
