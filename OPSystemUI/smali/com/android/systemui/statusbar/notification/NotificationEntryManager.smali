.class public Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
.super Ljava/lang/Object;
.source "NotificationEntryManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;
.implements Lcom/android/systemui/statusbar/NotificationUpdateHandler;
.implements Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
.implements Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;
.implements Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;


# static fields
.field private static final DEBUG:Z

.field private static final OP_DEBUG:Z


# instance fields
.field protected final mCachedNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNotificationEntryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryListener;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationLifetimeExtenders:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationLifetimeExtender;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

.field private final mOPNotificationController:Lcom/oneplus/notification/OpNotificationController;

.field private mOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;

.field protected final mPendingNotifications:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private mRemoveInterceptor:Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

.field private final mRetainedNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/NotificationLifetimeExtender;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NotificationEntryMgr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->DEBUG:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->OP_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    const-class v0, Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/notification/OpNotificationController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mOPNotificationController:Lcom/oneplus/notification/OpNotificationController;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mContext:Landroid/content/Context;

    const-class p1, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/worklife/OPWLBHelper;->getInstance(Landroid/content/Context;)Lcom/oneplus/worklife/OPWLBHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-virtual {p1, p0}, Lcom/oneplus/worklife/OPWLBHelper;->registerChanges(Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->setWlbHelper(Lcom/oneplus/worklife/OPWLBHelper;)V

    return-void
.end method

.method private abortExistingInflation(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()V

    :cond_1
    return-void
.end method

.method private addNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNotification key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationEntryMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    new-instance v1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    invoke-virtual {p2, v0, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p2, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;-><init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)V

    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v1, p2}, Lcom/android/systemui/util/leak/LeakDetector;->trackInstance(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->requireBinder()Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$lOGPG9l6kx5UZEzr26g7h2LQR6w;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$lOGPG9l6kx5UZEzr26g7h2LQR6w;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {v1, p2, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;->inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onPendingEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    :cond_0
    return-void
.end method

.method private extendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-interface {p2, p1, p0}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    return-void
.end method

.method private getRemoteInputManager()Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    return-object p0
.end method

.method private handleGroupSummaryRemoved(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x40

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getRemoteInputManager()Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->shouldKeepForRemoteInputHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getRemoteInputManager()Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->shouldKeepForSmartReplyHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v5

    :goto_3
    if-nez v4, :cond_6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setKeepInParent(Z)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->removeRow()V

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private obtainVisibility(Ljava/lang/String;)Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    return-object p0
.end method

.method private removeNotificationInternal(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/internal/statusbar/NotificationVisibility;ZZI)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoveInterceptor:Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p6}, Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;->onNotificationRemoveRequested(Ljava/lang/String;I)Z

    move-result p6

    if-eqz p6, :cond_0

    return-void

    :cond_0
    iget-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {p6, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p6, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->shouldExtendLifetimeForPendingNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->extendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p6, :cond_5

    iget-object v2, p6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mOPNotificationController:Lcom/oneplus/notification/OpNotificationController;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/oneplus/notification/OpNotificationController;->shouldForceRemoveEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move p4, v1

    :cond_5
    if-eqz p6, :cond_a

    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v2

    if-nez p4, :cond_7

    if-nez v2, :cond_7

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_6
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    invoke-interface {v3, p6}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, p6, v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->extendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    move v0, v1

    :cond_7
    if-nez v0, :cond_a

    invoke-direct {p0, p6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->removeRow()V

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->handleGroupSummaryRemoved(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {p4, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    const-class p2, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {p2, p6}, Lcom/android/systemui/util/leak/LeakDetector;->trackGarbage(Ljava/lang/Object;)V

    or-int p2, p5, v2

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-interface {p5, p6, p3, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;Z)V

    goto :goto_1

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/worklife/OPWLBHelper;->getInstance(Landroid/content/Context;)Lcom/oneplus/worklife/OPWLBHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/worklife/OPWLBHelper;->removeNotificationKey(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private requireBinder()Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "You must initialize NotificationEntryManager by callingsetRowBinder() before using."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updateNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->DEBUG:Z

    const-string v1, "NotificationEntryMgr"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotification("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->ShowChronometerOnStatusBar()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->createChronometer(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->statusBarChronometer:Landroid/widget/Chronometer;

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->keyguardChronometer:Landroid/widget/Chronometer;

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v2, v0, p2, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->update(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/service/notification/StatusBarNotification;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onPreEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->requireBinder()Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

    move-result-object p2

    new-instance v2, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$RJEcTAo4cuGvAgvl2zrMgzSF4kM;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$RJEcTAo4cuGvAgvl2zrMgzSF4kM;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {p2, v0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;->inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    sget-boolean p2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->DEBUG:Z

    if-eqz p2, :cond_5

    const-class p2, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification is "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    const-string p1, ""

    goto :goto_2

    :cond_4
    const-string p1, "not "

    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "for you"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onPostEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_3

    :cond_6
    return-void
.end method

.method private updateRankingOfPendingNotifications(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->populateFromRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$B9Rprc7VWCrqKYHxmFbKGPst6oI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$B9Rprc7VWCrqKYHxmFbKGPst6oI;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->setCallback(Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;)V

    return-void
.end method

.method public addNotificationLifetimeExtenders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/NotificationLifetimeExtender;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cacheNotification(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "NotificationEntryManager state:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mPendingNotifications="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "null"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    const-string p1, "  Lifetime-extended notifications:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "    None"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " retained by "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    return-object p0
.end method

.method public getPendingNotificationsIterator()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .locals 7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotificationInternal(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/internal/statusbar/NotificationVisibility;ZZI)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onInflationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$addNotificationInternal$1$NotificationEntryManager(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    return-void
.end method

.method public synthetic lambda$addNotificationLifetimeExtender$0$NotificationEntryManager(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method

.method public synthetic lambda$updateNotificationInternal$2$NotificationEntryManager(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    return-void
.end method

.method public onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasJustLaunchedFullScreenIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notifyFullScreenIntentLaunched()V

    sget-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->OP_DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAsyncInflationFinished, update lastFullScreenIntentLaunchTime from cached entry, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationEntryMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onEntryInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->add(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onBeforeNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onEntryReinflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public onModeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    return-void
.end method

.method public onReorderingAllowed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    return-void
.end method

.method public performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V
    .locals 8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->obtainVisibility(Ljava/lang/String;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotificationInternal(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/internal/statusbar/NotificationVisibility;ZZI)V

    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->obtainVisibility(Ljava/lang/String;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotificationInternal(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/internal/statusbar/NotificationVisibility;ZZI)V

    return-void
.end method

.method public setNotificationRemoveInterceptor(Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoveInterceptor:Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

    return-void
.end method

.method public setRowBinder(Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationFilter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->setWlbHelper(Lcom/oneplus/worklife/OPWLBHelper;)V

    return-void
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v4}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->extractFromNotificationEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/NotificationUiAdjustment;

    move-result-object v5

    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateRankingOfPendingNotifications(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->requireBinder()Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationUiAdjustment;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->extractFromNotificationEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/NotificationUiAdjustment;

    move-result-object v7

    invoke-interface {v4, v3, v5, v6, v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;->onNotificationRankingUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Integer;Lcom/android/systemui/statusbar/NotificationUiAdjustment;Lcom/android/systemui/statusbar/NotificationUiAdjustment;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onNotificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public updateNotifications()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->filterAndSort()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateNotificationViews()V

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->onNotificationUpdate(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mOPNotificationController:Lcom/oneplus/notification/OpNotificationController;

    invoke-virtual {p0}, Lcom/oneplus/notification/OpNotificationController;->setQuickReplyFlags()V

    return-void
.end method
