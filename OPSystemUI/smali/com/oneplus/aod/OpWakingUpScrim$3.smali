.class Lcom/oneplus/aod/OpWakingUpScrim$3;
.super Ljava/lang/Object;
.source "OpWakingUpScrim.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpWakingUpScrim;->getDisappearAnimationWithDelay()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpWakingUpScrim;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpWakingUpScrim;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpWakingUpScrim$3;->this$0:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim$3;->this$0:Lcom/oneplus/aod/OpWakingUpScrim;

    const v1, 0x40f66666    # 7.7f

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/oneplus/aod/OpWakingUpScrim;->access$002(Lcom/oneplus/aod/OpWakingUpScrim;F)F

    iget-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim$3;->this$0:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-static {v0, p1}, Lcom/oneplus/aod/OpWakingUpScrim;->access$102(Lcom/oneplus/aod/OpWakingUpScrim;F)F

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisappearAnimationWithDelay mRadius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpWakingUpScrim"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim$3;->this$0:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-static {v0, p1}, Lcom/oneplus/aod/OpWakingUpScrim;->access$200(Lcom/oneplus/aod/OpWakingUpScrim;F)V

    iget-object p0, p0, Lcom/oneplus/aod/OpWakingUpScrim$3;->this$0:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
