.class Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper$2;
.super Ljava/lang/Object;
.source "FingerprintUiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;->access$000(Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;->access$100(Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;->access$100(Lcom/android/settings/biometrics/fingerprint/FingerprintUiHelper;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0801e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
