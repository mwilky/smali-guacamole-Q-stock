.class Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;
.super Landroid/os/CountDownTimer;
.source "OPShutdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$200(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const-string v1, "ShutdownActivity"

    if-eqz v0, :cond_0

    const-string v0, "phone is incall, countdown end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "count down timer arrived, shutdown phone"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$300(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    const-wide/16 v1, 0x3e8

    div-long v3, p1, v1

    long-to-int v3, v3

    invoke-static {v0, v3}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$002(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;I)I

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    const v5, 0x7f120fc3

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$102(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    const v5, 0x7f120fc4

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$102(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDialog time = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->showDialog(I)V

    return-void
.end method
