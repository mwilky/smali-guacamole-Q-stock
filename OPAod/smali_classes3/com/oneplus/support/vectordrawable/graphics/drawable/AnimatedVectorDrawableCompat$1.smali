.class Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;


# direct methods
.method constructor <init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->invalidateSelf()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0, p2, p3, p4}, Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0, p2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
