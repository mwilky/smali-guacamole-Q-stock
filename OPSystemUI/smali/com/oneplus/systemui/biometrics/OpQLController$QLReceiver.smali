.class final Lcom/oneplus/systemui/biometrics/OpQLController$QLReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpQLController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpQLController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QLReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpQLController;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/biometrics/OpQLController;)V
    .locals 3

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLController$QLReceiver;->this$0:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpQLController;->access$100(Lcom/oneplus/systemui/biometrics/OpQLController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpQLController;->access$000(Lcom/oneplus/systemui/biometrics/OpQLController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLController$QLReceiver;->this$0:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpQLController;->isQLEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string p2, "com.android.deskclock.ALARM_ALERT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLController$QLReceiver;->this$0:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLController;->shouldHideQLView()V

    :cond_2
    return-void
.end method
