.class Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;
.super Landroid/net/wifi/EasyConnectStatusCallback;
.source "WifiDppInitiatorViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyConnectDelegateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-direct {p0}, Landroid/net/wifi/EasyConnectStatusCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    return-void
.end method


# virtual methods
.method public onConfiguratorSuccess(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$102(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Z)Z

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$300(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onEnrolleeSuccess(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$102(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Z)Z

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$200(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$102(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Z)Z

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$300(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method
