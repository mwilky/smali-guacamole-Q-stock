.class public Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPQuickTurnOnAssistantApp.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# static fields
.field private static final CAMERA_VALUE:I = 0x0

.field private static final KEY_CAMERA:Ljava/lang/String; = "camera"

.field private static final KEY_WALLET:Ljava/lang/String; = "wallet"

.field private static final OPEN_WALLET_CP_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "OPQuickTurnOnAssistantApp"

.field private static final WALLET_VALUE:I = 0x1


# instance fields
.field private mCamera:Lcom/android/settings/ui/RadioButtonPreference;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mOPQuickTurnOnAssistantAppSwitchPreferenceController:Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mWallet:Lcom/android/settings/ui/RadioButtonPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://finshell.wallet.quickstart.flag.provider.open/CARD_BAG_FLAG"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->OPEN_WALLET_CP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp$1;-><init>(Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->updateQuickTurnOnAssistantAppEnabledStatus()V

    return-void
.end method

.method public static checkSupportWalletFlag(Landroid/content/Context;)Z
    .locals 9

    const-string v0, "HAS_ACTIVE_CARD"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->OPEN_WALLET_CP_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    aget-object v1, v0, v8

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    return v2

    :cond_0
    if-eqz v7, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_1
    return v8

    :goto_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_2
    throw v1
.end method

.method private updateQuickTurnOnAssistantAppEnabledStatus()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "camera_double_tap_power_gesture_disabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mCamera:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->checkSupportWalletFlag(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mWallet:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mWallet:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mCamera:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mWallet:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private updateQuickTurnOnAssistantAppSelectStatus(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mCamera:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mWallet:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "OPQuickTurnOnAssistantApp"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1600aa

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v1, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;

    new-instance v2, Lcom/android/settings/widget/SwitchBarController;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v2, v3}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    invoke-direct {v1, v0, v2}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V

    iput-object v1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mOPQuickTurnOnAssistantAppSwitchPreferenceController:Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mOPQuickTurnOnAssistantAppSwitchPreferenceController:Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mCamera:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v2, "wallet"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mWallet:Lcom/android/settings/ui/RadioButtonPreference;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mCamera:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mWallet:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/settings/ui/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "camera"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "wallet"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_app_double_tap_power_gesture"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v1}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->updateQuickTurnOnAssistantAppSelectStatus(I)V

    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "op_app_double_tap_power_gesture"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->updateQuickTurnOnAssistantAppSelectStatus(I)V

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->updateQuickTurnOnAssistantAppEnabledStatus()V

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "camera_double_tap_power_gesture_disabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->checkSupportWalletFlag(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mWallet:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v6, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mCamera:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mCamera:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
