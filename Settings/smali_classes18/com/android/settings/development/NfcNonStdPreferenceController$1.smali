.class Lcom/android/settings/development/NfcNonStdPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcNonStdPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/NfcNonStdPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/NfcNonStdPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/NfcNonStdPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/NfcNonStdPreferenceController$1;->this$0:Lcom/android/settings/development/NfcNonStdPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/development/NfcNonStdPreferenceController$1;->this$0:Lcom/android/settings/development/NfcNonStdPreferenceController;

    invoke-static {v2}, Lcom/android/settings/development/NfcNonStdPreferenceController;->access$000(Lcom/android/settings/development/NfcNonStdPreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    iget-object v3, p0, Lcom/android/settings/development/NfcNonStdPreferenceController$1;->this$0:Lcom/android/settings/development/NfcNonStdPreferenceController;

    invoke-static {v3}, Lcom/android/settings/development/NfcNonStdPreferenceController;->access$000(Lcom/android/settings/development/NfcNonStdPreferenceController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/development/NfcNonStdPreferenceController$1;->this$0:Lcom/android/settings/development/NfcNonStdPreferenceController;

    invoke-static {v4}, Lcom/android/settings/development/NfcNonStdPreferenceController;->access$100(Lcom/android/settings/development/NfcNonStdPreferenceController;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
