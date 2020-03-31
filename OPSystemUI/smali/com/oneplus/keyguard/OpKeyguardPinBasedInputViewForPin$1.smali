.class Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$1;
.super Ljava/lang/Object;
.source "OpKeyguardPinBasedInputViewForPin.java"

# interfaces
.implements Lcom/oneplus/keyguard/OpPasswordTextViewForPin$UserActivityListener;


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

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckPasswordAndUnlock()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;

    iget-object v0, v0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->access$100(Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;)V

    :cond_0
    return-void
.end method

.method public onUserActivity()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->access$000(Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;)V

    return-void
.end method
