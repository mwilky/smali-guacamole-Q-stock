.class public Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;
.super Ljava/lang/Object;
.source "RestrictAppDetector.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryTipDetector;


# static fields
.field static final USE_FAKE_DATA:Z = false
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mAppLabelPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

.field private mAppRestrictionPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

.field mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mAppRestrictionPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mAppLabelPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

    return-void
.end method

.method private getFakeData()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;-><init>()V

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->build()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;-><init>(ILjava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->appRestrictionEnabled:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget v4, v4, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->appRestrictionActiveHour:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;->detectAnomalies(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;-><init>(ILjava/util/List;)V

    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    invoke-virtual {v4, v2, v3, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->queryAllAnomalies(JI)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mAppLabelPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mAppRestrictionPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;->negate()Ljava/util/function/Predicate;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v5, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v5, v1, v4}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;-><init>(ILjava/util/List;)V

    return-object v5

    :cond_2
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;-><init>(ILjava/util/List;)V

    return-object v0
.end method
