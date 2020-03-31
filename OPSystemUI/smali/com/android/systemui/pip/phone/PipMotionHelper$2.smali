.class Lcom/android/systemui/pip/phone/PipMotionHelper$2;
.super Landroid/animation/ValueAnimator;
.source "PipMotionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMotionHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper$2;->this$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimationHandler()Landroid/animation/AnimationHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper$2;->this$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->access$000(Lcom/android/systemui/pip/phone/PipMotionHelper;)Landroid/animation/AnimationHandler;

    move-result-object p0

    return-object p0
.end method
