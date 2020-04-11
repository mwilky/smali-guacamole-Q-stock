.class Lcom/android/settings/network/SubscriptionsChangeListener$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SubscriptionsChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/SubscriptionsChangeListener;


# direct methods
.method constructor <init>(Lcom/android/settings/network/SubscriptionsChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsChangeListener$1;->this$0:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsChangeListener$1;->this$0:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->access$000(Lcom/android/settings/network/SubscriptionsChangeListener;)V

    return-void
.end method
