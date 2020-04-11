.class Lcom/android/server/am/qeg;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ivd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ivd;


# direct methods
.method constructor <init>(Lcom/android/server/am/ivd;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/qeg;->this$0:Lcom/android/server/am/ivd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p1, "OnePlusDuallteManager"

    if-nez p2, :cond_0

    const-string p0, "# mGeneralReceiver # onReceive # intent is null, return"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.Duallte.action.debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "code"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "dump"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/qeg;->this$0:Lcom/android/server/am/ivd;

    invoke-static {p1}, Lcom/android/server/am/ivd;->sis(Lcom/android/server/am/ivd;)V

    iget-object p0, p0, Lcom/android/server/am/qeg;->this$0:Lcom/android/server/am/ivd;

    invoke-static {p0}, Lcom/android/server/am/ivd;->tsu(Lcom/android/server/am/ivd;)V

    goto/16 :goto_1

    :cond_1
    const-string p1, "dumpTest"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/server/am/qeg;->this$0:Lcom/android/server/am/ivd;

    invoke-static {p0}, Lcom/android/server/am/ivd;->rtg(Lcom/android/server/am/ivd;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object p2, p0, Lcom/android/server/am/qeg;->this$0:Lcom/android/server/am/ivd;

    invoke-static {p2}, Lcom/android/server/am/ivd;->ssp(Lcom/android/server/am/ivd;)Landroid/telephony/TelephonyManager;

    move-result-object p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/server/am/qeg;->this$0:Lcom/android/server/am/ivd;

    invoke-static {p2}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {p2, v0}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    :cond_3
    iget-object p2, p0, Lcom/android/server/am/qeg;->this$0:Lcom/android/server/am/ivd;

    invoke-static {p2}, Lcom/android/server/am/ivd;->ssp(Lcom/android/server/am/ivd;)Landroid/telephony/TelephonyManager;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/android/server/am/qeg;->this$0:Lcom/android/server/am/ivd;

    invoke-static {p2}, Lcom/android/server/am/ivd;->ssp(Lcom/android/server/am/ivd;)Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/qeg;->this$0:Lcom/android/server/am/ivd;

    invoke-static {v0}, Lcom/android/server/am/ivd;->ssp(Lcom/android/server/am/ivd;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/am/qeg;->this$0:Lcom/android/server/am/ivd;

    invoke-static {v3}, Lcom/android/server/am/ivd;->ssp(Lcom/android/server/am/ivd;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    invoke-static {}, Lcom/android/server/am/ivd;->access$800()I

    move-result v4

    if-ne v4, v0, :cond_4

    invoke-static {}, Lcom/android/server/am/ivd;->access$900()I

    move-result v0

    if-eq v0, v3, :cond_9

    :cond_4
    sget-boolean v0, Lcom/android/server/am/ivd;->DBG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# mGeneralReceiver # onReceive # numSlots = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p1, p0, Lcom/android/server/am/qeg;->this$0:Lcom/android/server/am/ivd;

    invoke-static {p1}, Lcom/android/server/am/ivd;->ssp(Lcom/android/server/am/ivd;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/server/am/ivd;->access$802(I)I

    iget-object p1, p0, Lcom/android/server/am/qeg;->this$0:Lcom/android/server/am/ivd;

    invoke-static {p1}, Lcom/android/server/am/ivd;->ssp(Lcom/android/server/am/ivd;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/server/am/ivd;->f(I)I

    iget-object p0, p0, Lcom/android/server/am/qeg;->this$0:Lcom/android/server/am/ivd;

    invoke-static {p0}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    sget-boolean v0, Lcom/android/server/am/ivd;->DBG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# mGeneralReceiver # onReceive # CONNECTIVITY_ACTION info:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    if-ne p1, v0, :cond_8

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/server/am/qeg;->this$0:Lcom/android/server/am/ivd;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_8
    iget-object p0, p0, Lcom/android/server/am/qeg;->this$0:Lcom/android/server/am/ivd;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;Ljava/lang/Boolean;)V

    :cond_9
    :goto_1
    return-void
.end method
