.class Lcom/android/systemui/statusbar/phone/NavigationModeController$1;
.super Landroid/content/BroadcastReceiver;
.source "NavigationModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x740c95e0

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    const v0, 0x50fbe506

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_1
    const-string p2, "android.intent.action.OVERLAY_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$100(Lcom/android/systemui/statusbar/phone/NavigationModeController;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$200(Lcom/android/systemui/statusbar/phone/NavigationModeController;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$300(Lcom/android/systemui/statusbar/phone/NavigationModeController;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$400(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$500(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$302(Lcom/android/systemui/statusbar/phone/NavigationModeController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTION_OVERLAY_CHANGED"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->updateCurrentInteractionMode(Z)V

    :cond_5
    :goto_2
    return-void
.end method
