.class public Lcom/android/settings/nfc/AndroidBeamPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AndroidBeamPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field public static final KEY_ANDROID_BEAM_SETTINGS:Ljava/lang/String; = "android_beam_settings"


# instance fields
.field private mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    new-instance v1, Lcom/android/settings/nfc/AndroidBeamEnabler;

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/nfc/AndroidBeamEnabler;-><init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedPreference;)V

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.sofware.nfc.beam"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v2
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/nfc/AndroidBeamEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/nfc/AndroidBeamEnabler;->resume()V

    :cond_0
    return-void
.end method
