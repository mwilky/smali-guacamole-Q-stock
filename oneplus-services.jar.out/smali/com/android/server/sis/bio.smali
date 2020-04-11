.class Lcom/android/server/sis/bio;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sis/vdb;->Ud()V
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

    iput-object p1, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendPidAndListen tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1d

    :try_start_0
    invoke-static {v0}, Landroid/net/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sis/vdb;->zta(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    invoke-static {}, Lcom/android/server/sis/vdb;->access$3800()Ljava/io/FileDescriptor;

    move-result-object v2

    new-instance v3, Landroid/system/NetlinkSocketAddress;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    invoke-static {v2, v3}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    const/16 v3, 0x12

    invoke-static {v2, v3, v4}, Lcom/android/server/sis/vdb;->zta(Lcom/android/server/sis/vdb;SI)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After sending pid:result="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object v2

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/sis/vdb;->access$3800()Ljava/io/FileDescriptor;

    move-result-object v2

    const/16 v5, 0x2000

    const-wide/16 v6, 0x0

    invoke-static {v2, v5, v6, v7}, Landroid/net/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Landroid/net/netlink/StructNlMsgHdr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v6}, Lcom/android/server/sis/vdb;->ear(Lcom/android/server/sis/vdb;)Lcom/android/server/sis/vdb$sis;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-short v6, v5, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v7, 0x13

    if-eq v6, v7, :cond_12

    const/16 v7, 0x14

    const/4 v8, 0x2

    if-eq v6, v7, :cond_11

    const/16 v9, 0x1b

    if-eq v6, v9, :cond_f

    const/16 v7, 0x26

    const/4 v9, 0x1

    if-eq v6, v7, :cond_c

    const/16 v7, 0x100

    const-string v10, "sla_debugging_mode"

    if-eq v6, v0, :cond_9

    const/16 v11, 0x1e

    if-eq v6, v11, :cond_7

    const/16 v10, 0x22

    if-eq v6, v10, :cond_0

    const/16 v10, 0x23

    if-eq v6, v10, :cond_3

    const/16 v2, 0x28

    if-eq v6, v2, :cond_2

    const/16 v2, 0x29

    if-eq v6, v2, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received unknow message:type="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v5, v5, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/sis/vdb;->access$700()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Received message:OP_SLA_SEND_GAME_APP_STATISTIC"

    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/sis/vdb;->access$700()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Received message:OP_SLA_SEND_APP_TRAFFIC"

    goto :goto_1

    :cond_3
    new-array v6, v8, [I

    iget v10, v5, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    const/16 v11, 0x18

    if-ge v10, v11, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message:OP_SLA_SWITCH_GAME_NETWORK invalid length:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_2
    if-ge v5, v8, :cond_5

    mul-int/lit8 v10, v5, 0x4

    add-int/2addr v10, v3

    :try_start_2
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    aput v10, v6, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when read game switch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    aget v2, v6, v4

    aget v5, v6, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gameType:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " gameMark:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2, v5}, Lcom/android/server/sis/vdb;->cno(Lcom/android/server/sis/vdb;I)V

    if-ne v5, v7, :cond_6

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->zta(Lcom/android/server/sis/vdb;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v5}, Lcom/android/server/sis/vdb;->ibl(Lcom/android/server/sis/vdb;)Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->checkNetlinkValid(Landroid/net/Network;)V

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->bud(Lcom/android/server/sis/vdb;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x50d007d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v5}, Lcom/android/server/sis/vdb;->ire(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v6}, Lcom/android/server/sis/vdb;->ire(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    :goto_3
    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->zta(Lcom/android/server/sis/vdb;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v5}, Lcom/android/server/sis/vdb;->you(Lcom/android/server/sis/vdb;)Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->checkNetlinkValid(Landroid/net/Network;)V

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->bud(Lcom/android/server/sis/vdb;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x50d007c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v5}, Lcom/android/server/sis/vdb;->ire(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v6}, Lcom/android/server/sis/vdb;->ire(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->bud(Lcom/android/server/sis/vdb;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/server/sis/vdb;->access$4600()I

    move-result v5

    invoke-static {v2, v10, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->ire(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v5}, Lcom/android/server/sis/vdb;->ire(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object v5

    const-string v6, "OP_SLA_DISABLED"

    invoke-virtual {v5, v9, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    :goto_4
    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2, v9}, Lcom/android/server/sis/vdb;->kth(Lcom/android/server/sis/vdb;I)I

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    iget-object v5, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v5}, Lcom/android/server/sis/vdb;->hmo(Lcom/android/server/sis/vdb;)Z

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/sis/vdb;->tsu(Lcom/android/server/sis/vdb;Z)Z

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    iget-object v5, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v5}, Lcom/android/server/sis/vdb;->fto(Lcom/android/server/sis/vdb;)Z

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/sis/vdb;->sis(Lcom/android/server/sis/vdb;Z)Z

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->dma(Lcom/android/server/sis/vdb;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    iget-object v5, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v5}, Lcom/android/server/sis/vdb;->lqr(Lcom/android/server/sis/vdb;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/sis/vdb;->ssp(Lcom/android/server/sis/vdb;I)I

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2, v7}, Lcom/android/server/sis/vdb;->cno(Lcom/android/server/sis/vdb;I)V

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    iget-object v5, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v5}, Lcom/android/server/sis/vdb;->lqr(Lcom/android/server/sis/vdb;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/sis/vdb;->ssp(Lcom/android/server/sis/vdb;I)I

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    const/16 v5, 0x400

    invoke-static {v2, v5}, Lcom/android/server/sis/vdb;->cno(Lcom/android/server/sis/vdb;I)V

    :goto_5
    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->bud(Lcom/android/server/sis/vdb;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/server/sis/vdb;->access$4600()I

    move-result v5

    invoke-static {v2, v10, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->ire(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v5}, Lcom/android/server/sis/vdb;->ire(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object v5

    const-string v6, "OP_SLA_ENABLED"

    invoke-virtual {v5, v9, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    goto :goto_4

    :cond_c
    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->fto(Lcom/android/server/sis/vdb;)Z

    move-result v2

    iget-object v5, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    iget-object v6, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v6}, Lcom/android/server/sis/vdb;->bio(Lcom/android/server/sis/vdb;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_d

    goto :goto_6

    :cond_d
    move v9, v4

    :goto_6
    invoke-static {v5, v9}, Lcom/android/server/sis/vdb;->zta(Lcom/android/server/sis/vdb;Z)Z

    invoke-static {}, Lcom/android/server/sis/vdb;->access$700()Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message:OP_SLA_SHOW_DIALOG_NOW whiteAppOnFocus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mUsingLTE="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v6}, Lcom/android/server/sis/vdb;->cno(Lcom/android/server/sis/vdb;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mCellEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v6}, Lcom/android/server/sis/vdb;->veq(Lcom/android/server/sis/vdb;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->cno(Lcom/android/server/sis/vdb;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->veq(Lcom/android/server/sis/vdb;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->ire(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object v2

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_f
    iget v5, v5, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    if-ge v5, v7, :cond_10

    const-string v2, "Received message:OP_SLA_NOTIFY_GAME_RTT invalid length."

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2
    :try_end_4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-static {}, Lcom/android/server/sis/vdb;->access$700()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message:OP_SLA_NOTIFY_GAME_RTT RTT="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :catch_1
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when read rtt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_11
    const-string v2, "Received message:OP_SLA_DISABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_12
    const-string v2, "Received message: OP_SLA_ENABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v2}, Lcom/android/server/sis/vdb;->rtg(Lcom/android/server/sis/vdb;)Landroid/os/Handler;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when sendPidAndListen:tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/server/sis/bio;->this$0:Lcom/android/server/sis/vdb;

    invoke-virtual {p0}, Lcom/android/server/sis/vdb;->stopListening()V

    return-void
.end method
