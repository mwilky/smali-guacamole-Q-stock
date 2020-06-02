.class Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;
.super Ljava/lang/Object;
.source "OPFingerPrintRecognitionContinueLottieView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field curretProgress:F

.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

.field final synthetic val$lottieView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;Lcom/oneplus/settings/opfinger/OPLottieAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->val$lottieView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->curretProgress:F

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->val$lottieView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->getSplitSteps()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    iget v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->curretProgress:F

    add-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->val$lottieView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->pauseAnimation()V

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->curretProgress:F

    :cond_0
    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->curretProgress:F

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->val$lottieView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setFillCompleted(Z)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPFingerPrintRecognitionContinueLottieView splitProgress:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " curretProgress:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->curretProgress:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MainActivity"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
