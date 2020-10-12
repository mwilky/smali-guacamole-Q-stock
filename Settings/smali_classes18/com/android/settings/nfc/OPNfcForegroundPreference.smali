.class public Lcom/android/settings/nfc/OPNfcForegroundPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "OPNfcForegroundPreference.java"

# interfaces
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OPNfcForegroundPreference"


# instance fields
.field private mAdapter:Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mList:[Ljava/lang/String;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120b2b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120b23

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120b22

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;-><init>(Lcom/android/settings/nfc/OPNfcForegroundPreference;)V

    iput-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mAdapter:Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/OPNfcForegroundPreference;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/OPNfcForegroundPreference;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/OPNfcForegroundPreference;)Lcom/android/settings/nfc/PaymentBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/OPNfcForegroundPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->transferSummaryToValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/OPNfcForegroundPreference;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/nfc/OPNfcForegroundPreference;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getUISummary(Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private transferSummaryToValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    return-object v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getEntry()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    return-object v1
.end method

.method public onPaymentAppsChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->refresh()V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mAdapter:Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method refresh()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh foregroundMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPNfcForegroundPreference"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->persistString(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string v1, "0"

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->persistString(Ljava/lang/String;)Z

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->getUISummary(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPaymentBackend(Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/PaymentBackend;->registerCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    return-void
.end method
