.class Lcom/android/systemui/statusbar/notification/NotificationAlertingManager$1;
.super Ljava/lang/Object;
.source "NotificationAlertingManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/AmbientPulseManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Lcom/android/systemui/statusbar/NotificationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->access$000(Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->access$200(Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;Ljava/lang/String;)V

    return-void
.end method

.method public onPostEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->access$100(Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
