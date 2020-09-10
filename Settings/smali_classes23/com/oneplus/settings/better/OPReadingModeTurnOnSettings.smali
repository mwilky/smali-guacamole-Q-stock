.class public Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPReadingModeTurnOnSettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final ASK_VALUE:I = 0x0

.field private static final CHROMATIC_VALUE:I = 0x2

.field private static final KEY_ASK:Ljava/lang/String; = "ask"

.field private static final KEY_CHROMATIC:Ljava/lang/String; = "chromatic"

.field private static final KEY_MONO:Ljava/lang/String; = "mono"

.field private static final MONO_VALUE:I = 0x1

.field public static final READING_MODE_STATUS_MANUAL:Ljava/lang/String; = "reading_mode_status_manual"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPReadingModeTurnOnSettings"


# instance fields
.field private mAskPreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mChromaticPreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

.field private mMonoPreference:Lcom/android/settings/ui/RadioButtonPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private updateDefaultSelectStatus(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mAskPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mChromaticPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mMonoPreference:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "OPReadingModeTurnOnSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1600b0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mContext:Landroid/content/Context;

    const-string v0, "ask"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mAskPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "chromatic"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mChromaticPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "mono"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mMonoPreference:Lcom/android/settings/ui/RadioButtonPreference;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mAskPreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mChromaticPreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mMonoPreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v0}, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/oneplus/settings/widget/OPFooterPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    const v1, 0x7f120f15

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/widget/OPFooterPreference;->setTitle(I)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/settings/ui/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ask"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const-string v2, "chromatic"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "reading_mode_status_manual"

    const/4 v4, 0x0

    const-string v5, "reading_mode_status"

    const/4 v6, -0x2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "force-on-color"

    invoke-static {v4, v3, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const-string v2, "mono"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "force-on"

    invoke-static {v4, v3, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :cond_3
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "read_def"

    const-string v4, "status"

    invoke-static {v3, v4, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "reading_mode_option_manual"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v1}, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->updateDefaultSelectStatus(I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_option_manual"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;->updateDefaultSelectStatus(I)V

    return-void
.end method
