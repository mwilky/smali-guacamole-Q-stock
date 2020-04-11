.class public Lcom/oneplus/settings/notification/OPScreenShotSoundPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "OPScreenShotSoundPreferenceController.java"


# static fields
.field private static final KEY_SCREENSHOT_SOUNDS:Ljava/lang/String; = "screenshot_sounds"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v6, Lcom/android/settings/notification/SettingPref;

    const/4 v0, 0x0

    new-array v5, v0, [I

    const/4 v1, 0x2

    const-string v2, "screenshot_sounds"

    const-string v3, "oem_screenshot_sound_enable"

    const/4 v4, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v6, p0, Lcom/oneplus/settings/notification/OPScreenShotSoundPreferenceController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
