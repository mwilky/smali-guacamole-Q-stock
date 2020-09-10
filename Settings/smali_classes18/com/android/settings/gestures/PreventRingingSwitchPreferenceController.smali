.class public Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PreventRingingSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "gesture_prevent_ringing_switch"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSettingObserver:Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController$SettingObserver;

.field mSwitch:Lcom/android/settings/widget/SwitchBar;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController$SettingObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController$SettingObserver;-><init>(Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;Landroidx/preference/Preference;)V

    iput-object v1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController$SettingObserver;

    new-instance v1, Lcom/android/settings/gestures/-$$Lambda$PreventRingingSwitchPreferenceController$tkwvFAD7BhbhXsBPnVpa8l9DK84;

    invoke-direct {v1, p0}, Lcom/android/settings/gestures/-$$Lambda$PreventRingingSwitchPreferenceController$tkwvFAD7BhbhXsBPnVpa8l9DK84;-><init>(Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const v1, 0x7f0a06a4

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/SwitchBar;

    iput-object v1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "gesture_prevent_ringing_switch"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$displayPreference$0$PreventRingingSwitchPreferenceController(Landroidx/preference/Preference;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_hush_gesture"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-static {v5, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "volume_hush_gesture"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    nop

    iget-object v3, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v3, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "volume_hush_gesture"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->setChecked(Z)V

    return-void
.end method
