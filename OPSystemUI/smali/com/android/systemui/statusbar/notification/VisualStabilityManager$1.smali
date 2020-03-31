.class Lcom/android/systemui/statusbar/notification/VisualStabilityManager$1;
.super Ljava/lang/Object;
.source "VisualStabilityManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/VisualStabilityManager;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$1;->this$0:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$1;->this$0:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->access$000(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)Landroidx/collection/ArraySet;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPreEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->ambient:Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isLowPriority()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$1;->this$0:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->access$000(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)Landroidx/collection/ArraySet;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
