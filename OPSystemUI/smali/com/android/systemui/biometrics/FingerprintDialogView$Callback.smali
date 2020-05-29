.class Lcom/android/systemui/biometrics/FingerprintDialogView$Callback;
.super Ljava/lang/Object;
.source "FingerprintDialogView.java"

# interfaces
.implements Lcom/android/systemui/biometrics/DialogViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/FingerprintDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field private mDialogViewCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

.field final synthetic this$0:Lcom/android/systemui/biometrics/FingerprintDialogView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/FingerprintDialogView;Lcom/android/systemui/biometrics/DialogViewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/FingerprintDialogView$Callback;->this$0:Lcom/android/systemui/biometrics/FingerprintDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/FingerprintDialogView$Callback;->mDialogViewCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    return-void
.end method


# virtual methods
.method public onErrorShown()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintDialogView$Callback;->this$0:Lcom/android/systemui/biometrics/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FingerprintDialogView;->access$000(Lcom/android/systemui/biometrics/FingerprintDialogView;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/FingerprintDialogView$Callback;->mDialogViewCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onErrorShown()V

    return-void
.end method

.method public onNegativePressed()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintDialogView$Callback;->this$0:Lcom/android/systemui/biometrics/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FingerprintDialogView;->access$000(Lcom/android/systemui/biometrics/FingerprintDialogView;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/FingerprintDialogView$Callback;->mDialogViewCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onNegativePressed()V

    return-void
.end method

.method public onPositivePressed()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/FingerprintDialogView$Callback;->mDialogViewCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onPositivePressed()V

    return-void
.end method

.method public onTryAgainPressed()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/FingerprintDialogView$Callback;->mDialogViewCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onTryAgainPressed()V

    return-void
.end method

.method public onUserCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintDialogView$Callback;->this$0:Lcom/android/systemui/biometrics/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FingerprintDialogView;->access$000(Lcom/android/systemui/biometrics/FingerprintDialogView;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/FingerprintDialogView$Callback;->mDialogViewCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onUserCanceled()V

    return-void
.end method
