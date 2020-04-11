.class public Lcom/android/settings/display/NightDisplayPreference;
.super Landroidx/preference/SwitchPreference;
.source "NightDisplayPreference.java"

# interfaces
.implements Landroid/hardware/display/NightDisplayListener$Callback;


# instance fields
.field private mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

.field private mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    new-instance v0, Landroid/hardware/display/NightDisplayListener;

    invoke-direct {v0, p1}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    new-instance v0, Lcom/android/settings/display/NightDisplayTimeFormatter;

    invoke-direct {v0, p1}, Lcom/android/settings/display/NightDisplayTimeFormatter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

    return-void
.end method

.method private updateSummary()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/NightDisplayPreference;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getAutoModeTimeSummary(Landroid/content/Context;Landroid/hardware/display/ColorDisplayManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplayPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    return-void
.end method

.method public onAttached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/SwitchPreference;->onAttached()V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    return-void
.end method

.method public onDetached()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/SwitchPreference;->onDetached()V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method
