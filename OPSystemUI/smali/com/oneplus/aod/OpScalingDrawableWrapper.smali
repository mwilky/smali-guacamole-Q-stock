.class Lcom/oneplus/aod/OpScalingDrawableWrapper;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "OpScalingDrawableWrapper.java"


# instance fields
.field private mScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput p2, p0, Lcom/oneplus/aod/OpScalingDrawableWrapper;->mScaleFactor:F

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/oneplus/aod/OpScalingDrawableWrapper;->mScaleFactor:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/oneplus/aod/OpScalingDrawableWrapper;->mScaleFactor:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method
