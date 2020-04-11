.class public Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;
.super Ljava/lang/Object;
.source "DeviceInfoSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceInfoSlice"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method private getDeviceModel()Ljava/lang/CharSequence;
    .locals 1

    invoke-static {}, Lcom/android/settings/deviceinfo/HardwareInfoPreferenceController;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrimaryAction()Landroid/app/PendingIntent;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method getFirstSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    return-object v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f1205ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/16 v4, 0x579

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/settings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/android/settings/slices/CustomSliceRegistry;->DEVICE_INFO_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method getPhoneNumber()Ljava/lang/CharSequence;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->getFirstSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const v1, 0x7f1205cd

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 8

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f080225

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f1205ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->getPrimaryAction()Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    new-instance v3, Landroidx/slice/builders/ListBuilder;

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/settings/slices/CustomSliceRegistry;->DEVICE_INFO_SLICE_URI:Landroid/net/Uri;

    const-wide/16 v6, -0x1

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v3

    new-instance v4, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-direct {v4}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>()V

    invoke-virtual {v4, v1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v3

    new-instance v4, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->getPhoneNumber()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->getDeviceModel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v3

    return-object v3
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->DEVICE_INFO_SLICE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
