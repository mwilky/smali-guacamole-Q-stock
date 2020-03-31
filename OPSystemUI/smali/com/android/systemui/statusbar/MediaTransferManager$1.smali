.class Lcom/android/systemui/statusbar/MediaTransferManager$1;
.super Ljava/lang/Object;
.source "MediaTransferManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MediaTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MediaTransferManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MediaTransferManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/MediaTransferManager$1;->this$0:Lcom/android/systemui/statusbar/MediaTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNotificationForParent(Landroid/view/ViewParent;)Landroid/service/notification/StatusBarNotification;
    .locals 0

    :goto_0
    if-eqz p1, :cond_1

    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleMediaTransfer(Landroid/view/View;)Z
    .locals 3

    const v0, 0x102032e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MediaTransferManager$1;->getNotificationForParent(Landroid/view/ViewParent;)Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings.panel.action.MEDIA_OUTPUT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.android.settings.panel.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/MediaTransferManager$1;->this$0:Lcom/android/systemui/statusbar/MediaTransferManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/MediaTransferManager;->access$000(Lcom/android/systemui/statusbar/MediaTransferManager;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    const v0, 0x10008000

    const/4 v2, 0x1

    invoke-interface {p0, p1, v1, v2, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZI)V

    return v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MediaTransferManager$1;->handleMediaTransfer(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    :cond_0
    return-void
.end method
