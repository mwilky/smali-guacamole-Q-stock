.class public Lcom/oneplus/settings/better/ViewPageTransformer3D;
.super Ljava/lang/Object;
.source "ViewPageTransformer3D.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# static fields
.field private static final MAX_ROTATION:F = 20.0f

.field private static final MAX_TRANSLATE:F = 20.0f

.field private static final MIN_SCALE:F = 0.75f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 6

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p2, v0

    const/high16 v1, -0x3e600000    # -20.0f

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x3f400000    # 0.75f

    if-gez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    if-gtz v0, :cond_1

    mul-float/2addr v1, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    add-float/2addr v5, p2

    mul-float/2addr v5, v4

    add-float/2addr v5, v3

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    mul-float/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    :cond_1
    cmpg-float v0, p2, v5

    if-gtz v0, :cond_2

    mul-float/2addr v1, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    sub-float/2addr v5, p2

    mul-float/2addr v5, v4

    add-float/2addr v5, v3

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    mul-float/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setRotationY(F)V

    :goto_0
    return-void
.end method
