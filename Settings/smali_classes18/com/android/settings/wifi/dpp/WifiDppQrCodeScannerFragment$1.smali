.class Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;
.super Landroid/os/Handler;
.source "WifiDppQrCodeScannerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    const/16 v4, 0x20

    const/4 v5, 0x0

    if-eq v0, v3, :cond_9

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    nop

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getWifiConfigurations()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SSID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " hiddenSSID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WifiDppQrCodeScanner"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v7, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iget-object v8, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v8, v6}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$800(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    iget-object v8, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v8, v6}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$902(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    iget-object v8, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-virtual {v0, v7, v8}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_2
    iget-boolean v8, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v8, :cond_3

    const/4 v3, 0x1

    iget-object v8, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v8, v6}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$902(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    iget-object v8, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-virtual {v0, v7, v8}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    const-string v8, " connect hidden AP, skip detection"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    iget-object v4, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    const v5, 0x7f1218c5

    invoke-static {v4, v5}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$1000(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;I)V

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v4}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$1200(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v4}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$1100(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-virtual {v6}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v6

    const/16 v7, 0x6af

    const/16 v8, 0x63c

    const/4 v9, 0x0

    const/high16 v10, -0x80000000

    invoke-virtual/range {v5 .. v10}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    iget-object v4, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v4}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$700(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;->onScanWifiDppSuccess(Lcom/android/settings/wifi/dpp/WifiQrCode;)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$400(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$100(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$500(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiQrCode;)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$600(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$700(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    goto :goto_1

    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v3}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$000(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v3}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$000(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v3}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$000(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->removeMessages(I)V

    const-wide/16 v3, 0x2710

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->sendEmptyMessageDelayed(IJ)Z

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$100(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$200(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/qrcode/QrDecorateView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->setFocused(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$300(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$000(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    nop

    :cond_b
    :goto_1
    return-void
.end method
