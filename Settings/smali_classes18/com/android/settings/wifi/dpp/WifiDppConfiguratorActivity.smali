.class public Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "WifiDppConfiguratorActivity.java"

# interfaces
.implements Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;
.implements Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$OnQrCodeGeneratorFragmentAddButtonClickedListener;
.implements Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;
.implements Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;
.implements Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;


# static fields
.field public static final ACTION_CONFIGURATOR_QR_CODE_GENERATOR:Ljava/lang/String; = "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_GENERATOR"

.field public static final ACTION_CONFIGURATOR_QR_CODE_SCANNER:Ljava/lang/String; = "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_SCANNER"

.field private static final KEY_IS_HOTSPOT:Ljava/lang/String; = "key_is_hotspot"

.field private static final KEY_QR_CODE:Ljava/lang/String; = "key_qr_code"

.field private static final KEY_WIFI_HIDDEN_SSID:Ljava/lang/String; = "key_wifi_hidden_ssid"

.field private static final KEY_WIFI_NETWORK_ID:Ljava/lang/String; = "key_wifi_network_id"

.field private static final KEY_WIFI_PRESHARED_KEY:Ljava/lang/String; = "key_wifi_preshared_key"

.field private static final KEY_WIFI_SECURITY:Ljava/lang/String; = "key_wifi_security"

.field private static final KEY_WIFI_SSID:Ljava/lang/String; = "key_wifi_ssid"

.field private static final TAG:Ljava/lang/String; = "WifiDppConfiguratorActivity"


# instance fields
.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mIsTest:Z

.field private mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

.field private mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
.end method

.method private getConnectedWifiNetworkConfigOrNull()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
    .locals 14

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v7, v3, :cond_2

    nop

    invoke-static {v6}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getSecurityString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const/4 v11, 0x0

    iget v12, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v2

    return-object v2

    :cond_2
    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x35cc7698    # -2941530.0f

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_3

    const v3, 0x158370ce

    if-eq v2, v3, :cond_2

    const v3, 0x512412b9

    if-eq v2, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v2, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_SCANNER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :cond_2
    const-string v2, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_GENERATOR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :cond_3
    const-string v2, "android.settings.PROCESS_WIFI_EASY_CONNECT_URI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_d

    if-eq v1, v5, :cond_b

    const-string v2, "WifiDppConfiguratorActivity"

    if-eq v1, v4, :cond_4

    const/4 v0, 0x1

    const-string v1, "Launch with an invalid action"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_5

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    const-string v4, "test"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mIsTest:Z

    invoke-static {v3}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValidWifiDppQrCodeOrNull(Ljava/lang/String;)Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isWifiDppEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v5, "Device doesn\'t support Wifi DPP"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    if-eqz v2, :cond_a

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getConnectedWifiNetworkConfigOrNull()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2, p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isSupportWifiDpp(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    iput-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showAddDeviceFragment(Z)V

    goto :goto_4

    :cond_9
    :goto_3
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showChooseSavedWifiNetworkFragment(Z)V

    :goto_4
    goto :goto_6

    :cond_a
    :goto_5
    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Landroid/content/Intent;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v1

    if-nez v1, :cond_c

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    iput-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showQrCodeGeneratorFragment()V

    goto :goto_6

    :cond_d
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Landroid/content/Intent;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    iput-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showQrCodeScannerFragment(Z)V

    nop

    :goto_6
    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->finish()V

    :cond_f
    return-void
.end method

.method private showAddDeviceFragment(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "add_device_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    if-nez v0, :cond_1

    new-instance v2, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    invoke-direct {v2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;-><init>()V

    move-object v0, v2

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0a0291

    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method private showChooseSavedWifiNetworkFragment(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "choose_saved_wifi_network_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;

    if-nez v0, :cond_2

    new-instance v2, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;

    invoke-direct {v2}, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;-><init>()V

    move-object v0, v2

    iget-boolean v2, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mIsTest:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    const-string v4, "test"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0a0291

    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :cond_1
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method private showQrCodeGeneratorFragment()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "qr_code_generator_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;

    if-nez v0, :cond_0

    new-instance v2, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;

    invoke-direct {v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;-><init>()V

    move-object v0, v2

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0a0291

    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method private showQrCodeScannerFragment(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "qr_code_scanner_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    if-nez v0, :cond_1

    new-instance v2, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-direct {v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;-><init>()V

    move-object v0, v2

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0a0291

    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x63b

    return v0
.end method

.method public getWifiDppQrCode()Lcom/android/settings/wifi/dpp/WifiQrCode;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    return-object v0
.end method

.method public getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    return-object v0
.end method

.method public onChooseNetwork(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showAddDeviceFragment(Z)V

    return-void
.end method

.method public onClickChooseDifferentNetwork()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showChooseSavedWifiNetworkFragment(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->setLightNavigationBar(Landroid/view/Window;I)V

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d034e

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz p1, :cond_0

    const-string v0, "key_qr_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValidWifiDppQrCodeOrNull(Ljava/lang/String;)Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    const-string v1, "key_wifi_security"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_wifi_ssid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "key_wifi_preshared_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "key_wifi_hidden_ssid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v2, "key_wifi_network_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v2, "key_is_hotspot"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    move-object v2, v1

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    move v6, v11

    move v7, v12

    invoke-static/range {v2 .. v7}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->handleIntent(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public onQrCodeGeneratorFragmentAddButtonClicked()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showQrCodeScannerFragment(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_qr_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSecurity()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_wifi_security"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_wifi_ssid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getPreSharedKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_wifi_preshared_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getHiddenSsid()Z

    move-result v0

    const-string v1, "key_wifi_hidden_ssid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getNetworkId()I

    move-result v0

    const-string v1, "key_wifi_network_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isHotspot()Z

    move-result v0

    const-string v1, "key_is_hotspot"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScanWifiDppSuccess(Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showAddDeviceFragment(Z)V

    return-void
.end method

.method setWifiDppQrCode(Lcom/android/settings/wifi/dpp/WifiQrCode;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DPP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    const/4 v0, 0x1

    return v0
.end method

.method setWifiNetworkConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    const/4 v0, 0x1

    return v0
.end method
