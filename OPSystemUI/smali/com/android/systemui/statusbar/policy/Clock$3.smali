.class Lcom/android/systemui/statusbar/policy/Clock$3;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/Clock;->access$300(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/Clock;->access$300(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/Clock;->access$400(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/policy/Clock;->access$502(Lcom/android/systemui/statusbar/policy/Clock;I)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/Clock;->access$1000(Lcom/android/systemui/statusbar/policy/Clock;)V

    :cond_1
    :goto_0
    return-void
.end method
