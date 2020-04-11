.class Lcom/android/server/you/kth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/you/wtn;->you(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic RM:Landroid/view/View;

.field final synthetic this$0:Lcom/android/server/you/wtn;


# direct methods
.method constructor <init>(Lcom/android/server/you/wtn;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    iput-object p2, p0, Lcom/android/server/you/kth;->RM:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/you/kth;->RM:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    iget-object v1, p0, Lcom/android/server/you/kth;->RM:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/you/wtn;->zta(Lcom/android/server/you/wtn;I)I

    invoke-static {}, Lcom/android/server/you/wtn;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpVCWindow onPreDraw. ContentH = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {v1}, Lcom/android/server/you/wtn;->you(Lcom/android/server/you/wtn;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpVerificationCodeWindow"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {v0}, Lcom/android/server/you/wtn;->you(Lcom/android/server/you/wtn;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {v0}, Lcom/android/server/you/wtn;->tsu(Lcom/android/server/you/wtn;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {v2}, Lcom/android/server/you/wtn;->rtg(Lcom/android/server/you/wtn;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/you/wtn;->zta(Lcom/android/server/you/wtn;Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/you/wtn;->zta(Lcom/android/server/you/wtn;I)I

    :cond_1
    iget-object p0, p0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p0}, Lcom/android/server/you/wtn;->ssp(Lcom/android/server/you/wtn;)V

    const/4 p0, 0x1

    return p0
.end method
