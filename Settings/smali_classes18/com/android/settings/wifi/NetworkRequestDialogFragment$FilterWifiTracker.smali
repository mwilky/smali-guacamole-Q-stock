.class final Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;
.super Ljava/lang/Object;
.source "NetworkRequestDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/NetworkRequestDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FilterWifiTracker"
.end annotation


# instance fields
.field private final mAccessPointKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

.field final synthetic this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker$1;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;)V

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    const/4 v0, 0x1

    invoke-static {p2, p1, p3, v0, v0}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mAccessPointKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAccessPoints()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x5

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mAccessPointKeys:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    iget-object v7, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v7}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$000(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-lt v2, v5, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v3}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$000(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-lt v2, v5, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v3}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$100(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    :cond_2
    if-lez v2, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v3}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$200(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    :cond_3
    if-gez v2, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$300(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Z)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v3}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$400(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$300(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Z)V

    :cond_5
    :goto_2
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onStop()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onStart()V

    :cond_0
    return-void
.end method

.method public updateKeys(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mAccessPointKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mAccessPointKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method
