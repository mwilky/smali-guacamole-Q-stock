.class public Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "NfcPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NfcSliceWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/SliceBackgroundWorker<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final NFC_FILTER:Landroid/content/IntentFilter;

.field private static final TAG:Ljava/lang/String; = "NfcSliceWorker"


# instance fields
.field private mUpdateObserver:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->NFC_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;-><init>(Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->mUpdateObserver:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->mUpdateObserver:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;

    return-void
.end method

.method protected onSlicePinned()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->mUpdateObserver:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;

    sget-object v2, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->NFC_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onSliceUnpinned()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->mUpdateObserver:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateSlice()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->notifySliceChange()V

    return-void
.end method
