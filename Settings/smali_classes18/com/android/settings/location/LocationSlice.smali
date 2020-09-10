.class public Lcom/android/settings/location/LocationSlice;
.super Ljava/lang/Object;
.source "LocationSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPrimaryAction()Landroid/app/PendingIntent;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSlice;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f120968

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3f

    invoke-static {v3, v4, v2, v0, v5}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/settings/SubSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 11

    iget-object v0, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    const v1, 0x108051d

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f120968

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0}, Lcom/android/settings/location/LocationSlice;->getPrimaryAction()Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v5

    new-instance v6, Landroidx/slice/builders/ListBuilder;

    iget-object v7, p0, Lcom/android/settings/location/LocationSlice;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/settings/slices/CustomSliceRegistry;->LOCATION_SLICE_URI:Landroid/net/Uri;

    const-wide/16 v9, -0x1

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-virtual {v6, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v6

    new-instance v7, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {v7, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v4

    return-object v4
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->LOCATION_SLICE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
