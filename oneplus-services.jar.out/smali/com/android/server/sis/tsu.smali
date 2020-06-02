.class Lcom/android/server/sis/tsu;
.super Landroid/telephony/PhoneStateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sis/vdb;->op()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sis/vdb;


# direct methods
.method constructor <init>(Lcom/android/server/sis/vdb;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sis/tsu;->this$0:Lcom/android/server/sis/vdb;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Lcom/android/server/sis/tsu;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v0}, Lcom/android/server/sis/vdb;->bio(Lcom/android/server/sis/vdb;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/sis/tsu;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2, p1}, Lcom/android/server/sis/vdb;->zta(Lcom/android/server/sis/vdb;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    iget-object p1, p0, Lcom/android/server/sis/tsu;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->cno(Lcom/android/server/sis/vdb;)Z

    move-result p1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/sis/tsu;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1, v0}, Lcom/android/server/sis/vdb;->zta(Lcom/android/server/sis/vdb;Z)Z

    iget-object p1, p0, Lcom/android/server/sis/tsu;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    invoke-static {}, Lcom/android/server/sis/vdb;->access$700()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceStateChanged mUsingLTE="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/sis/tsu;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v0}, Lcom/android/server/sis/vdb;->cno(Lcom/android/server/sis/vdb;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpSlaNetlinkHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/android/server/sis/tsu;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->cgv(Lcom/android/server/sis/vdb;)I

    move-result p1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/server/sis/tsu;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->igw(Lcom/android/server/sis/vdb;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/sis/tsu;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p0}, Lcom/android/server/sis/vdb;->vju(Lcom/android/server/sis/vdb;)V

    :cond_3
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    iget-object v0, p0, Lcom/android/server/sis/tsu;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v0}, Lcom/android/server/sis/vdb;->cno(Lcom/android/server/sis/vdb;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sis/tsu;->this$0:Lcom/android/server/sis/vdb;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/sis/vdb;->sis(Lcom/android/server/sis/vdb;I)I

    iget-object p1, p0, Lcom/android/server/sis/tsu;->this$0:Lcom/android/server/sis/vdb;

    invoke-virtual {p1}, Lcom/android/server/sis/vdb;->Zd()V

    invoke-static {}, Lcom/android/server/sis/vdb;->access$700()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSignalStrengthsChanged mLteRsrp="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/sis/tsu;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p0}, Lcom/android/server/sis/vdb;->kth(Lcom/android/server/sis/vdb;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper_RSRP"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
