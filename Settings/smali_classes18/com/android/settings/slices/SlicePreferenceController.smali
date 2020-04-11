.class public Lcom/android/settings/slices/SlicePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SlicePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/core/BasePreferenceController;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/events/OnStart;",
        "Lcom/android/settingslib/core/lifecycle/events/OnStop;",
        "Landroidx/lifecycle/Observer<",
        "Landroidx/slice/Slice;",
        ">;"
    }
.end annotation


# instance fields
.field mLiveData:Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field mSlicePreference:Lcom/android/settings/slices/SlicePreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/slices/SlicePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/slices/SlicePreference;

    iput-object v0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mSlicePreference:Lcom/android/settings/slices/SlicePreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public onChanged(Landroidx/slice/Slice;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mSlicePreference:Lcom/android/settings/slices/SlicePreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/slices/SlicePreference;->onSliceUpdated(Landroidx/slice/Slice;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SlicePreferenceController;->onChanged(Landroidx/slice/Slice;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public setSliceUri(Landroid/net/Uri;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/slices/SlicePreferenceController;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/slices/SlicePreferenceController;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/slice/widget/SliceLiveData;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mLiveData:Landroidx/lifecycle/LiveData;

    iget-object v0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method
