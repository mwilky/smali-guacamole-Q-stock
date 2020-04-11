.class public Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;
.super Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;
.source "WifiDataUsageSummaryPreferenceController.java"


# instance fields
.field final mNetworkId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;I)V

    if-nez p4, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mNetworkId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mNetworkId:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public updateState(Landroidx/preference/Preference;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object v6, p1

    check-cast v6, Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iget-object v0, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mNetworkId:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iget-object v0, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0, v7}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v8

    iget-object v0, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    iget-object v1, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {v1, v7}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/android/settings/datausage/DataUsageInfoController;->updateDataLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/net/NetworkPolicy;)V

    iget-object v0, v8, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v6, v1, v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWifiMode(ZLjava/lang/String;Z)V

    invoke-virtual {v6, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setChartEnabled(Z)V

    iget-wide v1, v8, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iget-wide v3, v8, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageNumbers(JJZ)V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {v6, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setProgress(F)V

    iget-object v0, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v2, v8, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLabels(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method
