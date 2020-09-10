.class Lcom/oneplus/settings/utils/OPUtils$1;
.super Ljava/lang/Object;
.source "OPUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAllSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oneplus_auto_face_unlock_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "auto_face_unlock"

    invoke-static {v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_acc_sensor_three_finger"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "op_three_key_screenshots_enabled"

    invoke-static {v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGestureAndButton()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAssistantAPP()V

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_camera_notch_ignore"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "notch_display"

    invoke-static {v3, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickLaunchToggle()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickLaunch()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForFodAnimStyle()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAutoBrightness()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForBrightness()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAutoNightMode()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForNightMode()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForEffectStrength()V

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "read_mode_apps"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForReadingModeApps(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForReadingModeNotification()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForReadingMode()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForScreenColorMode()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForScreenCustomColorMode()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForThemes()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAccentColor()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAssistApp()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForDefaultHomeApp()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeSpeakerAnswer()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeNotificationShow()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameMode3drPartyCalls()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeAdEnable()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeBrightness()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeNetWorkBoost()V

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "game_mode_apps"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeApps(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeRemovedApps()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForSmartWifiSwitch()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForDataAutoSwitch()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickReply()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickReplyIMStatus()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickReplyKeyboardStatus()V

    invoke-static {}, Lcom/oneplus/settings/better/OPHapticFeedback;->sendDefaultAppTracker()V

    invoke-static {}, Lcom/oneplus/settings/system/OPRamBoostSettings;->sendDefaultAppTracker()V

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oneplus_face_unlock_powerkey_recognize_enable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "pop_up_face_unlock"

    invoke-static {v3, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForHorizonLightAnimStyle()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForClockStyle()V

    return-void
.end method
