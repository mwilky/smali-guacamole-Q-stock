.class public Lcom/android/settings/network/telephony/MobileNetworkSwitchController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MobileNetworkSwitchController.java"

# interfaces
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "MobileNetworkSwitchCtrl"


# instance fields
.field private mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private mSubId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance v0, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    return-void
.end method

.method private update()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    iget v4, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    if-ne v3, v4, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :goto_3
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0a06a4

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/SwitchBar;

    iput-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v2, 0x7f120ab3

    const v3, 0x7f120ab2

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v2, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkSwitchController$DjDjV7gnNDIStKefJ0_-UIMy81M;

    invoke-direct {v2, p0}, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkSwitchController$DjDjV7gnNDIStKefJ0_-UIMy81M;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->update()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mContext:Landroid/content/Context;

    const-string v1, "settings_network_and_internet_v2"

    invoke-static {v0, v1}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public init(Landroidx/lifecycle/Lifecycle;I)V
    .locals 0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iput p2, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    return-void
.end method

.method public synthetic lambda$displayPreference$0$MobileNetworkSwitchController(Landroid/widget/Switch;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/SubscriptionManager;->setSubscriptionEnabled(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->update()V

    return-void
.end method
