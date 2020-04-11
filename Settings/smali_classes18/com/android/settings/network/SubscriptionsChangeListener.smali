.class public Lcom/android/settings/network/SubscriptionsChangeListener;
.super Landroid/database/ContentObserver;
.source "SubscriptionsChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
    }
.end annotation


# instance fields
.field private mAirplaneModeSettingUri:Landroid/net/Uri;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClient:Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;

.field private mContext:Landroid/content/Context;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mClient:Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance v0, Lcom/android/settings/network/SubscriptionsChangeListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/SubscriptionsChangeListener$1;-><init>(Lcom/android/settings/network/SubscriptionsChangeListener;)V

    iput-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    const-string v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mAirplaneModeSettingUri:Landroid/net/Uri;

    new-instance v0, Lcom/android/settings/network/SubscriptionsChangeListener$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/SubscriptionsChangeListener$2;-><init>(Lcom/android/settings/network/SubscriptionsChangeListener;)V

    iput-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/SubscriptionsChangeListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->subscriptionsChangedCallback()V

    return-void
.end method

.method private subscriptionsChangedCallback()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mClient:Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;

    invoke-interface {v0}, Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;->onSubscriptionsChanged()V

    return-void
.end method


# virtual methods
.method public isAirplaneModeOn()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mAirplaneModeSettingUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mClient:Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->isAirplaneModeOn()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;->onAirplaneModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mAirplaneModeSettingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
