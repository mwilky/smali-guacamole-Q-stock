.class public Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPStatusBarCustomizeIconSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings$StatusBarCustomizeIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPStatusBarCustomizeSettings"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings$StatusBarCustomizeIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings$StatusBarCustomizeIndexProvider;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private customizePreferences()V
    .locals 6

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x30

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v0, :cond_0

    const-string v3, "vowifi"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;->removePreference(Ljava/lang/String;)Z

    :cond_0
    if-eqz v1, :cond_1

    const-string v3, "volte"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;->removePreference(Ljava/lang/String;)Z

    :cond_1
    if-eqz v2, :cond_2

    const-string v3, "volume"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;->removePreference(Ljava/lang/String;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1600bb

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121455

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;->customizePreferences()V

    return-void
.end method
