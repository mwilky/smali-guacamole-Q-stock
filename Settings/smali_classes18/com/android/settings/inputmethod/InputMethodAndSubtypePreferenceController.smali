.class public Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "InputMethodAndSubtypePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

.field private mTargetImi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mTargetImi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->init(Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/String;Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mTargetImi:Ljava/lang/String;

    new-instance v0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-direct {v0, v1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->refresh(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->save(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    return-void
.end method
