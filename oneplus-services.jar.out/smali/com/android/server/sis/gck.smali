.class Lcom/android/server/sis/gck;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sis/vdb;
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

    iput-object p1, p0, Lcom/android/server/sis/gck;->this$0:Lcom/android/server/sis/vdb;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/sis/gck;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v0}, Lcom/android/server/sis/vdb;->zta(Lcom/android/server/sis/vdb;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "capabilities is null, network:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLinkPropertiesChanged, network:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " newLp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "capabilities:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/android/server/sis/gck;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v0, p1}, Lcom/android/server/sis/vdb;->zta(Lcom/android/server/sis/vdb;Landroid/net/Network;)Landroid/net/Network;

    iget-object p1, p0, Lcom/android/server/sis/gck;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->you(Lcom/android/server/sis/vdb;)Landroid/net/Network;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mWifiNetwork:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/sis/gck;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v0}, Lcom/android/server/sis/vdb;->you(Lcom/android/server/sis/vdb;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/server/sis/gck;->this$0:Lcom/android/server/sis/vdb;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result p2

    if-eqz p2, :cond_2

    move v4, v2

    :cond_2
    invoke-static {p1, v4}, Lcom/android/server/sis/vdb;->you(Lcom/android/server/sis/vdb;Z)Z

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    iget-object v0, p0, Lcom/android/server/sis/gck;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v0, p1}, Lcom/android/server/sis/vdb;->you(Lcom/android/server/sis/vdb;Landroid/net/Network;)Landroid/net/Network;

    iget-object p1, p0, Lcom/android/server/sis/gck;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->ibl(Lcom/android/server/sis/vdb;)Landroid/net/Network;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mMobileNetwork:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/sis/gck;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {v0}, Lcom/android/server/sis/vdb;->ibl(Lcom/android/server/sis/vdb;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lcom/android/server/sis/gck;->this$0:Lcom/android/server/sis/vdb;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result p2

    if-eqz p2, :cond_5

    move v4, v2

    :cond_5
    invoke-static {p1, v4}, Lcom/android/server/sis/vdb;->cno(Lcom/android/server/sis/vdb;Z)Z

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/android/server/sis/gck;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->wtn(Lcom/android/server/sis/vdb;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/sis/gck;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->cjf(Lcom/android/server/sis/vdb;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/android/server/sis/gck;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p1}, Lcom/android/server/sis/vdb;->cgv(Lcom/android/server/sis/vdb;)I

    move-result p1

    if-ne p1, v2, :cond_8

    iget-object p0, p0, Lcom/android/server/sis/gck;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p0}, Lcom/android/server/sis/vdb;->vju(Lcom/android/server/sis/vdb;)V

    :cond_8
    return-void
.end method
