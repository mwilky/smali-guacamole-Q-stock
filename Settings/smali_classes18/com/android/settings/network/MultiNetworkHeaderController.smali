.class public Lcom/android/settings/network/MultiNetworkHeaderController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MultiNetworkHeaderController.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiConnectionPreferenceController$UpdateListener;
.implements Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "MultiNetworkHdrCtrl"


# instance fields
.field private mOriginalExpandedChildrenCount:I

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mSubscriptionsController:Lcom/android/settings/network/SubscriptionsPreferenceController;

.field private mWifiController:Lcom/android/settings/wifi/WifiConnectionPreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method createSubscriptionsController(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/network/SubscriptionsPreferenceController;
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/16 v0, 0xa

    new-instance v7, Lcom/android/settings/network/SubscriptionsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceKey:Ljava/lang/String;

    const/16 v6, 0xa

    move-object v1, v7

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/network/SubscriptionsPreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;Ljava/lang/String;I)V

    return-object v7
.end method

.method createWifiController(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/wifi/WifiConnectionPreferenceController;
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    new-instance v8, Lcom/android/settings/wifi/WifiConnectionPreferenceController;

    iget-object v2, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceKey:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x2ea

    move-object v1, v8

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/wifi/WifiConnectionPreferenceController$UpdateListener;Ljava/lang/String;II)V

    return-object v8
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getInitialExpandedChildrenCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mOriginalExpandedChildrenCount:I

    iget-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/network/MultiNetworkHeaderController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mWifiController:Lcom/android/settings/wifi/WifiConnectionPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mSubscriptionsController:Lcom/android/settings/network/SubscriptionsPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mSubscriptionsController:Lcom/android/settings/network/SubscriptionsPreferenceController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method public init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/MultiNetworkHeaderController;->createWifiController(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/wifi/WifiConnectionPreferenceController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mWifiController:Lcom/android/settings/wifi/WifiConnectionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/MultiNetworkHeaderController;->createSubscriptionsController(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/network/SubscriptionsPreferenceController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mSubscriptionsController:Lcom/android/settings/network/SubscriptionsPreferenceController;

    return-void
.end method

.method public onChildrenUpdated()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/network/MultiNetworkHeaderController;->isAvailable()Z

    move-result v0

    iget v1, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mOriginalExpandedChildrenCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->setInitialExpandedChildrenCount(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->setInitialExpandedChildrenCount(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void
.end method
