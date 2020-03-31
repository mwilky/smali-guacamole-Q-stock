.class Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;
.super Ljava/lang/Object;
.source "NotificationGuts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationGuts;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->access$000(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v1, v0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(IIZZ)V

    :cond_0
    return-void
.end method
