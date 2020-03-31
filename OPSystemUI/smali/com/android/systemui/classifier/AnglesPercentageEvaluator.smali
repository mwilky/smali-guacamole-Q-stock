.class public Lcom/android/systemui/classifier/AnglesPercentageEvaluator;
.super Ljava/lang/Object;
.source "AnglesPercentageEvaluator.java"


# direct methods
.method public static evaluate(FI)F
    .locals 6

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    float-to-double v1, p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez p0, :cond_1

    if-nez p1, :cond_1

    move v0, v3

    :cond_1
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    cmpg-double p0, v1, v4

    if-gez p0, :cond_2

    if-nez p1, :cond_2

    add-float/2addr v0, v3

    :cond_2
    const-wide p0, 0x3fe6666666666666L    # 0.7

    cmpg-double p0, v1, p0

    if-gez p0, :cond_3

    add-float/2addr v0, v3

    :cond_3
    return v0
.end method
