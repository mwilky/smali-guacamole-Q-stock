.class public Lcom/android/settings/network/telephony/DataUsagePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "DataUsagePreferenceController.java"


# instance fields
.field private mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

.field private mIntent:Landroid/content/Intent;

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(I)V
    .locals 4

    iput p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mSubId:I

    iget v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mTemplate:Landroid/net/NetworkTemplate;

    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    iget-object v1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->setSubscriptionId(I)V

    iget-object v1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MOBILE_DATA_USAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mTemplate:Landroid/net/NetworkTemplate;

    const-string v3, "network_template"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mSubId:I

    const-string v3, "android.provider.extra.SUB_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mSubId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    iget-wide v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    iget-object v6, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v6}, Lcom/android/settingslib/net/DataUsageController;->getHistoricalUsageLevel(Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    :cond_1
    cmp-long v0, v2, v4

    const/4 v4, 0x1

    if-lez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f120568

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    iget-wide v9, v9, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v8, v9, v10}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    iget-object v1, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    aput-object v1, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
