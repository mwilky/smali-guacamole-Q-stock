.class public final synthetic Lcom/oneplus/android/server/display/zta;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic HC:Lcom/android/server/display/color/DisplayTransformManager;

.field private final synthetic SZ:I

.field private final synthetic TZ:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/color/DisplayTransformManager;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/display/zta;->HC:Lcom/android/server/display/color/DisplayTransformManager;

    iput p2, p0, Lcom/oneplus/android/server/display/zta;->SZ:I

    iput-boolean p3, p0, Lcom/oneplus/android/server/display/zta;->TZ:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/display/zta;->HC:Lcom/android/server/display/color/DisplayTransformManager;

    iget v1, p0, Lcom/oneplus/android/server/display/zta;->SZ:I

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/zta;->TZ:Z

    invoke-static {v0, v1, p0, p1}, Lcom/oneplus/android/server/display/bvj;->zta(Lcom/android/server/display/color/DisplayTransformManager;IZLandroid/animation/ValueAnimator;)V

    return-void
.end method
