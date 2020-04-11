.class public Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PreventRingingGesturePreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field static final KEY_MUTE:Ljava/lang/String; = "prevent_ringing_option_mute"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_VIBRATE:Ljava/lang/String; = "prevent_ringing_option_vibrate"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final KEY:Ljava/lang/String;

.field private final KEY_VIDEO_PAUSED:Ljava/lang/String;

.field private final PREF_KEY_VIDEO:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field mMutePref:Lcom/android/settings/widget/RadioButtonPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPreferenceCategory:Landroidx/preference/PreferenceCategory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

.field mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mVideoPaused:Z

.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "key_video_paused"

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->KEY_VIDEO_PAUSED:Ljava/lang/String;

    const-string v0, "gesture_prevent_ringing_video"

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->PREF_KEY_VIDEO:Ljava/lang/String;

    const-string v0, "gesture_prevent_ringing_category"

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->KEY:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private keyToSetting(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x385badaf

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x3b606a19

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "prevent_ringing_option_vibrate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "prevent_ringing_option_mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    return v2

    :cond_3
    return v3

    :cond_4
    const/4 v0, 0x2

    return v0
.end method

.method private makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 2

    new-instance v0, Lcom/android/settings/widget/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(I)V

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const v0, 0x7f121153

    const-string v1, "prevent_ringing_option_vibrate"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;

    const v0, 0x7f12114f

    const-string v1, "prevent_ringing_option_mute"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settings/widget/RadioButtonPreference;

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;-><init>(Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;Landroidx/preference/Preference;)V

    iput-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->getVideoPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/VideoPreference;

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "gesture_prevent_ringing_category"

    return-object v0
.end method

.method public getVideoPrefKey()Ljava/lang/String;
    .locals 1

    const-string v0, "gesture_prevent_ringing_video"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "key_video_paused"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPaused:Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/widget/VideoPreference;->isVideoPaused()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPaused:Z

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/VideoPreference;->onViewInvisible()V

    :cond_1
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->keyToSetting(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_hush_gesture"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPaused:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/VideoPreference;->onViewVisible(Z)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPaused:Z

    const-string v1, "key_video_paused"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "volume_hush_gesture"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/settings/widget/RadioButtonPreference;->isChecked()Z

    move-result v5

    if-eq v5, v3, :cond_2

    iget-object v5, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v5, v3}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    :cond_2
    iget-object v5, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/settings/widget/RadioButtonPreference;->isChecked()Z

    move-result v5

    if-eq v5, v4, :cond_3

    iget-object v5, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/RadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setEnabled(Z)V

    :goto_2
    return-void
.end method
