.class Lcom/oneplus/android/server/display/oif;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/display/bvj;->zta([F[FZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/oneplus/android/server/display/bvj;

.field final synthetic val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

.field final synthetic val$storage:Z

.field final synthetic val$to:[F

.field final synthetic you:I


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/display/bvj;Lcom/android/server/display/color/DisplayTransformManager;I[FZ)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/oif;->this$0:Lcom/oneplus/android/server/display/bvj;

    iput-object p2, p0, Lcom/oneplus/android/server/display/oif;->val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

    iput p3, p0, Lcom/oneplus/android/server/display/oif;->you:I

    iput-object p4, p0, Lcom/oneplus/android/server/display/oif;->val$to:[F

    iput-boolean p5, p0, Lcom/oneplus/android/server/display/oif;->val$storage:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/oif;->mIsCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lcom/oneplus/android/server/display/oif;->mIsCancelled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/display/oif;->val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/android/server/display/oif;->you:I

    iget-object v1, p0, Lcom/oneplus/android/server/display/oif;->val$to:[F

    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    iget-boolean p1, p0, Lcom/oneplus/android/server/display/oif;->val$storage:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/display/oif;->val$to:[F

    invoke-static {p1}, Lcom/oneplus/android/server/display/bvj;->you([F)[F

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/oif;->this$0:Lcom/oneplus/android/server/display/bvj;

    invoke-static {p0}, Lcom/oneplus/android/server/display/bvj;->you(Lcom/oneplus/android/server/display/bvj;)Lcom/oneplus/android/server/display/ibl;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/igw;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method
