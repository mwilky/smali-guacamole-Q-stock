.class public Lcom/android/settings/slices/SliceBuilderUtils;
.super Ljava/lang/Object;
.source "SliceBuilderUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SliceBuilder"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildCopyableSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;
    .locals 11

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getCopyableAction(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentPendingIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSafeIcon(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    nop

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v3

    invoke-static {p0, p2, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSubtitleText(Landroid/content/Context;Lcom/android/settings/core/BasePreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v5

    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/Set;

    move-result-object v6

    new-instance v7, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getUri()Landroid/net/Uri;

    move-result-object v8

    const-wide/16 v9, -0x1

    invoke-direct {v7, p0, v8, v9, v10}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-virtual {v7, v5}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v7

    new-instance v8, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v8}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v7

    return-object v7
.end method

.method private static buildIntentSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;
    .locals 9

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentPendingIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSafeIcon(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-static {p0, p2, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSubtitleText(Landroid/content/Context;Lcom/android/settings/core/BasePreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v3

    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/Set;

    move-result-object v4

    new-instance v5, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-wide/16 v7, -0x1

    invoke-direct {v5, p0, v6, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-virtual {v5, v3}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v5

    new-instance v6, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v0, v1, v8, v7}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v5

    return-object v5
.end method

.method public static buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.android.settings.SEARCH_RESULT_TRAMPOLINE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v2
.end method

.method public static buildSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating slice for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getPreferenceController()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SliceBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/16 v4, 0x55b

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildUnavailableSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isCopyableSlice()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p1, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->buildCopyableSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getSliceType()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-static {p0, p1, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliderSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;

    move-result-object v1

    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slice type passed was invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getSliceType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {p0, p1, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->buildToggleSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;

    move-result-object v1

    return-object v1

    :cond_5
    invoke-static {p0, p1, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->buildIntentSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;

    move-result-object v1

    return-object v1
.end method

.method private static buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/slices/SliceData;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getKeywords()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$Hu15enVS3PZTJT-Pl68PMm2SSAk;->INSTANCE:Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$Hu15enVS3PZTJT-Pl68PMm2SSAk;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method private static buildSliderSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;
    .locals 12

    move-object v0, p2

    check-cast v0, Lcom/android/settings/core/SliderPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result v2

    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sliderController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settings/core/SliderPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SliceBuilder"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSliderAction(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentPendingIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSafeIcon(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v4

    invoke-static {p0, p2, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSubtitleText(Landroid/content/Context;Lcom/android/settings/core/BasePreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, v6, v7}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v6

    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/Set;

    move-result-object v7

    new-instance v8, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getUri()Landroid/net/Uri;

    move-result-object v9

    const-wide/16 v10, -0x1

    invoke-direct {v8, p0, v9, v10, v11}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-virtual {v8, v4}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v8

    new-instance v9, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    invoke-direct {v9}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v10

    invoke-virtual {v9, v10}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setMax(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result v10

    invoke-virtual {v9, v10}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setMin(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result v10

    invoke-virtual {v9, v10}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setValue(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setInputAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/slice/builders/ListBuilder;->addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v8

    return-object v8
.end method

.method private static buildToggleSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;
    .locals 11

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentPendingIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSafeIcon(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-static {p0, p2, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSubtitleText(Landroid/content/Context;Lcom/android/settings/core/BasePreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v3

    move-object v4, p2

    check-cast v4, Lcom/android/settings/core/TogglePreferenceController;

    nop

    invoke-virtual {v4}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result v5

    invoke-static {p0, p1, v5}, Lcom/android/settings/slices/SliceBuilderUtils;->getToggleAction(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v5

    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/Set;

    move-result-object v6

    new-instance v7, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getUri()Landroid/net/Uri;

    move-result-object v8

    const-wide/16 v9, -0x1

    invoke-direct {v7, p0, v8, v9, v10}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-virtual {v7, v3}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v7

    new-instance v8, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v8}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v0, v1, v10, v9}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v7

    return-object v7
.end method

.method private static buildUnavailableSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;
    .locals 12

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getUnavailableSliceSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    const v4, 0x7f1205fa

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_0
    nop

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSafeIcon(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    nop

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentPendingIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v5, v7, v0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v6

    new-instance v8, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getUri()Landroid/net/Uri;

    move-result-object v9

    const-wide/16 v10, -0x1

    invoke-direct {v8, p0, v9, v10, v11}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-virtual {v8, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v8

    new-instance v9, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {v9, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v7

    return-object v7
.end method

.method public static getActionIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.slice.extra.key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->isPlatformDefined()Z

    move-result v1

    const-string v2, "com.android.settings.slice.extra.platform"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getContentIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    nop

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getFragmentClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/settings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v1
.end method

.method public static getContentPendingIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;
    .locals 2

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static getCopyableAction(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/slice/builders/SliceAction;
    .locals 4

    const-string v0, "com.android.settings.slice.action.COPY"

    invoke-static {p0, v0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getActionIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0801c4

    invoke-static {p0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    return-object v2
.end method

.method public static getPathData(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "/"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-eq v3, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x1

    aget-object v1, v2, v1

    const-string v3, "intent"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    new-instance v3, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public static getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;
    .locals 2

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getPreferenceController()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    return-object v0
.end method

.method private static getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    return-object v0
.end method

.method static getSafeIcon(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getIconResource()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f080328

    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Falling back to settings icon because there is an error getting slice icon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SliceBuilder"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v2, 0x7f080328

    invoke-static {p0, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    return-object v2
.end method

.method public static getSliceType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getSliceType()I

    move-result v1

    return v1
.end method

.method private static getSliderAction(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "com.android.settings.slice.action.SLIDER_CHANGED"

    invoke-static {p0, v0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getActionIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getSubtitleText(Landroid/content/Context;Lcom/android/settings/core/BasePreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p1}, Lcom/android/settings/core/BasePreferenceController;->useDynamicSliceSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/core/BasePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->isValidSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->isValidSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const-string v1, ""

    return-object v1
.end method

.method private static getToggleAction(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Z)Landroidx/slice/builders/SliceAction;
    .locals 2

    const-string v0, "com.android.settings.slice.action.TOGGLE_CHANGED"

    invoke-static {p0, v0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getActionIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v1

    return-object v1
.end method

.method public static getUri(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "android.settings.slices"

    goto :goto_0

    :cond_0
    const-string v0, "com.android.settings.slices"

    :goto_0
    nop

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static isValidSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const v1, 0x7f1214fe

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f121501

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v0

    :cond_2
    :goto_1
    return v0
.end method

.method static synthetic lambda$buildSliceKeywords$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    return-object v0
.end method
