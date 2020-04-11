.class public Lcom/android/settings/network/telephony/DataConnectivityListener;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DataConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/DataConnectivityListener$Client;
    }
.end annotation


# instance fields
.field private mClient:Lcom/android/settings/network/telephony/DataConnectivityListener$Client;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/telephony/DataConnectivityListener$Client;)V
    .locals 2

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mClient:Lcom/android/settings/network/telephony/DataConnectivityListener$Client;

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mNetworkRequest:Landroid/net/NetworkRequest;

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mClient:Lcom/android/settings/network/telephony/DataConnectivityListener$Client;

    invoke-interface {v1}, Lcom/android/settings/network/telephony/DataConnectivityListener$Client;->onDataConnectivityChange()V

    :cond_0
    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mClient:Lcom/android/settings/network/telephony/DataConnectivityListener$Client;

    invoke-interface {v0}, Lcom/android/settings/network/telephony/DataConnectivityListener$Client;->onDataConnectivityChange()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mClient:Lcom/android/settings/network/telephony/DataConnectivityListener$Client;

    invoke-interface {v0}, Lcom/android/settings/network/telephony/DataConnectivityListener$Client;->onDataConnectivityChange()V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
