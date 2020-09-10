.class public Lcom/oneplus/settings/im/OPQuickReplySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPQuickReplySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final ENABLE_FREEFORM_SUPPORT:Ljava/lang/String; = "enable_freeform_support"

.field private static final KEY_ENABLE_QUICK_REPLY:Ljava/lang/String; = "key_enable_quick_reply"

.field private static final KEY_ONEPLUS_NO_SURPPORTED_APPS:Ljava/lang/String; = "oneplus_no_surpported_apps"

.field private static final KEY_ONEPLUS_SURPPORTED_APPS:Ljava/lang/String; = "oneplus_surpported_apps"

.field private static final KEY_QUICK_REPLY_INSTRUCTIONS:Ljava/lang/String; = "key_quick_reply_instructions"

.field public static final OP_QUICKREPLY_IME_ADJUST:Ljava/lang/String; = "op_quickreply_ime_adjust"

.field public static final OP_QUICKREPLY_IM_LIST:Ljava/lang/String; = "op_quickreply_im_list"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultQuickReplyAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableQuickReply:Landroidx/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHasFingerprint:Z

.field private mNoSupportedApps:Landroidx/preference/Preference;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mQuickLaunchPreferece:Landroidx/preference/Preference;

.field private mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

.field private mSupportedApps:Landroidx/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/im/OPQuickReplySettings$2;

    invoke-direct {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/im/OPQuickReplySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mDefaultQuickReplyAppList:Ljava/util/List;

    new-instance v0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/im/OPQuickReplySettings$1;-><init>(Lcom/oneplus/settings/im/OPQuickReplySettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/im/OPQuickReplySettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mSupportedApps:Landroidx/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/im/OPQuickReplySettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mDefaultQuickReplyAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mNoSupportedApps:Landroidx/preference/Preference;

    return-object v0
.end method

.method private initData()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setNeedLoadWorkProfileApps(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    return-void
.end method

.method private initPreference()V
    .locals 5

    const v0, 0x7f1600ad

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->addPreferencesFromResource(I)V

    const-string v0, "oneplus_surpported_apps"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mSupportedApps:Landroidx/preference/PreferenceCategory;

    const-string v0, "oneplus_no_surpported_apps"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mNoSupportedApps:Landroidx/preference/Preference;

    const-string v0, "key_enable_quick_reply"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mEnableQuickReply:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mEnableQuickReply:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_quick_reply_instructions"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    iput-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setType(I)V

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const-string v1, "op_quick_reply_guide_light.json"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setAnimationWhiteResources([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const-string v1, "op_quick_reply_guide_dark.json"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setAnimationDarkResources([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f120ee4

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setTitleResources([I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    new-array v1, v1, [I

    const v2, 0x7f120ee6

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setDescriptionIdResources([I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    new-array v1, v1, [I

    const v2, 0x7f120ee5

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setDescriptionIdResources([I)V

    :goto_0
    return-void
.end method

.method private updatePreferenceState()V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "op_quickreply_ime_adjust"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mEnableQuickReply:Landroidx/preference/SwitchPreference;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v2, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->initPreference()V

    invoke-direct {p0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->initData()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->releaseAnim()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->stopAnim()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mEnableQuickReply:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v1, v0

    invoke-virtual {p0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_quickreply_ime_adjust"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickReplyKeyboardStatus()V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceViewClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->updatePreferenceState()V

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mQuickReplyGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->startAnim()V

    :cond_0
    return-void
.end method
