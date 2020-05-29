.class Lcom/oneplus/aod/OpFpAodIndicationText$2;
.super Ljava/lang/Object;
.source "OpFpAodIndicationText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpFpAodIndicationText;->animateErrorText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpFpAodIndicationText;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpFpAodIndicationText;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText$2;->this$0:Lcom/oneplus/aod/OpFpAodIndicationText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText$2;->this$0:Lcom/oneplus/aod/OpFpAodIndicationText;

    invoke-static {v0}, Lcom/oneplus/aod/OpFpAodIndicationText;->access$000(Lcom/oneplus/aod/OpFpAodIndicationText;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$anim;->oneplus_control_text_error_message_anim:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object p0, p0, Lcom/oneplus/aod/OpFpAodIndicationText$2;->this$0:Lcom/oneplus/aod/OpFpAodIndicationText;

    invoke-static {p0}, Lcom/oneplus/aod/OpFpAodIndicationText;->access$100(Lcom/oneplus/aod/OpFpAodIndicationText;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
