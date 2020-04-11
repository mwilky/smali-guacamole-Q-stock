.class public Lcom/android/settings/nfc/SecureNfcPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SecureNfcPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mSecureNfcEnabler:Lcom/android/settings/nfc/SecureNfcEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/SecureNfcPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mSecureNfcEnabler:Lcom/android/settings/nfc/SecureNfcEnabler;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/SecureNfcPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/nfc/SecureNfcEnabler;

    iget-object v2, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/nfc/SecureNfcEnabler;-><init>(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V

    iput-object v1, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mSecureNfcEnabler:Lcom/android/settings/nfc/SecureNfcEnabler;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isSecureNfcSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public hasAsyncUpdate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mSecureNfcEnabler:Lcom/android/settings/nfc/SecureNfcEnabler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/nfc/SecureNfcEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mSecureNfcEnabler:Lcom/android/settings/nfc/SecureNfcEnabler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/nfc/SecureNfcEnabler;->resume()V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcAdapter;->enableSecureNfc(Z)Z

    move-result v0

    return v0
.end method
