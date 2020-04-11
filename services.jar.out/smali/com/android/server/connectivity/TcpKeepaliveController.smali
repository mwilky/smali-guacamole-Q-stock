.class public Lcom/android/server/connectivity/TcpKeepaliveController;
.super Ljava/lang/Object;
.source "TcpKeepaliveController.java"


# static fields
.field private static final DBG:Z = false

.field private static final FD_EVENTS:I = 0x5

.field private static final SIOCINQ:I

.field private static final SIOCOUTQ:I

.field private static final TAG:Ljava/lang/String; = "TcpKeepaliveController"

.field private static final TCP_NO_QUEUE:I = 0x0

.field private static final TCP_QUEUE_SEQ:I = 0x15

.field private static final TCP_RECV_QUEUE:I = 0x1

.field private static final TCP_REPAIR:I = 0x13

.field private static final TCP_REPAIR_OFF:I = 0x0

.field private static final TCP_REPAIR_ON:I = 0x1

.field private static final TCP_REPAIR_QUEUE:I = 0x14

.field private static final TCP_SEND_QUEUE:I = 0x2


# instance fields
.field private final mFdHandlerQueue:Landroid/os/MessageQueue;

.field private final mListeners:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/io/FileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/system/OsConstants;->FIONREAD:I

    sput v0, Lcom/android/server/connectivity/TcpKeepaliveController;->SIOCINQ:I

    sget v0, Landroid/system/OsConstants;->TIOCOUTQ:I

    sput v0, Lcom/android/server/connectivity/TcpKeepaliveController;->SIOCOUTQ:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mFdHandlerQueue:Landroid/os/MessageQueue;

    return-void
.end method

.method private static dropAllIncomingPackets(Ljava/io/FileDescriptor;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SocketKeepalive$InvalidSocketException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/net/NetworkUtils;->attachDropAllBPFFilter(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/net/NetworkUtils;->detachBPFFilter(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    return-void

    :catch_0
    move-exception v0

    const-string v1, "TcpKeepaliveController"

    const-string v2, "Socket Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/net/SocketKeepalive$InvalidSocketException;

    const/16 v2, -0x19

    invoke-direct {v1, v2, v0}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method private static getAddress(Ljava/net/InetSocketAddress;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    return-object v0
.end method

.method private static getPort(Ljava/net/InetSocketAddress;)I
    .locals 1

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public static getTcpKeepalivePacket(Ljava/io/FileDescriptor;)Landroid/net/TcpKeepalivePacketData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SocketKeepalive$InvalidPacketException;,
            Landroid/net/SocketKeepalive$InvalidSocketException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/android/server/connectivity/TcpKeepaliveController;->switchToRepairMode(Ljava/io/FileDescriptor;)Landroid/net/TcpKeepalivePacketDataParcelable;

    move-result-object v0

    invoke-static {v0}, Landroid/net/TcpKeepalivePacketData;->tcpKeepalivePacket(Landroid/net/TcpKeepalivePacketDataParcelable;)Landroid/net/TcpKeepalivePacketData;

    move-result-object v1
    :try_end_0
    .catch Landroid/net/SocketKeepalive$InvalidPacketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/net/SocketKeepalive$InvalidSocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/android/server/connectivity/TcpKeepaliveController;->switchOutOfRepairMode(Ljava/io/FileDescriptor;)V

    throw v0
.end method

.method private static isReceiveQueueEmpty(Ljava/io/FileDescriptor;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    new-instance v0, Landroid/system/Int32Ref;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/system/Int32Ref;-><init>(I)V

    sget v1, Lcom/android/server/connectivity/TcpKeepaliveController;->SIOCINQ:I

    invoke-static {p0, v1, v0}, Landroid/system/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/system/Int32Ref;)I

    iget v1, v0, Landroid/system/Int32Ref;->value:I

    if-eqz v1, :cond_0

    const-string v1, "TcpKeepaliveController"

    const-string v2, "Read queue has data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static isSendQueueEmpty(Ljava/io/FileDescriptor;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    new-instance v0, Landroid/system/Int32Ref;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/system/Int32Ref;-><init>(I)V

    sget v1, Lcom/android/server/connectivity/TcpKeepaliveController;->SIOCOUTQ:I

    invoke-static {p0, v1, v0}, Landroid/system/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/system/Int32Ref;)I

    iget v1, v0, Landroid/system/Int32Ref;->value:I

    if-eqz v1, :cond_0

    const-string v1, "TcpKeepaliveController"

    const-string v2, "Write queue has data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static isSocketIdle(Ljava/io/FileDescriptor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/server/connectivity/TcpKeepaliveController;->isReceiveQueueEmpty(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/connectivity/TcpKeepaliveController;->isSendQueueEmpty(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$startSocketMonitor$0(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;Ljava/io/FileDescriptor;I)I
    .locals 2

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    const/16 v0, -0x19

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->onFileDescriptorInitiatedStop(I)V

    const/4 v1, 0x0

    return v1
.end method

.method private static switchOutOfRepairMode(Ljava/io/FileDescriptor;)V
    .locals 3

    :try_start_0
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TcpKeepaliveController"

    const-string v2, "Cannot switch socket out of repair mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static switchToRepairMode(Ljava/io/FileDescriptor;)Landroid/net/TcpKeepalivePacketDataParcelable;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SocketKeepalive$InvalidSocketException;
        }
    .end annotation

    const-string v0, "TcpKeepaliveController"

    new-instance v1, Landroid/net/TcpKeepalivePacketDataParcelable;

    invoke-direct {v1}, Landroid/net/TcpKeepalivePacketDataParcelable;-><init>()V

    const/16 v2, -0x19

    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    instance-of v4, v3, Ljava/net/InetSocketAddress;

    if-eqz v4, :cond_6

    move-object v4, v3

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-static {v4}, Lcom/android/server/connectivity/TcpKeepaliveController;->getAddress(Ljava/net/InetSocketAddress;)[B

    move-result-object v4

    iput-object v4, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    move-object v4, v3

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-static {v4}, Lcom/android/server/connectivity/TcpKeepaliveController;->getPort(Ljava/net/InetSocketAddress;)I

    move-result v4

    iput v4, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    :try_start_1
    invoke-static {p0}, Landroid/system/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v4
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    instance-of v5, v4, Ljava/net/InetSocketAddress;

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Ljava/net/InetSocketAddress;

    invoke-static {v5}, Lcom/android/server/connectivity/TcpKeepaliveController;->getAddress(Ljava/net/InetSocketAddress;)[B

    move-result-object v5

    iput-object v5, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    move-object v5, v4

    check-cast v5, Ljava/net/InetSocketAddress;

    invoke-static {v5}, Lcom/android/server/connectivity/TcpKeepaliveController;->getPort(Ljava/net/InetSocketAddress;)I

    move-result v5

    iput v5, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcom/android/server/connectivity/TcpKeepaliveController;->dropAllIncomingPackets(Ljava/io/FileDescriptor;Z)V

    const/4 v6, 0x0

    :try_start_2
    sget v7, Landroid/system/OsConstants;->IPPROTO_TCP:I

    const/16 v8, 0x13

    invoke-static {p0, v7, v8, v5}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    invoke-static {p0}, Lcom/android/server/connectivity/TcpKeepaliveController;->isSocketIdle(Ljava/io/FileDescriptor;)Z

    move-result v7
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v8, -0x1a

    const-string v9, "Socket is not idle"

    if-eqz v7, :cond_3

    :try_start_3
    sget v7, Landroid/system/OsConstants;->IPPROTO_TCP:I

    const/4 v10, 0x2

    const/16 v11, 0x14

    invoke-static {p0, v7, v11, v10}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    sget v7, Landroid/system/OsConstants;->IPPROTO_TCP:I

    const/16 v10, 0x15

    invoke-static {p0, v7, v10}, Landroid/system/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v7

    iput v7, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    sget v7, Landroid/system/OsConstants;->IPPROTO_TCP:I

    invoke-static {p0, v7, v11, v5}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    sget v7, Landroid/system/OsConstants;->IPPROTO_TCP:I

    invoke-static {p0, v7, v10}, Landroid/system/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v7

    iput v7, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    sget v7, Landroid/system/OsConstants;->IPPROTO_TCP:I

    invoke-static {p0, v7, v11, v6}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    invoke-static {p0}, Lcom/android/server/connectivity/TcpKeepaliveController;->isReceiveQueueEmpty(Ljava/io/FileDescriptor;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p0}, Lcom/android/server/connectivity/TcpKeepaliveController;->isSendQueueEmpty(Ljava/io/FileDescriptor;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p0}, Landroid/net/NetworkUtils;->getTcpRepairWindow(Ljava/io/FileDescriptor;)Landroid/net/TcpRepairWindow;

    move-result-object v7

    iget v8, v7, Landroid/net/TcpRepairWindow;->rcvWnd:I

    iput v8, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    iget v8, v7, Landroid/net/TcpRepairWindow;->rcvWndScale:I

    iput v8, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    iget-object v8, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    array-length v8, v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    sget v8, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v9, Landroid/system/OsConstants;->IP_TOS:I

    invoke-static {p0, v8, v9}, Landroid/system/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v8

    iput v8, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    sget v8, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v9, Landroid/system/OsConstants;->IP_TTL:I

    invoke-static {p0, v8, v9}, Landroid/system/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v8

    iput v8, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    invoke-static {p0, v6}, Lcom/android/server/connectivity/TcpKeepaliveController;->dropAllIncomingPackets(Ljava/io/FileDescriptor;Z)V

    nop

    iget v0, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    sub-int/2addr v0, v5

    iput v0, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    return-object v1

    :cond_1
    :try_start_4
    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/net/SocketKeepalive$InvalidSocketException;

    invoke-direct {v5, v8}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(I)V

    throw v5

    :cond_2
    const-string v5, "Fatal: receive queue of this socket is not empty"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/net/SocketKeepalive$InvalidSocketException;

    invoke-direct {v5, v2}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(I)V

    throw v5

    :cond_3
    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/net/SocketKeepalive$InvalidSocketException;

    invoke-direct {v5, v8}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(I)V

    throw v5
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_5
    const-string v7, "Exception reading TCP state from socket"

    invoke-static {v0, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v0, v5, Landroid/system/ErrnoException;->errno:I

    sget v7, Landroid/system/OsConstants;->ENOPROTOOPT:I

    if-ne v0, v7, :cond_4

    new-instance v0, Landroid/net/SocketKeepalive$InvalidSocketException;

    const/16 v2, -0x1e

    invoke-direct {v0, v2, v5}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance v0, Landroid/net/SocketKeepalive$InvalidSocketException;

    invoke-direct {v0, v2, v5}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    invoke-static {p0, v6}, Lcom/android/server/connectivity/TcpKeepaliveController;->dropAllIncomingPackets(Ljava/io/FileDescriptor;Z)V

    throw v0

    :cond_5
    const-string v5, "Invalid or mismatched peer SocketAddress"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/SocketKeepalive$InvalidSocketException;

    invoke-direct {v0, v2}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(I)V

    throw v0

    :catch_1
    move-exception v4

    const-string v5, "Get peername fail: "

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/net/SocketKeepalive$InvalidSocketException;

    invoke-direct {v0, v2, v4}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :cond_6
    const-string v4, "Invalid or mismatched SocketAddress"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/SocketKeepalive$InvalidSocketException;

    invoke-direct {v0, v2}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(I)V

    throw v0

    :catch_2
    move-exception v3

    const-string v4, "Get sockname fail: "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/net/SocketKeepalive$InvalidSocketException;

    invoke-direct {v0, v2, v3}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public startSocketMonitor(Ljava/io/FileDescriptor;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/net/SocketKeepalive$InvalidSocketException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "TcpKeepaliveController"

    const-string v3, "This fd is already registered."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/net/SocketKeepalive$InvalidSocketException;

    const/16 v3, -0x19

    invoke-direct {v2, v3}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(I)V

    throw v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mFdHandlerQueue:Landroid/os/MessageQueue;

    const/4 v2, 0x5

    new-instance v3, Lcom/android/server/connectivity/-$$Lambda$TcpKeepaliveController$mLZJWrEAOnfgV5N3ZSa2J3iTmxE;

    invoke-direct {v3, p2}, Lcom/android/server/connectivity/-$$Lambda$TcpKeepaliveController$mLZJWrEAOnfgV5N3ZSa2J3iTmxE;-><init>(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)V

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    iget-object v1, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This slot is already taken"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopSocketMonitor(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileDescriptor;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/connectivity/TcpKeepaliveController;->mFdHandlerQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    invoke-static {v1}, Lcom/android/server/connectivity/TcpKeepaliveController;->switchOutOfRepairMode(Ljava/io/FileDescriptor;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
