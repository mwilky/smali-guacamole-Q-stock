.class Lcom/oneplus/android/server/display/gck;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/display/dma;->bud(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/oneplus/android/server/display/dma;

.field final synthetic zta:[[I


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/display/dma;[[I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/gck;->this$0:Lcom/oneplus/android/server/display/dma;

    iput-object p2, p0, Lcom/oneplus/android/server/display/gck;->zta:[[I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/gck;->mIsCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lcom/oneplus/android/server/display/gck;->mIsCancelled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/display/gck;->this$0:Lcom/oneplus/android/server/display/dma;

    invoke-static {p1}, Lcom/oneplus/android/server/display/dma;->sis(Lcom/oneplus/android/server/display/dma;)Lcom/oneplus/android/server/display/bio;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/android/server/display/gck;->zta:[[I

    iget-object v1, p0, Lcom/oneplus/android/server/display/gck;->this$0:Lcom/oneplus/android/server/display/dma;

    invoke-static {v1}, Lcom/oneplus/android/server/display/dma;->you(Lcom/oneplus/android/server/display/dma;)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/android/server/display/bio;->zta([[I[I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/gck;->this$0:Lcom/oneplus/android/server/display/dma;

    invoke-static {p1}, Lcom/oneplus/android/server/display/dma;->tsu(Lcom/oneplus/android/server/display/dma;)Lcom/oneplus/android/server/display/ibl;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/android/server/display/gck;->this$0:Lcom/oneplus/android/server/display/dma;

    invoke-static {v0}, Lcom/oneplus/android/server/display/dma;->sis(Lcom/oneplus/android/server/display/dma;)Lcom/oneplus/android/server/display/bio;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/ibl;->zta(Lcom/oneplus/android/server/display/bio;)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/gck;->this$0:Lcom/oneplus/android/server/display/dma;

    invoke-static {p0}, Lcom/oneplus/android/server/display/dma;->tsu(Lcom/oneplus/android/server/display/dma;)Lcom/oneplus/android/server/display/ibl;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/igw;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method
