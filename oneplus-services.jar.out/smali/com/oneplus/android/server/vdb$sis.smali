.class public Lcom/oneplus/android/server/vdb$sis;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/vdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "sis"
.end annotation


# static fields
.field private static final Wv:Ljava/lang/String; = "motor_socket"

.field private static final uma:Ljava/lang/String; = "MotorSocketServer"

.field private static final vma:I = 0x400

.field private static final wma:I = 0x3


# instance fields
.field private final mService:Lcom/oneplus/android/server/vdb;

.field private sma:Z

.field final synthetic this$0:Lcom/oneplus/android/server/vdb;

.field private tma:Landroid/net/LocalServerSocket;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/vdb;Lcom/oneplus/android/server/vdb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb$sis;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/android/server/vdb$sis;->sma:Z

    iput-object p2, p0, Lcom/oneplus/android/server/vdb$sis;->mService:Lcom/oneplus/android/server/vdb;

    return-void
.end method

.method private zta(Landroid/net/LocalSocket;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x400

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "MotorSocketServer"

    if-eqz v4, :cond_0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readBytes = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x3

    if-lt v1, v4, :cond_2

    aput-byte v3, v2, v1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v3, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientSocket read info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/vdb$sis;->mService:Lcom/oneplus/android/server/vdb;

    invoke-static {p0, v4}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz p1, :cond_3

    :try_start_2
    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V

    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_4

    :try_start_4
    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_2
    return-void

    :goto_3
    if-eqz p1, :cond_6

    :try_start_5
    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_5

    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :goto_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_6
    throw p0
.end method


# virtual methods
.method public Rf()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb$sis;->sma:Z

    return-void
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "MotorSocketServer"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "LocalServerSocket SOCKET_NAME = motor_socket"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/net/LocalServerSocket;

    const-string v2, "motor_socket"

    invoke-direct {v0, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb$sis;->tma:Landroid/net/LocalServerSocket;

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb$sis;->sma:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/android/server/vdb$sis;->tma:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "wait for new client coming!"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/oneplus/android/server/vdb$sis;->tma:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    iget-boolean v2, p0, Lcom/oneplus/android/server/vdb$sis;->sma:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "new client coming!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb$sis;->zta(Landroid/net/LocalSocket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/oneplus/android/server/vdb$sis;->tma:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/oneplus/android/server/vdb$sis;->tma:Landroid/net/LocalServerSocket;

    invoke-virtual {p0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/oneplus/android/server/vdb$sis;->tma:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/oneplus/android/server/vdb$sis;->tma:Landroid/net/LocalServerSocket;

    invoke-virtual {p0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_1
    return-void

    :goto_2
    :try_start_5
    iget-object v1, p0, Lcom/oneplus/android/server/vdb$sis;->tma:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/oneplus/android/server/vdb$sis;->tma:Landroid/net/LocalServerSocket;

    invoke-virtual {p0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_3
    throw v0
.end method
