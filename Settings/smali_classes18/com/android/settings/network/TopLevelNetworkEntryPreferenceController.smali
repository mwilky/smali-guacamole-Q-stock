.class public Lcom/android/settings/network/TopLevelNetworkEntryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TopLevelNetworkEntryPreferenceController.java"


# instance fields
.field private final mMobileNetworkPreferenceController:Lcom/android/settings/network/MobileNetworkPreferenceController;

.field private final mTetherPreferenceController:Lcom/android/settings/network/TetherPreferenceController;

.field private final mWifiPreferenceController:Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/network/MobileNetworkPreferenceController;

    iget-object v1, p0, Lcom/android/settings/network/TopLevelNetworkEntryPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/network/MobileNetworkPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/TopLevelNetworkEntryPreferenceController;->mMobileNetworkPreferenceController:Lcom/android/settings/network/MobileNetworkPreferenceController;

    new-instance v0, Lcom/android/settings/network/TetherPreferenceController;

    iget-object v1, p0, Lcom/android/settings/network/TopLevelNetworkEntryPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/TetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/network/TopLevelNetworkEntryPreferenceController;->mTetherPreferenceController:Lcom/android/settings/network/TetherPreferenceController;

    new-instance v0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;

    iget-object v1, p0, Lcom/android/settings/network/TopLevelNetworkEntryPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    iput-object v0, p0, Lcom/android/settings/network/TopLevelNetworkEntryPreferenceController;->mWifiPreferenceController:Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/TopLevelNetworkEntryPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDemoUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/TopLevelNetworkEntryPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120fb0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
