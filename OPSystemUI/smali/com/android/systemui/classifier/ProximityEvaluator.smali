.class public Lcom/android/systemui/classifier/ProximityEvaluator;
.super Ljava/lang/Object;
.source "ProximityEvaluator.java"


# direct methods
.method public static evaluate(FI)F
    .locals 2

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3dcccccd    # 0.1f

    :goto_0
    cmpl-float p0, p0, p1

    const/4 p1, 0x0

    if-ltz p0, :cond_1

    float-to-double p0, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    add-double/2addr p0, v0

    double-to-float p1, p0

    :cond_1
    return p1
.end method
