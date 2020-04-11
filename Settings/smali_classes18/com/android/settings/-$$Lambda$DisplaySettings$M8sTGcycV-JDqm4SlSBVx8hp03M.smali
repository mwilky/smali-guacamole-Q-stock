.class public final synthetic Lcom/android/settings/-$$Lambda$DisplaySettings$M8sTGcycV-JDqm4SlSBVx8hp03M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/-$$Lambda$DisplaySettings$M8sTGcycV-JDqm4SlSBVx8hp03M;->f$0:Lcom/android/settings/DisplaySettings;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/-$$Lambda$DisplaySettings$M8sTGcycV-JDqm4SlSBVx8hp03M;->f$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/DisplaySettings;->lambda$updateSlider$1$DisplaySettings(Landroid/animation/ValueAnimator;)V

    return-void
.end method
