.class public abstract Lcom/oneplus/systemui/statusbar/policy/OpHeadsUpManager;
.super Lcom/android/systemui/statusbar/AlertingNotificationManager;
.source "OpHeadsUpManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected snoozeAlertEntry(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)V
    .locals 0

    const-class p0, Lcom/oneplus/notification/OpNotificationController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/notification/OpNotificationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->snoozeHeadsUp(Landroid/app/Notification;)V

    return-void
.end method
