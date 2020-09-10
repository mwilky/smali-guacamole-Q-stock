.class public Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BuildNumberPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# static fields
.field static final REQUEST_CONFIRM_PASSWORD_FOR_DEV_PREF:I = 0x64

.field static final TAPS_TO_BE_A_DEVELOPER:I = 0x7


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field private mDevHitCountdown:I

.field private mDevHitToast:Landroid/widget/Toast;

.field private mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mProcessingLastDevHit:Z

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method private enableDevelopmentSettings()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f121449

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public copy()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1203c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/slices/Sliceable;->setCopyContent(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 9

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    const/16 v2, 0x34f

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v4, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v4, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    const-string v3, "no_debugging_features"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getDeviceOwnerComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.settings.action.REQUEST_DEBUG_FEATURES"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedBySystem:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v3}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v4, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    return v1

    :cond_6
    iget v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    const/4 v2, 0x1

    if-lez v0, :cond_b

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    iget v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    if-nez v0, :cond_8

    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    if-nez v3, :cond_8

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-direct {v0, v1, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v1, 0x64

    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f1216d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->enableDevelopmentSettings()V

    :cond_7
    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v4

    const/16 v5, 0x350

    iget-object v1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v6

    const/4 v7, 0x0

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    xor-int/lit8 v8, v1, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    if-lez v0, :cond_a

    const/4 v3, 0x5

    if-ge v0, v3, :cond_a

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_9
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100046

    iget v5, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_a
    :goto_0
    nop

    :goto_1
    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v4

    const/16 v5, 0x350

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    goto :goto_2

    :cond_b
    if-gez v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_c
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121448

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v4

    const/16 v5, 0x350

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    :cond_d
    :goto_2
    return v2
.end method

.method public isCopyableSlice()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSliceable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->enableDevelopmentSettings()V

    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_debugging_features"

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedBySystem:Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    iput v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    return-void
.end method

.method public setHost(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public useDynamicSliceSummary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
