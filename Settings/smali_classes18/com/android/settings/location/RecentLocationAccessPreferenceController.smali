.class public Lcom/android/settings/location/RecentLocationAccessPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RecentLocationAccessPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY_APPS_DASHBOARD:Ljava/lang/String; = "apps_dashboard"

.field private static final MAXIMUM_APP_COUNT:I = 0x3


# instance fields
.field private mController:Lcom/android/settingslib/widget/AppEntitiesHeaderController;

.field private final mRecentLocationAccesses:Lcom/android/settingslib/location/RecentLocationAccesses;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/settingslib/location/RecentLocationAccesses;

    invoke-direct {v0, p1}, Lcom/android/settingslib/location/RecentLocationAccesses;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/settings/location/RecentLocationAccessPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationAccesses;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationAccesses;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mRecentLocationAccesses:Lcom/android/settingslib/location/RecentLocationAccesses;

    return-void
.end method

.method private updateRecentApps()V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mRecentLocationAccesses:Lcom/android/settingslib/location/RecentLocationAccesses;

    invoke-virtual {v0}, Lcom/android/settingslib/location/RecentLocationAccesses;->getAppListSorted()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/location/RecentLocationAccesses$Access;

    new-instance v3, Lcom/android/settingslib/widget/AppEntityInfo$Builder;

    invoke-direct {v3}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;-><init>()V

    iget-object v4, v2, Lcom/android/settingslib/location/RecentLocationAccesses$Access;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/widget/AppEntityInfo$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/settingslib/location/RecentLocationAccesses$Access;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settingslib/widget/AppEntityInfo$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v2, Lcom/android/settingslib/location/RecentLocationAccesses$Access;->accessFinishTime:J

    sub-long/2addr v5, v7

    long-to-double v5, v5

    const/4 v7, 0x0

    sget-object v8, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZLandroid/icu/text/RelativeDateTimeFormatter$Style;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settingslib/widget/AppEntityInfo$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/location/-$$Lambda$RecentLocationAccessPreferenceController$jo5yu7kPuur0Ok6pWRXkVKJ8FdE;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/location/-$$Lambda$RecentLocationAccessPreferenceController$jo5yu7kPuur0Ok6pWRXkVKJ8FdE;-><init>(Lcom/android/settings/location/RecentLocationAccessPreferenceController;Lcom/android/settingslib/location/RecentLocationAccesses$Access;)V

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/AppEntityInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->build()Lcom/android/settingslib/widget/AppEntityInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mController:Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    invoke-virtual {v4, v1, v3}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setAppEntity(ILcom/android/settingslib/widget/AppEntityInfo;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mController:Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->removeAppEntity(I)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mController:Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    invoke-virtual {v1}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->apply()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "apps_dashboard"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0a009c

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->newInstance(Landroid/content/Context;Landroid/view/View;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    move-result-object v2

    const v3, 0x7f120919

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setHeaderTitleRes(I)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    move-result-object v2

    const v3, 0x7f120923

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setHeaderDetailsRes(I)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    move-result-object v2

    const v3, 0x7f120921

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setHeaderEmptyRes(I)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    move-result-object v2

    new-instance v3, Lcom/android/settings/location/-$$Lambda$RecentLocationAccessPreferenceController$l-RTSnbsS7GrU1_A24yRLTpfDY8;

    invoke-direct {v3, p0}, Lcom/android/settings/location/-$$Lambda$RecentLocationAccessPreferenceController$l-RTSnbsS7GrU1_A24yRLTpfDY8;-><init>(Lcom/android/settings/location/RecentLocationAccessPreferenceController;)V

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setHeaderDetailsClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mController:Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "apps_dashboard"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$displayPreference$0$RecentLocationAccessPreferenceController(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REVIEW_PERMISSION_USAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.PERMISSION_NAME"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const-string v3, "android.intent.extra.DURATION_MILLIS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$updateRecentApps$1$RecentLocationAccessPreferenceController(Lcom/android/settingslib/location/RecentLocationAccesses$Access;Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_APP_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.PERMISSION_NAME"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/settingslib/location/RecentLocationAccesses$Access;->packageName:Ljava/lang/String;

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/settingslib/location/RecentLocationAccesses$Access;->userHandle:Landroid/os/UserHandle;

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->updateRecentApps()V

    return-void
.end method
