.class Lcom/android/systemui/bubbles/BubbleExpandedView$1;
.super Landroid/app/ActivityView$StateCallback;
.source "BubbleExpandedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleExpandedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-direct {p0}, Landroid/app/ActivityView$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onActivityViewReady$0$BubbleExpandedView$1(Landroid/app/ActivityOptions;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$400(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/ActivityView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$300(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityView;->startActivity(Landroid/app/PendingIntent;Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public synthetic lambda$onTaskRemovalStarted$1$BubbleExpandedView$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$200(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$100(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    return-void
.end method

.method public onActivityViewDestroyed(Landroid/app/ActivityView;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$002(Lcom/android/systemui/bubbles/BubbleExpandedView;Z)Z

    return-void
.end method

.method public onActivityViewReady(Landroid/app/ActivityView;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$000(Lcom/android/systemui/bubbles/BubbleExpandedView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$002(Lcom/android/systemui/bubbles/BubbleExpandedView;Z)Z

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$g0YjNvBWtSGWit8uywvLlkarcag;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$g0YjNvBWtSGWit8uywvLlkarcag;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView$1;Landroid/app/ActivityOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onTaskRemovalStarted(I)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$100(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$1;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$wFmGYWDvx1tFURTJCp8j5qJlvAk;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$1$wFmGYWDvx1tFURTJCp8j5qJlvAk;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
