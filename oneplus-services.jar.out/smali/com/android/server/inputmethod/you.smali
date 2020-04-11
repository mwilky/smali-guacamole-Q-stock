.class Lcom/android/server/inputmethod/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/you/you;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/OpVerificationCodeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/OpVerificationCodeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/inputmethod/you;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bvj()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final irq()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/you;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$600(Lcom/android/server/inputmethod/OpVerificationCodeController;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public obl()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/inputmethod/you;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$400(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/inputmethod/you;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$400(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/inputmethod/you;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$400(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget p0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$000()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mCurAttribute inputType = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Contains Digit Flag ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpVerificationCodeController"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public sis()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/you;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$400(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/you;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$400(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/inputmethod/you;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$500(Lcom/android/server/inputmethod/OpVerificationCodeController;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public zta(Lcom/android/server/you/you$zta;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/you;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$702(Lcom/android/server/inputmethod/OpVerificationCodeController;Lcom/android/server/you/you$zta;)Lcom/android/server/you/you$zta;

    return-void
.end method

.method public zta(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/you;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$400(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/you;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$400(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/inputmethod/you;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$800(Lcom/android/server/inputmethod/OpVerificationCodeController;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
