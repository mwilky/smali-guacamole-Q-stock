.class public Lcom/oneplus/settings/better/OPHapticFeedback;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPHapticFeedback.java"


# static fields
.field private static final APPTRACKER_EVENT:Ljava/lang/String; = "game_mode_haptic"

.field public static final KEY_SETTINGS_PROVIDER:Ljava/lang/String; = "op_game_mode_vibrate_feedback"


# instance fields
.field private final KEY_HAPTIC_FEEDBACK_NO_APP:Ljava/lang/String;

.field private final KEY_HAPTIC_FEEDBACK_SUPPORT_CATEGORY:Ljava/lang/String;

.field private final KEY_HAPTIC_FEEDBACK_SWITCH:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHapticFeedbackAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mHapticFeedbackInstalledApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHapticFeedbackSupportCategory:Landroidx/preference/PreferenceCategory;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSwitchPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackInstalledApps:Ljava/util/List;

    const-string v0, "op_haptic_feedback_switch"

    iput-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->KEY_HAPTIC_FEEDBACK_SWITCH:Ljava/lang/String;

    const-string v0, "op_haptic_feedback_support_category"

    iput-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->KEY_HAPTIC_FEEDBACK_SUPPORT_CATEGORY:Ljava/lang/String;

    const-string v0, "op_haptic_feedback_no_app"

    iput-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->KEY_HAPTIC_FEEDBACK_NO_APP:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackAppList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPHapticFeedback;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getHapticFeedbackState(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "op_game_mode_vibrate_feedback"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private loadConfig()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private refreshUI()V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPHapticFeedback;->getHapticFeedbackState(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackInstalledApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackSupportCategory:Landroidx/preference/PreferenceCategory;

    const-string v2, "op_haptic_feedback_no_app"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackInstalledApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    new-instance v5, Landroidx/preference/Preference;

    iget-object v6, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d01fc

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackSupportCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static sendDefaultAppTracker()V
    .locals 2

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPHapticFeedback;->getHapticFeedbackState(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "game_mode_haptic"

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static setHapticFeedbackState(Landroid/content/Context;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "op_game_mode_vibrate_feedback"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "game_mode_haptic"

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPHapticFeedback;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPHapticFeedback;->loadConfig()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackAppList:Ljava/util/List;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackInstalledApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const v0, 0x7f1600a1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPHapticFeedback;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPHapticFeedback;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "op_haptic_feedback_support_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackSupportCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "op_haptic_feedback_switch"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    new-instance v2, Lcom/oneplus/settings/better/OPHapticFeedback$1;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/better/OPHapticFeedback$1;-><init>(Lcom/oneplus/settings/better/OPHapticFeedback;)V

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPHapticFeedback;->refreshUI()V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
