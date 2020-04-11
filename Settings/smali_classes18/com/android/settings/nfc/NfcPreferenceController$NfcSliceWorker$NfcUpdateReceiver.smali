.class public Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NfcPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcUpdateReceiver"
.end annotation


# instance fields
.field private final NO_EXTRA:I

.field private final mSliceBackgroundWorker:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;

.field final synthetic this$0:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;


# direct methods
.method public constructor <init>(Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;->this$0:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;->NO_EXTRA:I

    iput-object p2, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;->mSliceBackgroundWorker:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "NfcSliceWorker"

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Nfc broadcast received, updating Slice."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker$NfcUpdateReceiver;->mSliceBackgroundWorker:Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;->updateSlice()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "Transitional update, dropping broadcast"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
