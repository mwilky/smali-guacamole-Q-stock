.class Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;
.super Lorg/codeaurora/internal/NetworkCallbackBase;
.source "FiveGNetWorkStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-direct {p0}, Lorg/codeaurora/internal/NetworkCallbackBase;-><init>()V

    return-void
.end method


# virtual methods
.method public on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on5gConfigInfo: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " NrConfigType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-virtual {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getCurrentServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object v0

    invoke-virtual {p4}, Lorg/codeaurora/internal/NrConfigType;->get()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$002(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v1, v0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V

    :cond_0
    return-void
.end method

.method public on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on5gStatus: slotId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " enableStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnyNrBearerAllocation bearerStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/codeaurora/internal/BearerAllocationStatus;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-virtual {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getCurrentServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object v0

    invoke-virtual {p4}, Lorg/codeaurora/internal/BearerAllocationStatus;->get()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$402(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v1, v0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V

    :cond_0
    return-void
.end method

.method public onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrDcParam: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " dcParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-virtual {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getCurrentServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object v0

    invoke-virtual {p4}, Lorg/codeaurora/internal/DcParam;->getDcnr()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$1402(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v1, v0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V

    :cond_0
    return-void
.end method

.method public onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrIconType: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " NrIconType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-virtual {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getCurrentServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object v0

    invoke-virtual {p4}, Lorg/codeaurora/internal/NrIconType;->get()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$302(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v1, v0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V

    :cond_0
    return-void
.end method

.method public onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignalStrength: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " signalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-virtual {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getCurrentServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-virtual {p4}, Lorg/codeaurora/internal/SignalStrength;->getRsrp()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1700(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$1602(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    invoke-virtual {p4}, Lorg/codeaurora/internal/SignalStrength;->getRsrp()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$1802(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    invoke-virtual {p4}, Lorg/codeaurora/internal/SignalStrength;->getSnr()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$1902(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    :cond_0
    return-void
.end method

.method public onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpperLayerIndInfo plmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getPlmnInfoListAvailable()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " upperLayerIndInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getUpperLayerIndInfoAvailable()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-virtual {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getCurrentServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object v0

    invoke-virtual {p4}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getPlmnInfoListAvailable()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$2002(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    invoke-virtual {p4}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getUpperLayerIndInfoAvailable()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$2102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {v1, v0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V

    :cond_0
    return-void
.end method
