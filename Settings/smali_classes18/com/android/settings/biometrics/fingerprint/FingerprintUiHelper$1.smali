.class Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper$1;
.super Landroid/os/Handler;
.source "FingerprintUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;->startAuthenticate()V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;->cancelAuthenticate()V

    :cond_1
    return-void
.end method
