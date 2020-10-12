.class public Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPChargingStationHeaderController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;


# instance fields
.field private enableButton:Landroid/widget/Button;

.field private mChargingStationDetails:Landroid/view/View;

.field private mChargingStationDistance:Landroid/widget/TextView;

.field private mChargingStationFeatureReqView:Landroid/view/View;

.field private mChargingStationInfoText:Landroid/widget/TextView;

.field private mChargingStationName:Landroid/widget/TextView;

.field private mChargingStationOffText:Landroid/widget/TextView;

.field private mChargingStationOffView:Landroid/view/View;

.field private mFeatureUri:Landroid/net/Uri;

.field private mObserver:Landroid/database/ContentObserver;

.field private mStationDistanceUri:Landroid/net/Uri;

.field private mStationNameUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController$1;-><init>(Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mObserver:Landroid/database/ContentObserver;

    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->initUris()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->setView()V

    return-void
.end method

.method private getFormattedDistance(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f1216a9

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x4051800000000000L    # 70.0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_1

    const-wide v6, 0x4051400000000000L    # 69.0

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x46

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_2

    const-wide v6, 0x404d800000000000L    # 59.0

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_3

    const-wide v6, 0x4048800000000000L    # 49.0

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_4

    const-wide v6, 0x4043800000000000L    # 39.0

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_5

    const-wide/high16 v6, 0x403d000000000000L    # 29.0

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_6

    const-wide/high16 v6, 0x4033000000000000L    # 19.0

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_7

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_7

    iget-object v6, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v4, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initUris()V
    .locals 1

    const-string v0, "op_charging_stations_feature_on"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mFeatureUri:Landroid/net/Uri;

    const-string v0, "op_charging_station_beacon_name"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mStationNameUri:Landroid/net/Uri;

    const-string v0, "op_charging_station_beacon_distance"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mStationDistanceUri:Landroid/net/Uri;

    return-void
.end method

.method private isLocationEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v1

    return v1
.end method

.method private isOPFeatureEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "op_charging_stations_feature_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private setView()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->updateHeader()V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->enableButton:Landroid/widget/Button;

    new-instance v1, Lcom/oneplus/settings/chargingstations/-$$Lambda$OPChargingStationHeaderController$RxWddFa1TUqNf0vpzYVPYqS95po;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/chargingstations/-$$Lambda$OPChargingStationHeaderController$RxWddFa1TUqNf0vpzYVPYqS95po;-><init>(Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showOffHeader(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationDetails:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationOffView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationFeatureReqView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationOffText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateHeader()V
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->isOPFeatureEnabled()Z

    move-result v0

    const v1, 0x7f121107

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationDetails:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationOffView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationFeatureReqView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationInfoText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->enableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->isOPFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationDetails:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationOffView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationFeatureReqView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationInfoText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->enableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->isOPFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationDetails:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationOffView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationFeatureReqView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationInfoText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    const v2, 0x7f121114

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->enableButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->updateStationDetails()V

    :goto_0
    return-void
.end method

.method private updateStationDetails()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    const-string v1, "op_charging_station_beacon_name"

    invoke-static {v0, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getStringSystemProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    const-string v2, "op_charging_station_beacon_distance"

    invoke-static {v1, v2}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getStringGlobalProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationDetails:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationOffView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationFeatureReqView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationDistance:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->getFormattedDistance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v2, 0x7f1210e3

    invoke-direct {p0, v2}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->showOffHeader(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-static {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->setLocationUpdate(Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;)V

    const v1, 0x7f0a0488

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationDetails:Landroid/view/View;

    const v1, 0x7f0a0489

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationOffView:Landroid/view/View;

    const v1, 0x7f0a048a

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationFeatureReqView:Landroid/view/View;

    const v1, 0x7f0a0487

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a048b

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationDistance:Landroid/widget/TextView;

    const v2, 0x7f0a048c

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationName:Landroid/widget/TextView;

    const v2, 0x7f0a0491

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationOffText:Landroid/widget/TextView;

    const v2, 0x7f0a049d

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mChargingStationInfoText:Landroid/widget/TextView;

    const v2, 0x7f0a0498

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->enableButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->setView()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$setView$0$OPChargingStationHeaderController(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onOPLocationUpdate()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->updateHeader()V

    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mFeatureUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mStationDistanceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mStationNameUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->initUris()V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mFeatureUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mStationNameUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mStationDistanceUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->setView()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
