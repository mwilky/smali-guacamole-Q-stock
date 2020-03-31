.class public Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;
.super Ljava/lang/Object;
.source "OpNotificationData.java"


# instance fields
.field private mCarModeHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

.field private mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

.field private mShowCarModeHighlightNotification:Z

.field private mShowHighlightNotification:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 5

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "get"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method private getEntries()Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    const-string v1, "mEntries"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    return-object p0
.end method

.method private getNotificationFilter()Lcom/android/systemui/statusbar/notification/NotificationFilter;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    const-string v1, "mNotificationFilter"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;

    return-object p0
.end method

.method private getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .locals 6

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/service/notification/NotificationListenerService$Ranking;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "getRanking"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private getRankingComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    const-string v1, "mRankingComparator"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Comparator;

    return-object p0
.end method

.method private getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    const-string v1, "mRankingMap"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p0
.end method

.method private getSortedAndFiltered()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    const-string v1, "mSortedAndFiltered"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method private getTmpRanking()Landroid/service/notification/NotificationListenerService$Ranking;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    const-string v1, "mTmpRanking"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/notification/NotificationListenerService$Ranking;

    return-object p0
.end method


# virtual methods
.method public filterAndSort()V
    .locals 10

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getEntries()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getSortedAndFiltered()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->mShowHighlightNotification:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->mShowCarModeHighlightNotification:Z

    iput-object v3, p0, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->mCarModeHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->showOnStatusBar()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroid/app/Notification;->getPriorityOnStatusBar()I

    move-result v7

    const/16 v8, 0xc8

    const/4 v9, 0x1

    if-ne v7, v8, :cond_0

    iput-boolean v9, p0, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->mShowCarModeHighlightNotification:Z

    iput-object v6, p0, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->mCarModeHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    goto :goto_1

    :cond_0
    if-le v7, v4, :cond_1

    iput-boolean v9, p0, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->mShowHighlightNotification:Z

    iput-object v6, p0, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    move v4, v7

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getNotificationFilter()Lcom/android/systemui/statusbar/notification/NotificationFilter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getRankingComparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->mCarModeHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    return-object p0
.end method

.method public getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    return-object p0
.end method

.method public getKeyguardChronometer()Landroid/widget/Chronometer;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->keyguardChronometer:Landroid/widget/Chronometer;

    return-object p0
.end method

.method public getStatusBarChronometer()Landroid/widget/Chronometer;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->statusBarChronometer:Landroid/widget/Chronometer;

    return-object p0
.end method

.method public isLocked(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getTmpRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isLocked()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 p1, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "keyguard_visible"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public showCarModeNotification()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->mShowCarModeHighlightNotification:Z

    return p0
.end method

.method public showNotification()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->mShowHighlightNotification:Z

    return p0
.end method
