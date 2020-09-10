.class public Lcom/android/settings/network/telephony/MobileDataSlice;
.super Ljava/lang/Object;
.source "MobileDataSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method protected static getDefaultSubscriptionId(Landroid/telephony/SubscriptionManager;)I
    .locals 2

    nop

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    return v1
.end method

.method private getPrimaryAction()Landroid/app/PendingIntent;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getSummary()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private isMobileDataAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getSelectableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 13

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f0802d2

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f120a92

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->isAirplaneModeEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->isMobileDataAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v4

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/settings/network/telephony/MobileDataSlice;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->getPrimaryAction()Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v0, v7, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v7

    nop

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->isMobileDataEnabled()Z

    move-result v8

    invoke-static {v5, v4, v8}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v4

    new-instance v8, Landroidx/slice/builders/ListBuilder;

    iget-object v9, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->getUri()Landroid/net/Uri;

    move-result-object v10

    const-wide/16 v11, -0x1

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-virtual {v8, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v8

    new-instance v9, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {v9, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v9

    return-object v9
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->MOBILE_DATA_SLICE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method isAirplaneModeEnabled()Z
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/settings/network/AirplaneModePreferenceController;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const-string v2, "key"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/AirplaneModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/network/AirplaneModePreferenceController;->isChecked()Z

    move-result v1

    return v1
.end method

.method isMobileDataEnabled()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    return v0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 4

    nop

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->isMobileDataEnabled()Z

    move-result v0

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v1}, Lcom/android/settings/network/telephony/MobileDataSlice;->getDefaultSubscriptionId(Landroid/telephony/SubscriptionManager;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->setMobileDataEnabled(Landroid/content/Context;IZZ)V

    return-void
.end method
