.class public Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;
.super Ljava/lang/Object;
.source "OPSystemVibrateSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

.field private mSystemVibrateEnabler:Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    new-instance v0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;-><init>(Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mSystemVibrateEnabler:Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mSystemVibrateEnabler:Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;->setToggleCallback(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mSystemVibrateEnabler:Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;->resume(Landroid/content/Context;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mSystemVibrateEnabler:Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;->pause()V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
