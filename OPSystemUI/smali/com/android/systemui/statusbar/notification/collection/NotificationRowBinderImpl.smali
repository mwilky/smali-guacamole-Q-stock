.class public Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;
.super Ljava/lang/Object;
.source "NotificationRowBinderImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl$BindRowCallback;
    }
.end annotation


# instance fields
.field private final mAllowLongPress:Z

.field private mBindRowCallback:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl$BindRowCallback;

.field private final mContext:Landroid/content/Context;

.field private final mExpansionLogger:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$ExpansionLogger;

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mInflationCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;

.field private mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field private final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

.field private mNotificationClicker:Lcom/android/systemui/statusbar/notification/NotificationClicker;

.field private final mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

.field private final mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

.field private mOnAppOpsClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$NotificationRowBinderImpl$yERtDMu_MSEd5-3CM8yc051ZJLU;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$NotificationRowBinderImpl$yERtDMu_MSEd5-3CM8yc051ZJLU;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mExpansionLogger:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$ExpansionLogger;

    const-class v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-direct {v0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mAllowLongPress:Z

    return-void
.end method

.method private bindRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mExpansionLogger:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$ExpansionLogger;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setExpansionLogger(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnExpandClickListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mInflationCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setInflationCallback(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mAllowLongPress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$0lGYUT66Z7cr4TZs4rdZ8M7DQkw;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$0lGYUT66Z7cr4TZs4rdZ8M7DQkw;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)V

    invoke-virtual {p4, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setLongPressListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v0, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->bindRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->getRemoteInputManager()Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->bindRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2200

    :try_start_0
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAppName(Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnDismissRunnable(Ljava/lang/Runnable;)V

    const/high16 p5, 0x60000

    invoke-virtual {p4, p5}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    sget-boolean p5, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz p5, :cond_2

    const/high16 p5, 0x20000

    invoke-virtual {p4, p5}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    :cond_2
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mOnAppOpsClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;

    invoke-virtual {p4, p5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAppOpsOnClickListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mBindRowCallback:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl$BindRowCallback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl$BindRowCallback;->onBindRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private getRemoteInputManager()Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    return-object p0
.end method

.method public static synthetic lambda$yERtDMu_MSEd5-3CM8yc051ZJLU(Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->logNotificationExpansion(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private logNotificationExpansion(Ljava/lang/String;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->onExpansionChanged(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private updateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 4

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->ambient:Z

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIsLowPriority(Z)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed looking up ApplicationInfo for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationViewManager"

    invoke-static {v2, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    const/16 v1, 0x9

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt p2, v1, :cond_0

    if-ge p2, v2, :cond_0

    move p2, v3

    goto :goto_1

    :cond_0
    move p2, v0

    :goto_1
    invoke-virtual {p4, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setLegacy(Z)V

    sget p2, Lcom/android/systemui/R$id;->icon_is_pre_L:I

    iget v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    if-ge v1, v2, :cond_1

    move v1, v3

    goto :goto_2

    :cond_1
    move v1, v0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setIconTag(ILjava/lang/Object;)V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object p2, p2, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-nez p2, :cond_2

    move p2, v3

    goto :goto_3

    :cond_2
    move p2, v0

    :goto_3
    iput-boolean p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->autoRedacted:Z

    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-virtual {p4, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOnActivatedListener(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    iget v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    invoke-virtual {p2, p3, v1}, Lcom/android/internal/util/NotificationMessagingUtil;->isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_4

    :cond_3
    move v1, v0

    :goto_4
    invoke-virtual {p4, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUseIncreasedCollapsedHeight(Z)V

    invoke-virtual {p4, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUseIncreasedHeadsUpHeight(Z)V

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x4

    invoke-virtual {p4, p2, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateInflationFlag(IZ)V

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldPulse(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/16 p2, 0x8

    invoke-virtual {p4, p2, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateInflationFlag(IZ)V

    :cond_5
    const-class p2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isSecure()Z

    move-result p2

    if-eqz p2, :cond_6

    const-class p2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p2

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->isLocked(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    move p2, v3

    goto :goto_5

    :cond_6
    move p2, v0

    :goto_5
    const-class v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-nez p1, :cond_8

    if-eqz p2, :cond_7

    goto :goto_6

    :cond_7
    move p1, v0

    goto :goto_7

    :cond_8
    :goto_6
    move p1, v3

    :goto_7
    if-nez p1, :cond_9

    if-eqz p2, :cond_a

    :cond_9
    move v0, v3

    :cond_a
    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setNeedsRedaction(Z)V

    invoke-virtual {p4, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentHidden(Z)V

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->inflateViews()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mNotificationClicker:Lcom/android/systemui/statusbar/notification/NotificationClicker;

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;

    invoke-virtual {p0, p4, p3}, Lcom/android/systemui/statusbar/notification/NotificationClicker;->register(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method


# virtual methods
.method public inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getViewParentForNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->updateIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->reset()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p2

    invoke-direct {p0, p1, v6, v7, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->updateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->createIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$NotificationRowBinderImpl$0PyN32FQZaNZKR9hi21mLsFCxgE;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$NotificationRowBinderImpl$0PyN32FQZaNZKR9hi21mLsFCxgE;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2, v0, p1, v9}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowInflationFinishedListener;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$inflateViews$0$NotificationRowBinderImpl(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->bindRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/Runnable;)V

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->updateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public onNotificationRankingUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Integer;Lcom/android/systemui/statusbar/NotificationUiAdjustment;Lcom/android/systemui/statusbar/NotificationUiAdjustment;)V
    .locals 0

    invoke-static {p3, p4}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->needReinflate(Lcom/android/systemui/statusbar/NotificationUiAdjustment;Lcom/android/systemui/statusbar/NotificationUiAdjustment;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->reset()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mContext:Landroid/content/Context;

    iget-object p3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->updateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p0, p2, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onNotificationRankingUpdated()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNotificationClicker(Lcom/android/systemui/statusbar/notification/NotificationClicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mNotificationClicker:Lcom/android/systemui/statusbar/notification/NotificationClicker;

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl$BindRowCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mInflationCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mBindRowCallback:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl$BindRowCallback;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$oy9pBf4KjrW7ZRpgHkpOCIaDYlg;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$oy9pBf4KjrW7ZRpgHkpOCIaDYlg;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->mOnAppOpsClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;

    return-void
.end method
