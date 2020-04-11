.class Lcom/android/server/am/OnePlusBGController$you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$you;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/hmo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController$you;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    const-string v0, "plugged"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$you;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->qbh(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$you;->this$0:Lcom/android/server/am/OnePlusBGController;

    if-eqz p2, :cond_2

    move p1, v1

    :cond_2
    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Update mIsPluggedIn to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$you;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->qbh(Lcom/android/server/am/OnePlusBGController;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, -0x1

    const-string v0, "state"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x1e6c

    if-ne p1, p2, :cond_6

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$1000()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "User is waking up, reset budget"

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$you;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->ear(Lcom/android/server/am/OnePlusBGController;)V

    goto :goto_1

    :cond_4
    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    const-string p0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    return-void
.end method
