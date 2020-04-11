.class public Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;
.super Ljava/lang/Object;
.source "OPQuickTurnOnAssistantAppSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQuickTurnOnAssistantAppSwitchEnabler:Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;

.field private mSwitch:Lcom/android/settings/widget/SwitchWidgetController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    new-instance v0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;-><init>(Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;->mQuickTurnOnAssistantAppSwitchEnabler:Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;->mQuickTurnOnAssistantAppSwitchEnabler:Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;->setToggleCallback(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;->mQuickTurnOnAssistantAppSwitchEnabler:Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;->resume(Landroid/content/Context;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;->mQuickTurnOnAssistantAppSwitchEnabler:Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;

    invoke-virtual {v0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;->pause()V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
