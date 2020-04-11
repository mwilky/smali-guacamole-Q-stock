.class public Lcom/android/settings/nfc/SecureNfcEnabler;
.super Lcom/android/settings/nfc/BaseNfcEnabler;
.source "SecureNfcEnabler.java"


# instance fields
.field private final mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/BaseNfcEnabler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method


# virtual methods
.method protected handleNfcStateChanged(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    const v2, 0x7f120ae6

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    const v2, 0x7f120acf

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    nop

    :goto_0
    return-void
.end method
