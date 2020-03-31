.class public Lcom/android/systemui/classifier/EndPointLengthEvaluator;
.super Ljava/lang/Object;
.source "EndPointLengthEvaluator.java"


# direct methods
.method public static evaluate(F)F
    .locals 7

    float-to-double v0, p0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    cmpg-double p0, v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/4 v4, 0x0

    if-gez p0, :cond_0

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-float v4, v4

    :cond_0
    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpg-double p0, v0, v5

    if-gez p0, :cond_1

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-float v4, v4

    :cond_1
    const-wide v5, 0x3fc999999999999aL    # 0.2

    cmpg-double p0, v0, v5

    if-gez p0, :cond_2

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-float v4, v4

    :cond_2
    const-wide v5, 0x3fd3333333333333L    # 0.3

    cmpg-double p0, v0, v5

    if-gez p0, :cond_3

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-float v4, v4

    :cond_3
    const-wide v5, 0x3fd999999999999aL    # 0.4

    cmpg-double p0, v0, v5

    if-gez p0, :cond_4

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-float v4, v4

    :cond_4
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, v0, v5

    if-gez p0, :cond_5

    float-to-double v0, v4

    add-double/2addr v0, v2

    double-to-float v4, v0

    :cond_5
    return v4
.end method
