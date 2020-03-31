.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$jgw9sgV4IaJBnAReag6kP8VBfUI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final synthetic f$3:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$jgw9sgV4IaJBnAReag6kP8VBfUI;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$jgw9sgV4IaJBnAReag6kP8VBfUI;->f$1:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$jgw9sgV4IaJBnAReag6kP8VBfUI;->f$2:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$jgw9sgV4IaJBnAReag6kP8VBfUI;->f$3:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$jgw9sgV4IaJBnAReag6kP8VBfUI;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$jgw9sgV4IaJBnAReag6kP8VBfUI;->f$1:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$jgw9sgV4IaJBnAReag6kP8VBfUI;->f$2:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$jgw9sgV4IaJBnAReag6kP8VBfUI;->f$3:Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->lambda$new$0$StatusBarNotificationPresenter(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;)V

    return-void
.end method
