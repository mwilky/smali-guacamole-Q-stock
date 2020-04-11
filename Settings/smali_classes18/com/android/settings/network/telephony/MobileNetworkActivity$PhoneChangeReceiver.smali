.class Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkActivity.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/MobileNetworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhoneChangeReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;
    }
.end annotation


# static fields
.field private static final RADIO_TECHNOLOGY_CHANGED_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private mClient:Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->RADIO_TECHNOLOGY_CHANGED_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->mClient:Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->mClient:Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;

    invoke-interface {v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;->onPhoneChange()V

    :cond_0
    return-void
.end method

.method public register()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->RADIO_TECHNOLOGY_CHANGED_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
