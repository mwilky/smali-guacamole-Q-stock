.class Lcom/oneplus/android/server/display/wtn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/display/dma;->bud(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eaa:[[I

.field final synthetic faa:[[I

.field final synthetic this$0:Lcom/oneplus/android/server/display/dma;

.field final synthetic zta:[[I


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/display/dma;[[I[[I[[I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/wtn;->this$0:Lcom/oneplus/android/server/display/dma;

    iput-object p2, p0, Lcom/oneplus/android/server/display/wtn;->eaa:[[I

    iput-object p3, p0, Lcom/oneplus/android/server/display/wtn;->faa:[[I

    iput-object p4, p0, Lcom/oneplus/android/server/display/wtn;->zta:[[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/android/server/display/wtn;->this$0:Lcom/oneplus/android/server/display/dma;

    invoke-static {v1, v0}, Lcom/oneplus/android/server/display/dma;->you(Lcom/oneplus/android/server/display/dma;I)I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/oneplus/android/server/display/wtn;->eaa:[[I

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/oneplus/android/server/display/wtn;->faa:[[I

    aget-object v5, v5, v1

    aget v5, v5, v3

    int-to-float v5, v5

    iget-object v6, p0, Lcom/oneplus/android/server/display/wtn;->zta:[[I

    aget-object v6, v6, v1

    aget v6, v6, v3

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    float-to-int v5, v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/android/server/display/wtn;->this$0:Lcom/oneplus/android/server/display/dma;

    iget-object v1, p0, Lcom/oneplus/android/server/display/wtn;->eaa:[[I

    invoke-static {p1}, Lcom/oneplus/android/server/display/dma;->zta(Lcom/oneplus/android/server/display/dma;)[[I

    move-result-object v4

    invoke-static {p1, v1, v4}, Lcom/oneplus/android/server/display/dma;->zta(Lcom/oneplus/android/server/display/dma;[[I[[I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/display/wtn;->this$0:Lcom/oneplus/android/server/display/dma;

    invoke-static {p1}, Lcom/oneplus/android/server/display/dma;->sis(Lcom/oneplus/android/server/display/dma;)Lcom/oneplus/android/server/display/bio;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/android/server/display/wtn;->eaa:[[I

    iget-object v4, p0, Lcom/oneplus/android/server/display/wtn;->this$0:Lcom/oneplus/android/server/display/dma;

    invoke-static {v4}, Lcom/oneplus/android/server/display/dma;->you(Lcom/oneplus/android/server/display/dma;)[I

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/oneplus/android/server/display/bio;->zta([[I[I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/wtn;->this$0:Lcom/oneplus/android/server/display/dma;

    invoke-static {p1}, Lcom/oneplus/android/server/display/dma;->tsu(Lcom/oneplus/android/server/display/dma;)Lcom/oneplus/android/server/display/ibl;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/android/server/display/wtn;->this$0:Lcom/oneplus/android/server/display/dma;

    invoke-static {v1}, Lcom/oneplus/android/server/display/dma;->sis(Lcom/oneplus/android/server/display/dma;)Lcom/oneplus/android/server/display/bio;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/android/server/display/ibl;->zta(Lcom/oneplus/android/server/display/bio;)V

    move p1, v0

    :goto_2
    if-ge p1, v3, :cond_3

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_2

    iget-object v4, p0, Lcom/oneplus/android/server/display/wtn;->this$0:Lcom/oneplus/android/server/display/dma;

    invoke-static {v4}, Lcom/oneplus/android/server/display/dma;->zta(Lcom/oneplus/android/server/display/dma;)[[I

    move-result-object v4

    aget-object v4, v4, p1

    iget-object v5, p0, Lcom/oneplus/android/server/display/wtn;->eaa:[[I

    aget-object v5, v5, p1

    aget v5, v5, v1

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
