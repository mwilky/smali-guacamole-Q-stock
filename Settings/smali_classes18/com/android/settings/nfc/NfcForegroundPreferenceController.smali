.class public Lcom/android/settings/nfc/NfcForegroundPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NfcForegroundPreferenceController.java"

# interfaces
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private mPreference:Lcom/android/settings/nfc/OPNfcForegroundPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/OPNfcForegroundPreference;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPreference:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPreference:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->setPaymentBackend(Lcom/android/settings/nfc/PaymentBackend;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v2
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPreference:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-virtual {v0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->getEntry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPaymentAppsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPreference:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-virtual {v0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->onPaymentAppsChanged()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Landroidx/preference/DropDownPreference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/preference/DropDownPreference;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2}, Landroidx/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroidx/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-object v5, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v5, v3}, Lcom/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    iget-object v5, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v6, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    const/16 v7, 0x656

    goto :goto_1

    :cond_2
    const/16 v7, 0x657

    :goto_1
    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {v5, v6, v7, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    return v4
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/PaymentBackend;->registerCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/PaymentBackend;->unregisterCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    :cond_0
    return-void
.end method

.method public setPaymentBackend(Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPreference:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->setPaymentBackend(Lcom/android/settings/nfc/PaymentBackend;)V

    :cond_0
    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    instance-of v0, p1, Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
