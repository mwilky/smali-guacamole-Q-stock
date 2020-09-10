.class public abstract Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "WifiDppQrCodeBaseFragment.java"


# instance fields
.field private mDevicesCheckCircleGreenHeaderIcon:Landroid/widget/ImageView;

.field private mHeaderIcon:Landroid/widget/ImageView;

.field protected mSummary:Landroid/widget/TextView;

.field protected mTitle:Landroid/widget/TextView;

.field protected mTitleSummaryContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mHeaderIcon:Landroid/widget/ImageView;

    nop

    const v0, 0x7f0a01f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mDevicesCheckCircleGreenHeaderIcon:Landroid/widget/ImageView;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mTitle:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f0a0700

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mTitleSummaryContainer:Landroid/view/View;

    return-void
.end method

.method protected setHeaderIconImageResource(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    const v2, 0x7f0801d3

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mDevicesCheckCircleGreenHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mDevicesCheckCircleGreenHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
