.class public Lcom/android/systemui/classifier/DirectionEvaluator;
.super Ljava/lang/Object;
.source "DirectionEvaluator.java"


# direct methods
.method public static evaluate(FFI)F
    .locals 5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    const/high16 v4, 0x40b00000    # 5.5f

    if-eqz p2, :cond_6

    if-eq p2, v1, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_6

    const/4 v1, 0x4

    if-eq p2, v1, :cond_3

    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    const/4 v1, 0x6

    if-eq p2, v1, :cond_1

    const/16 p0, 0x8

    if-eq p2, p0, :cond_3

    const/16 p0, 0x9

    if-eq p2, p0, :cond_6

    goto :goto_1

    :cond_1
    float-to-double v0, p0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_7

    float-to-double p0, p1

    cmpl-double p0, p0, v2

    if-lez p0, :cond_7

    return v4

    :cond_2
    float-to-double v0, p0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_7

    float-to-double p0, p1

    cmpl-double p0, p0, v2

    if-lez p0, :cond_7

    return v4

    :cond_3
    if-eqz v0, :cond_4

    float-to-double p0, p1

    cmpl-double p0, p0, v2

    if-ltz p0, :cond_7

    :cond_4
    return v4

    :cond_5
    if-eqz v0, :cond_7

    return v4

    :cond_6
    if-eqz v0, :cond_8

    float-to-double p0, p1

    cmpg-double p0, p0, v2

    if-gtz p0, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_2
    return v4
.end method
