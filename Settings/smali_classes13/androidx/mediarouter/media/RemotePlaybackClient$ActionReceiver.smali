.class final Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemotePlaybackClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/RemotePlaybackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionReceiver"
.end annotation


# static fields
.field public static final ACTION_ITEM_STATUS_CHANGED:Ljava/lang/String; = "androidx.mediarouter.media.actions.ACTION_ITEM_STATUS_CHANGED"

.field public static final ACTION_MESSAGE_RECEIVED:Ljava/lang/String; = "androidx.mediarouter.media.actions.ACTION_MESSAGE_RECEIVED"

.field public static final ACTION_SESSION_STATUS_CHANGED:Ljava/lang/String; = "androidx.mediarouter.media.actions.ACTION_SESSION_STATUS_CHANGED"


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/RemotePlaybackClient;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/RemotePlaybackClient;)V
    .locals 0

    iput-object p1, p0, Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroidx/mediarouter/media/RemotePlaybackClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string v0, "android.media.intent.extra.SESSION_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemotePlaybackClient"

    if-eqz v0, :cond_b

    iget-object v2, p0, Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroidx/mediarouter/media/RemotePlaybackClient;

    iget-object v2, v2, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    nop

    const-string v2, "android.media.intent.extra.SESSION_STATUS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroidx/mediarouter/media/MediaSessionStatus;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaSessionStatus;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v2, "androidx.mediarouter.media.actions.ACTION_ITEM_STATUS_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ", sessionStatus="

    if-eqz v2, :cond_5

    const-string v2, "android.media.intent.extra.ITEM_ID"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    const-string v2, "Discarding spurious status callback with missing item id."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    nop

    const-string v2, "android.media.intent.extra.ITEM_STATUS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroidx/mediarouter/media/MediaItemStatus;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v2, "Discarding spurious status callback with missing item status."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-boolean v2, Landroidx/mediarouter/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received item status callback: sessionId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", itemId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", itemStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroidx/mediarouter/media/RemotePlaybackClient;

    iget-object v1, v1, Landroidx/mediarouter/media/RemotePlaybackClient;->mStatusCallback:Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroidx/mediarouter/media/RemotePlaybackClient;

    iget-object v1, v1, Landroidx/mediarouter/media/RemotePlaybackClient;->mStatusCallback:Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    move-object v3, v0

    move-object v4, v7

    move-object v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;->onItemStatusChanged(Landroid/os/Bundle;Ljava/lang/String;Landroidx/mediarouter/media/MediaSessionStatus;Ljava/lang/String;Landroidx/mediarouter/media/MediaItemStatus;)V

    :cond_4
    goto :goto_0

    :cond_5
    const-string v2, "androidx.mediarouter.media.actions.ACTION_SESSION_STATUS_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v7, :cond_6

    const-string v2, "Discarding spurious media status callback with missing session status."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    sget-boolean v2, Landroidx/mediarouter/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received session status callback: sessionId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v1, p0, Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroidx/mediarouter/media/RemotePlaybackClient;

    iget-object v1, v1, Landroidx/mediarouter/media/RemotePlaybackClient;->mStatusCallback:Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroidx/mediarouter/media/RemotePlaybackClient;

    iget-object v1, v1, Landroidx/mediarouter/media/RemotePlaybackClient;->mStatusCallback:Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v7}, Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;->onSessionStatusChanged(Landroid/os/Bundle;Ljava/lang/String;Landroidx/mediarouter/media/MediaSessionStatus;)V

    goto :goto_0

    :cond_8
    const-string v2, "androidx.mediarouter.media.actions.ACTION_MESSAGE_RECEIVED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-boolean v2, Landroidx/mediarouter/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received message callback: sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v1, p0, Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroidx/mediarouter/media/RemotePlaybackClient;

    iget-object v1, v1, Landroidx/mediarouter/media/RemotePlaybackClient;->mOnMessageReceivedListener:Landroidx/mediarouter/media/RemotePlaybackClient$OnMessageReceivedListener;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroidx/mediarouter/media/RemotePlaybackClient;

    iget-object v1, v1, Landroidx/mediarouter/media/RemotePlaybackClient;->mOnMessageReceivedListener:Landroidx/mediarouter/media/RemotePlaybackClient$OnMessageReceivedListener;

    const-string v2, "android.media.intent.extra.MESSAGE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroidx/mediarouter/media/RemotePlaybackClient$OnMessageReceivedListener;->onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_a
    :goto_0
    return-void

    :cond_b
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding spurious status callback with missing or invalid session id: sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
