.class public Lcom/android/settings/network/NetworkDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NetworkDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;
.implements Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final OMA_WFC_CHECKED:Ljava/lang/String; = "sprint_vowifi_enable"

.field public static final OMA_WFC_ENABLE:Ljava/lang/String; = "oma_wfc_enable"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "NetworkDashboardFrag"

.field private static final TYPE_CHECKED:I = 0x1

.field private static final TYPE_ENABLE:I = 0x2

.field private static final TYPE_VISIBLE:I = 0x0

.field public static final UI_REFRESH:Ljava/lang/String; = "com.oneplus.sprint.callingplus.ui_refresh"

.field private static mTetherController:Lcom/android/settings/network/TetherPreferenceController;


# instance fields
.field isBindWifiCallingPlusSuccess:Z

.field private lastTetherData:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallingPlusConnection:Landroid/content/ServiceConnection;

.field private mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mIWifiCallingService:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

.field private mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

.field private mTetherSettings:Lcom/android/settingslib/RestrictedPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/NetworkDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/network/NetworkDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/network/NetworkDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->lastTetherData:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->isBindWifiCallingPlusSuccess:Z

    new-instance v0, Lcom/android/settings/network/NetworkDashboardFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/NetworkDashboardFragment$2;-><init>(Lcom/android/settings/network/NetworkDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/settings/network/NetworkDashboardFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/network/NetworkDashboardFragment$3;-><init>(Lcom/android/settings/network/NetworkDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/fragment/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/network/NetworkDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/fragment/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/network/NetworkDashboardFragment;Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;)Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mIWifiCallingService:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/network/NetworkDashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->updateUssWfifiCallingPlus()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/fragment/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/settings/network/MobilePlanPreferenceController;

    invoke-direct {v0, p0, p4}, Lcom/android/settings/network/MobilePlanPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)V

    new-instance v1, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    new-instance v2, Lcom/android/settings/network/OPSimAndNetworkSettingsPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/network/OPSimAndNetworkSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/settings/network/VpnPreferenceController;

    invoke-direct {v3, p0}, Lcom/android/settings/network/VpnPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-direct {v4, p0}, Lcom/android/settings/network/PrivateDnsPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/oneplus/settings/controllers/OPRoamingControlPreferenceController;

    invoke-direct {v6, p0}, Lcom/oneplus/settings/controllers/OPRoamingControlPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/settings/network/OPWifiCallingPlusPreferenceController;

    invoke-direct {v7, p0}, Lcom/android/settings/network/OPWifiCallingPlusPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p1, v3}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p1, v4}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p1, v5}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p1, v6}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p1, v7}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "settings_network_and_internet_v2"

    invoke-static {p0, v9}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Lcom/android/settings/network/MobileNetworkSummaryController;

    invoke-direct {v9, p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/android/settings/network/TetherPreferenceController;

    invoke-direct {v9, p0, p1}, Lcom/android/settings/network/TetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/android/settings/network/ProxyPreferenceController;

    invoke-direct {v9, p0}, Lcom/android/settings/network/ProxyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v8
.end method

.method public static isWfcOMAChecked(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sprint_vowifi_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method static synthetic lambda$onCreateDialog$0(Lcom/android/settings/network/MobilePlanPreferenceController;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/MobilePlanPreferenceController;->setMobilePlanDialogMessage(Ljava/lang/String;)V

    return-void
.end method

.method private updateUssWfifiCallingPlus()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->isBindWifiCallingPlusSuccess:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mIWifiCallingService:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;->isWifiCallingSwitchNormal()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/network/NetworkDashboardFragment;->updateUssWifiCallingPlusPreference(ZI)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mIWifiCallingService:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    invoke-interface {v1}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;->isWifiCallingSwitchChecked()Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/settings/network/NetworkDashboardFragment;->updateUssWifiCallingPlusPreference(ZI)V

    iget-object v2, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mIWifiCallingService:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    invoke-interface {v2}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;->isWifiCallingSwitchEnable()Z

    move-result v2

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/network/NetworkDashboardFragment;->updateUssWifiCallingPlusPreference(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateUssWifiCallingPlusPreference(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-nez v0, :cond_0

    const-string v0, "oneplus_wifi_calling_plus"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/MasterSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setVisible(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateUssWifiTetheringPreference()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->getTetherData(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->lastTetherData:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->lastTetherData:I

    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherSettings:Lcom/android/settingslib/RestrictedPreference;

    if-nez v1, :cond_1

    const-string v1, "tether_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/NetworkDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedPreference;

    iput-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherSettings:Lcom/android/settingslib/RestrictedPreference;

    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherSettings:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setVisible(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherSettings:Lcom/android/settingslib/RestrictedPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setVisible(Z)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-static {p1, v0, v1, p0, p0}, Lcom/android/settings/network/NetworkDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/fragment/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/16 v0, 0x261

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120811

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "NetworkDashboardFrag"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2ea

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_network_and_internet_v2"

    invoke-static {v0, v1}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f160078

    return v0

    :cond_0
    const v0, 0x7f160077

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-string v0, "settings_network_and_internet_v2"

    invoke-static {p1, v0}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/settings/network/MultiNetworkHeaderController;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/MultiNetworkHeaderController;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MultiNetworkHeaderController;->init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    :cond_0
    const-class v0, Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkDashboardFrag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const-class v0, Lcom/android/settings/network/MobilePlanPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/MobilePlanPreferenceController;

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/network/MobilePlanPreferenceController;->getMobilePlanDialogMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/network/-$$Lambda$NetworkDashboardFragment$ezC2Ol_SOf4CDiS8HjkkdWzGu_s;

    invoke-direct {v3, v0}, Lcom/android/settings/network/-$$Lambda$NetworkDashboardFragment$ezC2Ol_SOf4CDiS8HjkkdWzGu_s;-><init>(Lcom/android/settings/network/MobilePlanPreferenceController;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneplus_wifi_calling_plus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mIWifiCallingService:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    if-eqz v1, :cond_0

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;->setWifiCallingSwitchState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->updateUssWifiTetheringPreference()V

    new-instance v0, Lcom/android/settings/wifi/tether/TetherDataObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/TetherDataObserver;-><init>(Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "TetheredData"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "oneplus_wifi_calling_plus"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/NetworkDashboardFragment;->isWfcOMAChecked(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oneplus.sprint.callingplus"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.oneplus.sprint.callingplus.WifiCallingService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->isBindWifiCallingPlusSuccess:Z

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oneplus.sprint.callingplus.ui_refresh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->isBindWifiCallingPlusSuccess:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->isBindWifiCallingPlusSuccess:Z

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method

.method public onTetherDataChange()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->updateUssWifiTetheringPreference()V

    return-void
.end method

.method public showMobilePlanMessageDialog()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkDashboardFragment;->showDialog(I)V

    return-void
.end method
