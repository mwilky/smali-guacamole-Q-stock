.class Lcom/android/server/policy/ywr;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OpPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/ywr;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "OpPhoneWindowManager"

    const-string v0, "mEngineerModeHandleReceiver -- onReceive -- entry"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "oem.intent.action.DISABLE_LIDCONTROLSSLEEP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "Receive ACTION_DISABLE_LIDCONTROLSSLEEP"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/ywr;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/policy/OpPhoneWindowManager;->access$200(Lcom/android/server/policy/OpPhoneWindowManager;I)V

    goto :goto_1

    :cond_0
    const-string v0, "oem.intent.action.ENABLE_LIDCONTROLSSLEEP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Receive ACTION_ENABLE_LIDCONTROLSSLEEP"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/ywr;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "mEngineerModeHandleReceiver Receive invalid Intent"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
