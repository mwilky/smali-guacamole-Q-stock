.class Lcom/android/systemui/statusbar/phone/NavigationHandle$2;
.super Ljava/lang/Object;
.source "NavigationHandle.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$300(Lcom/android/systemui/statusbar/phone/NavigationHandle;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$100(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$200(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
