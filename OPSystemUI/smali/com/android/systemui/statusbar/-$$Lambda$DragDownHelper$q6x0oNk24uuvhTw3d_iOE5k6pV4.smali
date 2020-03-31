.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$DragDownHelper$q6x0oNk24uuvhTw3d_iOE5k6pV4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/DragDownHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/DragDownHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$DragDownHelper$q6x0oNk24uuvhTw3d_iOE5k6pV4;->f$0:Lcom/android/systemui/statusbar/DragDownHelper;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$DragDownHelper$q6x0oNk24uuvhTw3d_iOE5k6pV4;->f$0:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->lambda$cancelExpansion$0$DragDownHelper(Landroid/animation/ValueAnimator;)V

    return-void
.end method
