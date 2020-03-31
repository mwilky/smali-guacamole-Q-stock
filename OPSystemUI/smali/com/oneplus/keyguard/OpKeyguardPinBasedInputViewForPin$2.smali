.class Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$2;
.super Ljava/lang/Object;
.source "OpKeyguardPinBasedInputViewForPin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$2;->this$0:Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$2;->this$0:Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$2;->this$0:Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;

    iget-object p1, p1, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$2;->this$0:Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->access$200(Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;)V

    :cond_0
    return-void
.end method
