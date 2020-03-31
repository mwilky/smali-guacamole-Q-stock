.class Lcom/oneplus/phone/OpTrustDrawable$2;
.super Ljava/lang/Object;
.source "OpTrustDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/phone/OpTrustDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/phone/OpTrustDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/phone/OpTrustDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/phone/OpTrustDrawable$2;->this$0:Lcom/oneplus/phone/OpTrustDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/phone/OpTrustDrawable$2;->this$0:Lcom/oneplus/phone/OpTrustDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oneplus/phone/OpTrustDrawable;->access$202(Lcom/oneplus/phone/OpTrustDrawable;F)F

    iget-object p0, p0, Lcom/oneplus/phone/OpTrustDrawable$2;->this$0:Lcom/oneplus/phone/OpTrustDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
