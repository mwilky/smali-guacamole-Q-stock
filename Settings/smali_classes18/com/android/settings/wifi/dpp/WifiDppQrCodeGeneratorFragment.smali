.class public Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "WifiDppQrCodeGeneratorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$OnQrCodeGeneratorFragmentAddButtonClickedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiDppQrCodeGeneratorFragment"


# instance fields
.field mListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$OnQrCodeGeneratorFragmentAddButtonClickedListener;

.field private mPasswordView:Landroid/widget/TextView;

.field private mQrCode:Ljava/lang/String;

.field private mQrCodeView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    return-void
.end method

.method private setQrCode()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mQrCode:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/qrcode/QrCodeGenerator;->encodeQrCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mQrCodeView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error generatting QR code bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiDppQrCodeGeneratorFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x63b

    return v0
.end method

.method getWifiNetworkConfigFromHostActivity()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;

    invoke-interface {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid Wi-Fi network for configuring"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getWifiNetworkConfigFromHostActivity()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isHotspot()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1217fc

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1217fd

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v2}, Landroid/app/ActionBar;->show()V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onAttach(Landroid/content/Context;)V

    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$OnQrCodeGeneratorFragmentAddButtonClickedListener;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$OnQrCodeGeneratorFragmentAddButtonClickedListener;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d0353

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$OnQrCodeGeneratorFragmentAddButtonClickedListener;

    invoke-super {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onDetach()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0a0581

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mQrCodeView:Landroid/widget/ImageView;

    const v0, 0x7f08031b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->setHeaderIconImageResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getWifiNetworkConfigFromHostActivity()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isHotspot()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f1217fc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f1217fd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getPreSharedKey()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0510

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mPasswordView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mSummary:Landroid/widget/TextView;

    const v5, 0x7f1217f7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mPasswordView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mSummary:Landroid/widget/TextView;

    const v5, 0x7f1217fb

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isHotspot()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mPasswordView:Landroid/widget/TextView;

    const v5, 0x7f1217f5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mPasswordView:Landroid/widget/TextView;

    const v5, 0x7f1217ff

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getQrCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->mQrCode:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->setQrCode()V

    return-void
.end method
