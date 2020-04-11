.class public Lcom/android/settings/nfc/NfcPaymentPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "NfcPaymentPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreference$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/nfc/NfcPaymentPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method initialize(Lcom/android/settings/nfc/NfcPaymentPreference$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mListener:Lcom/android/settings/nfc/NfcPaymentPreference$Listener;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mListener:Lcom/android/settings/nfc/NfcPaymentPreference$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/settings/nfc/NfcPaymentPreference$Listener;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mListener:Lcom/android/settings/nfc/NfcPaymentPreference$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/settings/nfc/NfcPaymentPreference$Listener;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method
