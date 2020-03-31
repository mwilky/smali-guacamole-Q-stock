.class public Lcom/android/systemui/classifier/AnglesVarianceEvaluator;
.super Ljava/lang/Object;
.source "AnglesVarianceEvaluator.java"


# direct methods
.method public static evaluate(FI)F
    .locals 4

    float-to-double p0, p0

    const-wide v0, 0x3fc999999999999aL    # 0.2

    cmpl-double v0, p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide v2, 0x3fd999999999999aL    # 0.4

    cmpl-double v2, p0, v2

    if-lez v2, :cond_1

    add-float/2addr v0, v1

    :cond_1
    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpl-double v2, p0, v2

    if-lez v2, :cond_2

    add-float/2addr v0, v1

    :cond_2
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double p0, p0, v2

    if-lez p0, :cond_3

    add-float/2addr v0, v1

    :cond_3
    return v0
.end method
