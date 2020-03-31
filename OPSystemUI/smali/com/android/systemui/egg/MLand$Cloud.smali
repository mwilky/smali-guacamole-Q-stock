.class Lcom/android/systemui/egg/MLand$Cloud;
.super Lcom/android/systemui/egg/MLand$Scenery;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cloud"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Cloud;->this$0:Lcom/android/systemui/egg/MLand;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/egg/MLand$Scenery;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result p1

    const p2, 0x3c23d70a    # 0.01f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    sget p1, Lcom/android/systemui/R$drawable;->cloud_off:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/R$drawable;->cloud:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0x40

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object p1

    iget p1, p1, Lcom/android/systemui/egg/MLand$Params;->CLOUD_SIZE_MIN:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object p2

    iget p2, p2, Lcom/android/systemui/egg/MLand$Params;->CLOUD_SIZE_MAX:I

    invoke-static {p1, p2}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/egg/MLand$Scenery;->h:I

    iput p1, p0, Lcom/android/systemui/egg/MLand$Scenery;->w:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/egg/MLand$Scenery;->z:F

    const p1, 0x3e19999a    # 0.15f

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-static {p1, p2}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/egg/MLand$Scenery;->v:F

    return-void
.end method
