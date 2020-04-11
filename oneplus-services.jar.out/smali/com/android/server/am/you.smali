.class Lcom/android/server/am/you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/sis;


# direct methods
.method constructor <init>(Lcom/android/server/am/sis;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/you;->this$0:Lcom/android/server/am/sis;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    sget-boolean p1, Lcom/android/server/am/ire;->Ol:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "oneplus.intent.action.MDM_APP_KILL"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "AppDiedStatistics"

    if-eqz p2, :cond_1

    const-string p1, "ACTION_MDM_APPKILL_DATE"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/you;->this$0:Lcom/android/server/am/sis;

    invoke-static {p0}, Lcom/android/server/am/sis;->tsu(Lcom/android/server/am/sis;)V

    goto :goto_1

    :cond_1
    const-string p2, "oneplus.intent.action.LOCAL_APP_KILL"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "ACTION_LOCAL_APPKILL_DATE"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/you;->this$0:Lcom/android/server/am/sis;

    invoke-static {p0}, Lcom/android/server/am/sis;->rtg(Lcom/android/server/am/sis;)Z

    goto :goto_1

    :cond_2
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ACTION_SHUTDOWN"

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
