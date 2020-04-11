.class public Lcom/android/settings/datausage/ChartDataUsagePreference;
.super Landroidx/preference/Preference;
.source "ChartDataUsagePreference.java"


# static fields
.field private static final RESOLUTION:J = 0x80000L


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnd:J

.field private final mLimitColor:I

.field private mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mSecondaryColor:I

.field private mSeriesColor:I

.field private mShowWifi:Z

.field private mStart:J

.field private mSubId:I

.field private final mWarningColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mShowWifi:Z

    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setSelectable(Z)V

    const v0, 0x1010543

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    const v0, 0x1010038

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setLayoutResource(I)V

    return-void
.end method

.method private bindNetworkPolicy(Lcom/android/settings/widget/UsageView;Landroid/net/NetworkPolicy;I)V
    .locals 10

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-wide v3, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    const/4 v3, 0x2

    iget-wide v7, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    const v4, 0x7f120561

    iget v9, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    invoke-direct {p0, v7, v8, v4, v9}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v0, v3

    :cond_1
    iget-wide v3, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    iget-wide v3, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/32 v5, 0x80000

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {p1, v3}, Lcom/android/settings/widget/UsageView;->setDividerLoc(I)V

    iget-wide v3, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    div-long/2addr v3, v5

    long-to-float v3, v3

    int-to-float v4, p3

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    invoke-virtual {p1, v4, v3}, Lcom/android/settings/widget/UsageView;->setSideLabelWeights(FF)V

    iget v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    const/4 v5, 0x1

    iget-wide v6, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const v8, 0x7f120562

    iget v9, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v0, v5

    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/widget/UsageView;->setDividerColors(II)V

    return-void
.end method

.method private getLabel(JII)Ljava/lang/CharSequence;
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    iget-object v1, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-le v2, v3, :cond_0

    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->replaceFileSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    return-object v3
.end method

.method private toInt(J)I
    .locals 2

    const-wide/32 v0, 0xea60

    div-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method calcPoints(Lcom/android/settings/widget/UsageView;Ljava/util/List;)V
    .locals 17
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/widget/UsageView;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/net/NetworkCycleData;

    invoke-virtual {v7}, Lcom/android/settingslib/net/NetworkCycleData;->getStartTime()J

    move-result-wide v9

    cmp-long v11, v9, v2

    if-lez v11, :cond_1

    move-wide v15, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v11

    invoke-virtual {v7}, Lcom/android/settingslib/net/NetworkCycleData;->getTotalUsage()J

    move-result-wide v13

    add-long/2addr v4, v13

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    if-ne v13, v8, :cond_2

    iget-wide v13, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v13, v9, v13

    invoke-direct {v0, v13, v14}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v13

    sub-int/2addr v13, v8

    const/4 v8, -0x1

    invoke-virtual {v1, v13, v8}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    iget-wide v13, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v13, v9, v13

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    invoke-direct {v0, v13, v14}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v8

    const-wide/32 v13, 0x80000

    move-wide v15, v2

    div-long v2, v4, v13

    long-to-int v2, v2

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-wide v2, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v2, v11, v2

    invoke-direct {v0, v2, v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v2

    div-long v13, v4, v13

    long-to-int v3, v13

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    move-wide v2, v15

    goto :goto_0

    :cond_3
    move-wide v15, v2

    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-le v2, v8, :cond_4

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/UsageView;->addPath(Landroid/util/SparseIntArray;)V

    goto :goto_2

    :cond_4
    move-object/from16 v2, p1

    :goto_2
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    return-wide v0
.end method

.method public getTop()I
    .locals 8

    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {v0}, Lcom/android/settingslib/net/NetworkCycleChartData;->getTotalUsage()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz v2, :cond_0

    iget-wide v2, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-object v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-wide v4, v4, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/32 v6, 0x80000

    div-long/2addr v4, v6

    long-to-int v4, v4

    return v4
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a01c1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/UsageView;

    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getTop()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/settings/widget/UsageView;->clearPaths()V

    iget-wide v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/UsageView;->configureGraph(II)V

    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {v2}, Lcom/android/settingslib/net/NetworkCycleChartData;->getUsageBuckets()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->calcPoints(Lcom/android/settings/widget/UsageView;Ljava/util/List;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-static {v4, v5, v6, v5, v6}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-static {v4, v5, v6, v5, v6}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->bindNetworkPolicy(Lcom/android/settings/widget/UsageView;Landroid/net/NetworkPolicy;I)V

    return-void
.end method

.method public setColors(II)V
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSeriesColor:I

    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSecondaryColor:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    return-void
.end method

.method public setNetworkCycleData(Lcom/android/settingslib/net/NetworkCycleChartData;)V
    .locals 5

    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setVisibleRange(JJ)V

    return-void
.end method

.method public setNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 9

    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataWarnState(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    invoke-static {v1, v2}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataWarnBytes(Landroid/content/Context;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    iget-object v6, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iput-wide v1, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iput-wide v3, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    invoke-static {v6, v7}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataLimitState(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    invoke-static {v7, v8}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataLimitBytes(Landroid/content/Context;I)J

    move-result-wide v7

    if-ne v6, v5, :cond_1

    iget-object v3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iput-wide v7, v3, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iput-wide v3, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    return-void
.end method

.method public setShowWifi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mShowWifi:Z

    return-void
.end method

.method public setSubId(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    iput-wide p3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    return-void
.end method
