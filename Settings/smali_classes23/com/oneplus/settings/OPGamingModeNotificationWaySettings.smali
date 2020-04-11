.class public Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPGamingModeNotificationWaySettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPGamingModeNotificationWaySettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final GAME_MODE_BLOCK_NOTIFICATION:Ljava/lang/String; = "game_mode_block_notification"

.field private static final KEY_ONEPLUS_INSTRUCITONS:Ljava/lang/String; = "oneplus_instrucitons"

.field private static final KEY_SHIELDING_NOTIFICATION:Ljava/lang/String; = "shielding_notification"

.field private static final KEY_SUSPENSION_NOTICE:Ljava/lang/String; = "suspension_notice"

.field private static final KEY_WEAK_TEXT_REMINDING:Ljava/lang/String; = "weak_text_reminding"

.field private static final SHIELDING_NOTIFICATION_VALUE:I = 0x1

.field private static final SUSPENSION_NOTICE_VALUE:I = 0x0

.field private static final WEAK_TEXT_REMINDING_VALUE:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOPGamingModeNotificationWayCategory:Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

.field private final mSettingsObserver:Lcom/oneplus/settings/OPGamingModeNotificationWaySettings$SettingsObserver;

.field private mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

.field private mSuspensionNotice:Lcom/android/settings/ui/RadioButtonPreference;

.field private mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings$SettingsObserver;-><init>(Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSettingsObserver:Lcom/oneplus/settings/OPGamingModeNotificationWaySettings$SettingsObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->disableOptionsInEsportsMode()V

    return-void
.end method

.method private disableOptionsInEsportsMode()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->isEsportsMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSuspensionNotice:Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private isEsportsMode()Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "esport_mode_enabled"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setGamingModeNotificationWayValue(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_block_notification"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mOPGamingModeNotificationWayCategory:Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->setAnimTypes(I)V

    return-void
.end method

.method private updateUI()V
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "game_mode_block_notification"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSuspensionNotice:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {v2, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne v0, v3, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSuspensionNotice:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f16009d

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->addPreferencesFromResource(I)V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mContext:Landroid/content/Context;

    const-string v0, "suspension_notice"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSuspensionNotice:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "weak_text_reminding"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "shielding_notification"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSuspensionNotice:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    const-string v0, "oneplus_instrucitons"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

    iput-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mOPGamingModeNotificationWayCategory:Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mOPGamingModeNotificationWayCategory:Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->releaseAnim()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSettingsObserver:Lcom/oneplus/settings/OPGamingModeNotificationWaySettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings$SettingsObserver;->register(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mOPGamingModeNotificationWayCategory:Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->stopAnim()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSuspensionNotice:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-direct {p0, v2}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->setGamingModeNotificationWayValue(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->setGamingModeNotificationWayValue(I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mWeakTextReminding:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mShieldingNotification:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-direct {p0, v1}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->setGamingModeNotificationWayValue(I)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeNotificationShow()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->updateUI()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->disableOptionsInEsportsMode()V

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mSettingsObserver:Lcom/oneplus/settings/OPGamingModeNotificationWaySettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings$SettingsObserver;->register(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPGamingModeNotificationWaySettings;->mOPGamingModeNotificationWayCategory:Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->startAnim()V

    :cond_0
    return-void
.end method
