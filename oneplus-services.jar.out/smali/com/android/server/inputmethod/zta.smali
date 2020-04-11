.class Lcom/android/server/inputmethod/zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/OpVerificationCodeController;->initActionIfPossible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/OpVerificationCodeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/inputmethod/zta;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-static {}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/inputmethod/zta;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    const/16 v0, 0x64

    const-string v1, "commit_interval"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$102(Lcom/android/server/inputmethod/OpVerificationCodeController;I)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Debug Interval "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/inputmethod/zta;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$100(Lcom/android/server/inputmethod/OpVerificationCodeController;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpVerificationCodeController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p1, "verification_code_str"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "receive_time_mills"

    invoke-virtual {p2, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/inputmethod/zta;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {v4, v0, v1, v2}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$200(Lcom/android/server/inputmethod/OpVerificationCodeController;Ljava/lang/String;J)V

    :cond_1
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/android/server/inputmethod/zta;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p1}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$300(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/you/tsu;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/inputmethod/zta;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$300(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/you/tsu;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/you/tsu;->zta(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method
