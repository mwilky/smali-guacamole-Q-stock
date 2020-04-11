.class public abstract Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "CdmaBasePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;
    }
.end annotation


# instance fields
.field private mDataContentObserver:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;

.field protected mPreference:Landroidx/preference/Preference;

.field protected mPreferenceManager:Landroidx/preference/PreferenceManager;

.field protected mSubId:I

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mSubId:I

    new-instance v0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;-><init>(Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    instance-of v1, v0, Lcom/android/settings/network/telephony/cdma/CdmaListPreference;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settings/network/telephony/cdma/CdmaListPreference;

    iget v1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/cdma/CdmaListPreference;->setSubId(I)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isCdmaOptions(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public init(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->init(Landroidx/preference/PreferenceManager;I)V

    return-void
.end method

.method public init(Landroidx/preference/PreferenceManager;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iput p2, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mSubId:I

    iget-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;

    iget-object v1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;->register(Landroid/content/Context;I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;

    iget-object v1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$DataContentObserver;->unRegister(Landroid/content/Context;)V

    return-void
.end method
